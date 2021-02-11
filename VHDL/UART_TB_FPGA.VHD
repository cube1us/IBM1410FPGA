----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com as uart_tb.vhd
----------------------------------------------------------------------

-- This version does three things:
-- Initially, it sends some characters '2'
-- Then, when it receives a character, it sends it back

-- Yes, the code results in a latch for signal receivedSent,
--  because I was too lazy to set up a 2nd FSM to handle whether 
-- a received byte had been sent or not. ;)

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity uart_tb_fpga is
   PORT(
      CLK: in STD_LOGIC;
      SW:  in STD_LOGIC_VECTOR(15 downto 0);
      LED: out STD_LOGIC_VECTOR(15 downto 0);
      btnC, btnL, btnR, btnU, btnD, btnCpuReset: in STD_LOGIC;
      RsTx: out STD_LOGIC;  -- From FPGA to USB/Serial
      RsRx: in STD_LOGIC    -- To FPGA from USB/Serial
);      
end uart_tb_fpga;
 
architecture behave of uart_tb_fpga is
 
  component uart_tx is
    generic (
      g_CLKS_PER_BIT : integer := 115   -- Needs to be set correctly
      );
    port (
      i_clk       : in  std_logic;
      i_tx_dv     : in  std_logic;
      i_tx_byte   : in  std_logic_vector(7 downto 0);
      o_tx_active : out std_logic;
      o_tx_serial : out std_logic;
      o_tx_done   : out std_logic
      );
  end component uart_tx;
 
  component uart_rx is
    generic (
      g_CLKS_PER_BIT : integer := 115   -- Needs to be set correctly
      );
    port (
      i_clk       : in  std_logic;
      i_rx_serial : in  std_logic;
      o_rx_dv     : out std_logic;
      o_rx_byte   : out std_logic_vector(7 downto 0)
      );
  end component uart_rx;
 
   
  -- Test Bench uses a 10 MHz Clock
  -- Want to interface to 115200 baud UART
  -- 10000000 / 115200 = 87 Clocks Per Bit.
  
  -- This version uses a 100 Mhz clock - 838 clocks / bit
  
  constant c_CLKS_PER_BIT : integer := 100000000 / 115200;
 
  -- constant c_BIT_PERIOD : time := 8680 ns;
  
  type state_type is (idle, start, waiting);
  
   
  signal r_CLOCK     : std_logic                    := '0';
  signal r_TX_DV     : std_logic                    := '0';
  signal r_TX_BYTE   : std_logic_vector(7 downto 0) := (others => '0');
  signal w_TX_SERIAL : std_logic;
  signal w_TX_DONE   : std_logic;
  signal w_RX_DV     : std_logic;
  signal w_RX_BYTE   : std_logic_vector(7 downto 0);
  signal r_RX_SERIAL : std_logic := '1';
  signal w_TX_Active:  std_logic := '0';
  
  signal sendCount: integer := 10;
  signal sendCounter: integer := 0;
  signal sendCounted: std_logic := '0';
  
  signal outputState: state_type := idle;
  signal nextOutputState: state_type := idle;
  
  signal receivedFull: std_logic := '0';
  signal receivedData: std_logic_vector(7 downto 0);
  signal receivedSent: std_logic := '0';
  
  begin
 
  -- Instantiate UART transmitter
  UART_TX_INST : uart_tx
    generic map (
      g_CLKS_PER_BIT => c_CLKS_PER_BIT
      )
    port map (
      i_clk       => r_CLOCK,
      i_tx_dv     => r_TX_DV,
      i_tx_byte   => r_TX_BYTE,
      o_tx_active => w_TX_Active,
      o_tx_serial => w_TX_SERIAL,
      o_tx_done   => w_TX_DONE
      );
 
  -- Instantiate UART Receiver
  UART_RX_INST : uart_rx
    generic map (
      g_CLKS_PER_BIT => c_CLKS_PER_BIT
      )
    port map (
      i_clk       => r_CLOCK,
      i_rx_serial => r_RX_SERIAL,
      o_rx_dv     => w_RX_DV,
      o_rx_byte   => w_RX_BYTE
      );
 
  r_CLOCK <= CLK;
       
  RsTx <= w_TX_SERIAL;
  r_RX_SERIAL <= RsRx;
  
  LED(0) <= receivedFull;
  LED(1) <= w_TX_SERIAL;
  LED(2) <= r_RX_SERIAL;
  LED(3) <= r_TX_DV;
  LED(4) <= w_RX_DV;
  LED(5) <= w_TX_ACTIVE;
  LED(6) <= receivedSent;
  
  LED(8) <= '1' when outputState = idle else '0';
  LED(9) <= '1' when outputState = start else '0';
  LED(10) <= '1' when outputState = waiting else '0';
  LED(11) <= '1' when sendCounter = sendCount else '0';
  
--CLOCK_PROCESS: process is
--    begin
--    wait for 5 ns;
--    r_CLOCK <= not r_CLOCK;
-- end process;

  output_states: process(r_CLOCK)
     begin
        if r_CLOCK'event and r_CLOCK = '1' then
           if btnC = '1' then
              outputState <= idle;
           else
              outputState <= nextOutputState;
           end if;
        end if;
     end process;
           
  
  UART_Receive_process: process(r_CLOCK, w_RX_DV) is
     begin  
     
        if r_CLOCK'event and r_CLOCK = '1' then
           if btnC = '1' then
              receivedFull <= '0';
           elsif w_RX_DV = '1' then
              receivedFull <= '1';
              receivedData  <= w_RX_Byte;
           elsif receivedSent = '1' then
              receivedFull <= '0';
           end if;
        end if;
        
     end process;
  
   UART_Output_process: process(r_CLOCK, outputState) is
      begin
      
       if r_CLOCK'event and r_CLOCK = '1' then
         case outputState is
         
            when idle =>
               if btnC = '1' then
                  sendCounter <= 0;
               elsif receivedFull = '1' then
                  nextOutputState <= start;
               elsif sendCounter /= sendCount then                
                  nextOutputState <= start;
                  if sendCounted = '0' then
                     sendCounter <= sendCounter + 1;
                     sendCounted <= '1';
                  end if;
               else
                  nextOutputState <= idle;
               end if;
               
            when start =>
               if w_TX_Active = '0' then
                  nextOutputState <= start;
               else
                  nextOutputState <= waiting;
               end if;
               
            when waiting =>
               sendCounted <= '0';
               if w_TX_Active = '0' then
                  nextOutputState <= idle;
               else
                  nextOutputState <= waiting;
               end if;
         end case;
      end if;
   end process;   
  
        
   UART_Echo_process: process(r_CLOCK, outputState, btnC, receivedFull) is
      begin

      case outputState is
      
      when idle => -- do nothing
         r_TX_DV <= '0';
         r_TX_BYTE <= X"00";
         if btnC = '1' then
            receivedSent <= '0';
         end if;

      when start =>
         if receivedFull = '1' then
            r_TX_BYTE <= receivedData;
            receivedSent <= '1';
         else
            r_TX_BYTE <= X"32";
         end if;
         r_TX_DV <= '1';
         
      when waiting =>
         r_TX_DV <= '0';
         r_TX_BYTE <= X"00";
         if receivedFull = '0' then
            receivedSent <= '0';
         end if;
      
      end case;
   end process;
      
end behave;
