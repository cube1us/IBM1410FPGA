----------------------------------------------------------------------
-- A test bench driver for Integration Test 4 - FPGA module
-- Copied from IntegrationTest3_fpga 2/21/2025
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
 
entity IntegrationTest4_fpga_tb is
end IntegrationTest4_fpga_tb;
 
architecture behavioral of IntegrationTest4_fpga_tb is
 
component IntegrationTest4_fpga is
   GENERIC (
      CHANNEL_STROBE_LENGTH: integer;     -- Default 100 == 1 us
      CHANNEL_CYCLE_LENGTH:  integer;     -- Default 1120 == 11.2 us
      TAU_IRG_DELAY:         integer;     -- Default 10000 == 100 us
      TAU_WRITE_RBC_DELAY:   integer;     -- Default 4000000 == 30ms
      USE_UDP_OUTPUT_TEST:   integer := 0;
      USE_UDP_INPUT_TEST:    integer := 0
   );
   PORT (
      CLK: in  STD_LOGIC;
      SW:  in  STD_LOGIC_VECTOR(15 downto 0);
      LED: out STD_LOGIC_VECTOR(15 downto 0);
      btnC, btnL, btnR, btnU, btnD, btnCpuReset: in STD_LOGIC;
      RsTx: out STD_LOGIC;  -- From FPGA to USB/Serial
      RsRx: in STD_LOGIC;    -- To FPGA from USB/Serial  
      
      -- Ethernet Port (PHY)
      PhyMdc:      out STD_LOGIC;  -- Not used
      PhyMdio:   inout STD_LOGIC;  -- Not used
      PhyRstn:     out STD_LOGIC;  -- 
      PhyCrs:      in  STD_LOGIC;  --
      PhyRxErr:    in  STD_LOGIC;  --
      PhyRxd:      in  STD_LOGIC_VECTOR(1 downto 0); --
      PhyTxEn:     out STD_LOGIC; --
      PhyTxd:      out STD_LOGIC_VECTOR(1 downto 0); --
      PhyClk50Mhz: out STD_LOGIC;
      PhyIntn:     in  STD_LOGIC   -- Not used                
            
);
end component;

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
   
-- For component copied in from Nexys4 Ethernet MAC test bench

component crc32 is 
   PORT(
      clk:         in STD_LOGIC;
      rst:         in STD_LOGIC;
      vld:         in STD_LOGIC;
      data:        in STD_LOGIC_VECTOR(7 downto 0);
      crc:        out STD_LOGIC_VECTOR(31 downto 0)
   );
end component;
   
   
constant c_CLKS_PER_BIT : integer := 100000000 / 115200; 

signal FPGA_CLK: STD_LOGIC := '0';
signal SW: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal btnC, btnL, btnR, btnU, btnD: STD_LOGIC := '0';
signal btnCpuReset: STD_LOGIC := '1';

signal LED: STD_LOGIC_VECTOR(15 downto 0);

signal RGB1_Red:   STD_LOGIC := '0';
signal RGB1_Green: STD_LOGIC := '0';
signal RGB1_Blue:  STD_LOGIC := '0';
signal RGB2_Red:   STD_LOGIC := '0';
signal RGB2_Green: STD_LOGIC := '0';
signal RGB2_Blue:  STD_LOGIC := '0';

signal RsTx: STD_LOGIC;
signal RsRx: STD_LOGIC := '1';

signal PhyMdc:        STD_LOGIC := '0';
signal PhyMdio:       STD_LOGIC := '0';
signal PhyRstn:       STD_LOGIC := '0';
signal PhyCrs:        STD_LOGIC := '0';
signal PhyRxErr:      STD_LOGIC := '0';
signal PhyRxd:        STD_LOGIC_VECTOR(1 downto 0) := "00";
signal PhyTxEn:       STD_LOGIC := '0';
signal PhyTxd:        STD_LOGIC_VECTOR(1 downto 0) := "00";
signal PhyClk50Mhz:   STD_LOGIC := '0';
signal PhyIntn:       STD_LOGIC := '0';

-- UART output signals (from test bench to FPGA)

signal UART_RCV_DATA_VALID: STD_LOGIC := '0';
signal UART_RCV_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal UART_XMT_DATA_VALID: STD_LOGIC := '0';
signal UART_XMT_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal UART_XMT_ACTIVE: STD_LOGIC := '0';
signal UART_XMT_DONE: STD_LOGIC := '0';

signal crc_rst:    STD_LOGIC;
signal crc_vld:    STD_LOGIC;
signal crc_dat:    STD_LOGIC_VECTOR(7 downto 0);
signal crc_code:   STD_LOGIC_VECTOR(31 downto 0) := X"00000000";
signal crc_bswap:  STD_LOGIC_VECTOR(31 downto 0) := X"00000000";

signal rx_data:    STD_LOGIC_VECTOR(1522*8-1 downto 0);
signal rx_len:     STD_LOGIC_VECTOR(10 downto 0);
signal rx_err:     STD_LOGIC;
signal rx_i:       integer;
signal rx_b:       integer;
signal rx_byte_buf: STD_LOGIC_VECTOR(7 downto 0);
signal rx_preamble_buffer: STD_LOGIC_VECTOR(63 downto 0);
signal rx_crc:     STD_LOGIC_VECTOR(31 downto 0);
signal rx_byte:    STD_LOGIC_VECTOR(7 downto 0);

signal tx_data:    STD_LOGIC_VECTOR(1522*8-1 downto 0);
signal tx_arp:     STD_LOGIC_VECTOR(60*8-1 downto 0);
signal tx_len:     STD_LOGIC_VECTOR(10 downto 0);
signal tx_i:       integer;

function bswap32_vhdl (crc_code: STD_LOGIC_VECTOR)
   return STD_LOGIC_VECTOR is
   begin
   return crc_code(7 downto 0) & crc_code(15 downto 8) &
      crc_code(23 downto 16) & crc_code(31 downto 24);
   end bswap32_vhdl;


     
function to_string ( a: std_logic_vector) return string is
variable b : string (1 to a'length) := (others => NUL);
variable stri : integer := 1; 
begin
    for i in a'range loop
        b(stri) := std_logic'image(a((i)))(2);
    stri := stri+1;
    end loop;
return b;
end function;
     
begin

  -- Instantiate CRC32 module
  
   crc32_inst: crc32 PORT MAP(
      clk => PhyClk50Mhz,
      rst => crc_rst,
      vld => crc_vld,
      data => crc_dat,
      crc  => crc_code);
         
  -- Instantiate the top level module

   UUT: IntegrationTest4_fpga 
   generic map(
      CHANNEL_STROBE_LENGTH =>   100,  -- 1 us strobe
      CHANNEL_CYCLE_LENGTH  =>  1120,  -- 20 us (would be 1120 for 11.2 us per 800 bpi char)
      TAU_IRG_DELAY         => 10000,  -- 1ms to allow for overlap to start up
      TAU_WRITE_RBC_DELAY =>    1000,  -- For simulation, just 10us
      USE_UDP_OUTPUT_TEST => 0,
      USE_UDP_INPUT_TEST => 0
   )
   port map(     
      CLK => FPGA_CLK,
      SW => SW,
      LED => LED,
      btnC => btnC, btnL => btnL, btnR => btnR, 
      btnU => btnU, btnD => btnD,
      btnCpuReset => btnCpuReset,
      RsTx => RsTx,
      RsRx => RsRx,
      -- Ethernet Port (PHY)
      PhyMdc      => PhyMdc,
      PhyMdio     => PhyMdio,
      PhyRstn     => PhyRstn, 
      PhyCrs      => PhyCrs, 
      PhyRxErr    => PhyRxErr,
      PhyRxd      => PhyRxd,
      PhyTxEn     => PhyTxEn,
      PhyTxd      => PhyTxd,
      PhyClk50Mhz => PhyClk50Mhz,
      PhyIntn     => PhyIntn                    
    );

   -- Instantiate the UART comopnents 

   UART_TX_INST : uart_tx
      generic map (
         g_CLKS_PER_BIT => c_CLKS_PER_BIT
      )
      port map (
         i_clk       => FPGA_CLK,
         i_tx_dv     => UART_XMT_DATA_VALID,
         i_tx_byte   => UART_XMT_DATA,
         o_tx_active => UART_XMT_ACTIVE,
         o_tx_serial => RsRx, -- To FPGA serial input
         o_tx_done   => UART_XMT_DONE
      );

   UART_RX_INST : uart_rx
      generic map (
         g_CLKS_PER_BIT => C_CLKS_PER_BIT
      )
    port map (
      i_clk       => FPGA_CLK,
      i_rx_serial => RsTx, -- From FPGA serial output
      o_rx_dv     => UART_RCV_DATA_VALID,
      o_rx_byte   => UART_RCV_DATA
      );


   
  FPGA_CLK <= not FPGA_CLK after 5 ns;
   
uut_process: process is
  
  variable UART_RECEIVED_BYTE: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
  variable UART_RECEIVED_UNLOCK: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
  variable UART_RECEIVED_CHAR: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
  
  begin

  SW(15) <= '0'; -- Mode DISPLAY
  SW(14) <= '0'; -- Mode ALTER
  SW(2) <= '1';  -- Suppress lamp data transmission if '1'
  SW(1) <= '0';  -- 1401 Mode (for testing)
  SW(0) <= '0';  -- FAST console
  
  -- Essentially a watchdog -- in case the real test doesn't complete.
  -- wait for 25 ms;
  wait for 30 ms;
  
  -- Tell it unit E channel tape unit 0 is ready
  
--  UART_XMT_DATA <= "10000100"; -- TAU E Channel Flag byte
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
--  UART_XMT_DATA <= "00000000"; -- Unit 0
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';

--  UART_XMT_DATA <= "00000011"; -- TAU E Channel Status: Read write, Ready read
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
  -- Press Start  
    
    -- DISABLE FOR NOW WHILE TESTING ETHERNET
    
--   btnC <= '1';
--   report "Pressed Start";
--   wait for 10100 us; 
--   btnC <= '0';
  
  -- Begin Console CE INPUT test
    
  -- Now, wait for the keyboard to unlock
  
--  while UART_RECEIVED_UNLOCK /= "00000001" loop
--     while UART_RECEIVED_BYTE /= "10000010" loop
--        wait until UART_RCV_DATA_VALID = '1';  -- Wait for the lock code control byte
--        UART_RECEIVED_BYTE := UART_RCV_DATA;
--        report "Received UART byte of " & to_string(UART_RCV_DATA);
--        wait until UART_RCV_DATA_VALID = '0';        
--     end loop;
--     wait until UART_RCV_DATA_VALID = '1'; -- We have a lock/unlock contro byte
--     report "Received UART Lock/Unlock byte of " & to_string(UART_RCV_DATA);
--     UART_RECEIVED_UNLOCK := UART_RCV_DATA;
--     wait until UART_RCV_DATA_VALID = '0';     
--  end loop;
  
  -- Keyboard should now be unlocked... 
  
  -- Send the "I have data from the keyboard" flag byte.
  
--  report "Sending Keyboard data flag byte";
  
--  UART_XMT_DATA <= "10000001";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
  -- At this point the print mechanism might be in upper case...
  
--  report "Sending Lower Case Shift Code";

--  UART_XMT_DATA <= "01000000";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';  
--  wait for 2 ms;

  -- Followed by BCD 00000 ...
    
--  for n in 1 to 5 loop
--     report "Sending BCD 0";
--     UART_XMT_DATA <= "00001010"; 
--     UART_XMT_DATA_VALID <= '1';  
--     wait for 100 ns;  
--     UART_XMT_DATA_VALID <= '0';
--     wait until UART_XMT_ACTIVE = '0';
--     wait until UART_RCV_DATA_VALID = '1';  -- Wait for each 0 to be echoed. (could check value?)
--     wait until UART_RCV_DATA_VALID = '0';
--     wait for 1 ms;
--  end loop;
    
  -- Now, wait for the CR after entering the address (or could wait for kbd lock, too)
  
--  while UART_RECEIVED_CHAR /= "00001101" loop
--     -- while UART_RECEIVED_BYTE /= "10001000" loop
--     --   wait until UART_RCV_DATA_VALID = '1';  -- Wait for the console data byte
--     --   UART_RECEIVED_BYTE := UART_RCV_DATA;
--     --   report "Received UART byte of " & to_string(UART_RCV_DATA);
--     --   wait until UART_RCV_DATA_VALID = '0';        
--     -- end loop;
--     wait until UART_RCV_DATA_VALID = '1'; -- We have a lock/unlock contro byte
--     report "Received UART console output byte of " & to_string(UART_RCV_DATA);
--     UART_RECEIVED_CHAR := UART_RCV_DATA;
--     wait until UART_RCV_DATA_VALID = '0';     
--  end loop;

  -- Now wait for several character:  D<sp>b<wm><bsp>,
  
--  for n in 1 to 6 loop
--     wait until UART_RCV_DATA_VALID = '1';
--     report "Received UART console output byte[2] of " & to_string(UART_RCV_DATA);
--     wait until UART_RCV_DATA_VALID = '0';
--  end loop;
  
  -- Now, change to ALTER mode
  
--  SW(15) <= '0';
--  report "Moving from DISPLAY TO STOP";
--  wait for 5 ms;
--  SW(14) <= '1';
--  report "MOVING FROM STOP TO ALTER";
--  -- Prep for checking unlock status later
--  UART_RECEIVED_UNLOCK := "00000000";
--  UART_RECEIVED_BYTE := "00000000";
--  wait for 5 ms;
  
  -- Then press START
--  btnC <= '1';  
--  report "Pressed Start in ALTER mode";
--  wait for 11 ms;
--  btnC <= '0';
  
  -- Wait for the keyboard to unlock again
  
--  while UART_RECEIVED_UNLOCK /= "00000001" loop
--     while UART_RECEIVED_BYTE /= "10000010" loop
--        wait until UART_RCV_DATA_VALID = '1';  -- Wait for the lock code control byte
--        UART_RECEIVED_BYTE := UART_RCV_DATA;
--        report "Received UART byte of " & to_string(UART_RCV_DATA);
--        wait until UART_RCV_DATA_VALID = '0';        
--     end loop;
--     wait until UART_RCV_DATA_VALID = '1'; -- We have a lock/unlock contro byte
--     report "Received UART Lock/Unlock byte of " & to_string(UART_RCV_DATA);
--     UART_RECEIVED_UNLOCK := UART_RCV_DATA;
--     wait until UART_RCV_DATA_VALID = '0';     
--  end loop;
  
  -- Send a word mark
  
--  UART_XMT_DATA <= "01100000";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
--  wait for 2 ms;
  
  
  -- Annnnnd send a percent character... (in BCD -- -A84--
  
--  report "Sending UPPER Case Shift Code";

--  UART_XMT_DATA <= "01000001";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
--  wait for 2 ms;

--  -- Followed by the percent sign
    
--  report "Sending BCD %";
--  UART_XMT_DATA <= "00011100"; 
--  UART_XMT_DATA_VALID <= '1';  
--  wait for 100 ns;  
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
--  wait until UART_RCV_DATA_VALID = '1';  -- Wait for each 0 to be echoed. (could check value?)
--  wait until UART_RCV_DATA_VALID = '0';
  
  -- End console CE Input Test
  
  
  -- Begin Console I/O INPUT test
  
  -- Press Inquiry Request
  
--  report "Sending Keyboard data flag byte before Inq. Req.";
  
--  UART_XMT_DATA <= "10000001";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
    
--  -- Send Inquiry Request Key  (0x42)

--  UART_XMT_DATA <= "01000010";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
--  wait for 1 ms;
  
--  -- Release the Inquiry Request Key 

--  UART_XMT_DATA <= "01000000";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
--  report "Inquiry Request Released";
    
--  -- Wait for the keyboard to unlock
  
--  while UART_RECEIVED_UNLOCK /= "00000001" loop
--     while UART_RECEIVED_BYTE /= "10000010" loop
--        wait until UART_RCV_DATA_VALID = '1';  -- Wait for the lock code control byte
--        UART_RECEIVED_BYTE := UART_RCV_DATA;
--        report "Received UART byte of " & to_string(UART_RCV_DATA);
--        wait until UART_RCV_DATA_VALID = '0';        
--     end loop;
--     wait until UART_RCV_DATA_VALID = '1'; -- We have a lock/unlock contro byte
--     report "Received UART Lock/Unlock byte of " & to_string(UART_RCV_DATA);
--     UART_RECEIVED_UNLOCK := UART_RCV_DATA;
--     wait until UART_RCV_DATA_VALID = '0';     
--  end loop;
  
--  -- Keyboard should now be unlocked... 
  
--  -- Send the "I have data from the keyboard" flag byte.
   
--  -- At this point the print mechanism might be in upper case...
  
--  report "Sending Lower Case Shift Code";

--  UART_XMT_DATA <= "01000000";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';  
--  wait for 2 ms;

--  -- Followed by BCD 00000 ...
    
--  for n in 1 to 5 loop
--     report "Sending BCD 0";
--     UART_XMT_DATA <= "00001010"; 
--     UART_XMT_DATA_VALID <= '1';  
--     wait for 100 ns;  
--     UART_XMT_DATA_VALID <= '0';
--     wait until UART_XMT_ACTIVE = '0';
--     wait until UART_RCV_DATA_VALID = '1';  -- Wait for each 0 to be echoed. (could check value?)
--     wait until UART_RCV_DATA_VALID = '0';
--     wait for 1 ms;
--  end loop;
  
--  -- Send Inquiry Release
  
--  UART_XMT_DATA <= "01000100";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
--  wait for 1 ms;
  
--  -- Release the Inquiry Release Key 

--  UART_XMT_DATA <= "01000000";
--  UART_XMT_DATA_VALID <= '1';
--  wait for 100 ns; 
--  UART_XMT_DATA_VALID <= '0';
--  wait until UART_XMT_ACTIVE = '0';
  
--  End of Console I/O Input Test

  -- Basic tape testting -- rewind
  
--  for i in 1 to 3 loop
--     if UART_RCV_DATA_VALID = '0' then
--        wait until UART_RCV_DATA_VALID = '1' for 10 ms;
--     end if;
--     assert UART_RCV_DATA_VALID = '1' report "No Data Recevied" severity failure;
--     report "Received Byte " & integer'image(to_integer(unsigned(UART_RCV_DATA)));
--     wait for 20 ns;
--  end loop;
  
  -- wait for 19 ms; 
 
  assert false report "Normal End of Test" severity failure;
     
  end process;
  
EthernetVerilogUARTTest_Process: process is

procedure SEND_RX (minSize: in integer; testName: in STRING; verbosity: in INTEGER) is
   begin
   report testName & " Sending packet";
   PhyRxd <= "00";
   crc_rst <= '1';
   crc_vld <= '0';
   crc_dat <= X"00";
   wait for 20 ns;
   
   if verbosity > 0 then
      report testName & " sending Start of Frame";
   end if;
   
   for sof in 30 downto 0 loop    -- Had been 31, which was wrong.
      wait until rising_edge(PhyClk50Mhz);
      PhyCrs <= '1';
      PhyRxd <= "01";
      wait for 1 ns;      
   end loop;
   
   wait until rising_edge(PhyClk50Mhz);
   PhyRxd <= "11";

   if verbosity > 0 then
      report testName & " Starting Data";
   end if;
   
   crc_rst <= '0';
   tx_i <= 0;
   wait for 1 ns;
   while tx_i < (8 * to_integer(unsigned(tx_len))) loop
      wait until rising_edge(PhyClk50MHz);
      PhyRxd <= tx_data(tx_i + 1 downto tx_i);
      if tx_i mod 8 = 0 then
         crc_vld <= '1';
         crc_dat <= tx_data(tx_i+7 downto tx_i);
         if verbosity > 1 then
            report testName & " sent data[ " & integer'image(tx_i / 8) &
               "] " & -- integer'image(to_integer(unsigned(tx_data(tx_i+7 downto tx_i))));
               to_hstring(tx_data(tx_i+7 downto tx_i));
         end if;
      else
         crc_vld <= '0';
      end if;
      tx_i <= tx_i + 2;
      wait for 1 ns;
   end loop;
   
   if (verbosity > 0) and (tx_i < 8*minsize) then
      report testName & " Sending padding";
   end if;
   
   while tx_i < 8*minSize loop
      wait until rising_edge(PhyClk50Mhz);
      PhyRxd <= "00";
      if tx_i mod 8 = 0 then
         crc_vld <= '1';
         crc_dat <= X"00";
         wait for 1 ns;
      else
         crc_vld <= '0';
      end if;
      tx_i <= tx_i + 2;
      wait for 1 ns;           
   end loop;

   if (verbosity > 0) then
      report testName & " Sending Checksum of " & 
         -- integer'image(to_integer(unsigned(crc_code)));
         to_hstring(crc_code);
   end if;
   
   tx_i <= 0;
   crc_bswap <= bswap32_vhdl(crc_code);   
   crc_vld <= '0';
   wait for 1 ns;
   
   while tx_i < 31 loop
      wait until rising_edge(PhyClk50Mhz);
      PhyRxd <= crc_bswap(tx_i + 1 downto tx_i);
      tx_i <= tx_i + 2;
      wait for 1 ns;
   end loop;
   
   wait until rising_edge(PhyClk50Mhz);
   PhyCrs <= '0';
   PhyRxd <= "00";
   
   if (verbosity > 0) then
      report testName & " Packet completed.";
   end if;
   end SEND_RX;
   
   
   -- Receive a transmitted packet

procedure RECEIVE_TX (minSize: in INTEGER; testName: in STRING; verbosity: in INTEGER) is
    begin

    -- The following is translated from the Nexys4 Ethernet MAC tx_sim.v
    report "Waiting for Preamble";

    rx_preamble_buffer <= X"0000000000000000";
    wait for 1 ns;
    while rx_preamble_buffer /= X"D555555555555555" loop
       if(PhyTxEn = '1') then
          rx_preamble_buffer <= PhyTxd & rx_preamble_buffer(63 downto 2);
          wait until PhyClk50Mhz = '0';
          wait until PhyClk50Mhz = '1';
          wait for 1 ns;
       else
          rx_preamble_buffer <= X"0000000000000000";
          wait for 1 ns;
       end if;
    end loop;
    
    if verbosity > 0 then
       report testName & " Received TX Preamble";
    end if;
       
    crc_rst <= '1';
    crc_vld <= '0';
    rx_i <= 0;
    rx_b <= 0;
    wait for 1 ns;
    while(PhyTxEn = '1') loop
       rx_byte_buf <= PhyTxd & rx_byte_buf(7 downto 2);
       rx_b <= rx_b + 1;
       wait for 1 ns;
       
       if rx_b = 4 then
          if rx_i >= 4 then
             crc_vld <= '1';
             wait for 1 ns;
             crc_dat <= rx_data((rx_i-4)*8+8-1 downto (rx_i-4)*8); 
          end if;
          rx_data(rx_i*8+8-1 downto rx_i*8) <= rx_byte_buf;
          rx_b <= 0;
          if verbosity > 1 then
             report testName & " Received TX Data(" & integer'image(rx_i) & ") = " & 
                -- integer'image(to_integer(unsigned(rx_byte_buf)));
                to_hstring(rx_byte_buf);
          end if;
          rx_byte <= rx_byte_buf;
          rx_i <= rx_i + 1;
       end if;                    

       wait until PhyClk50Mhz = '0';          
       wait until PhyClk50Mhz = '1';
       crc_rst <= '0';
       crc_vld <= '0';
       wait for 1 ns;
    end loop;
       
    rx_len <= "00000000000";
    rx_err <= '0';
    rx_crc <= rx_data((rx_i-4)*8+32-1 downto (rx_i-4)*8);
    crc_bswap <= bswap32_vhdl(crc_code);       
    wait for 1 ns;
    if verbosity > 0 then
       report testName & " Received TX CRC: " & to_hstring(rx_crc); 
          -- integer'image(to_integer(unsigned(rx_crc))); 
       report testName & " Expected TX CRC: " & to_hstring(crc_bswap); 
          -- integer'image(to_integer(unsigned(crc_bswap)));
    end if;
       
    assert rx_b = 0 report testName & " Received TX Incomplete Transmission";
    assert rx_i >= minSize report testName & " Received TX Frame Size of " & integer'image(rx_i) &
       " is too short";
    assert rx_crc = crc_bswap report testName & " Received TX CRC Mismatch";


end RECEIVE_TX;


      --  Construct ARP Ethernet frame sans checksum bytes

   procedure BUILD_ARP_FRAME(
      testName: in String;
      verbosity: in integer;
      srcMac:  in STD_LOGIC_VECTOR(12*4-1 downto 0);
      destMac: in STD_LOGIC_VECTOR(12*4-1 downto 0);
      arpOperation: in STD_LOGIC_VECTOR(15 downto 0);
      srcIP:   in STD_LOGIC_VECTOR(8*4-1 downto 0);
      tgtMac:  in STD_LOGIC_VECTOR(12*4-1 downto 0);
      tgtIP:   in STD_LOGIC_VECTOR(8*4-1 downto 0)) is
      
   variable b: integer;
   
   begin 
      
      for i in 60 downto 1 loop
         tx_arp(i*8-1 downto i*8-8) <= X"00";         
      end loop;             
      b := 60*8;
      tx_arp(b-1 downto b-6*8) <= destMac;
      b := b - 6*8;
      tx_arp(b-1 downto b-6*8) <= srcMac;
      b := b - 6*8;
      tx_arp(b-1 downto b-2*8) <= X"0806";
      b := b - 2*8;
      -- HW Type, Protocol Tipe, MAC len, IP proto len
      tx_arp(b-1 downto b-6*8) <= X"000108000604"; 
      b := b - 6*8;
      tx_arp(b-1 downto b-2*8) <= arpOperation;
      b := b - 2*8;
      tx_arp(b-1 downto b-6*8) <= srcMac;
      b := b-6*8;
      tx_arp(b-1 downto b-4*8) <= srcIP;
      b := b-4*8;
      tx_arp(b-1 downto b-6*8) <= tgtMac;
      b := b-6*8;
      tx_arp(b-1 downto b-4*8) <= tgtIP;      
   end BUILD_ARP_FRAME;

   variable receivedMac: STD_LOGIC_VECTOR(47 downto 0);
   variable i,j: integer;
   
   -- Test Selection
   
   variable LOOPBACKTEST: integer := 0;
   variable ETHERNETTEST: integer := 0;
   variable SWITCHTEST:   integer := 0;
   variable LAMPTEST:     integer := 0;
   variable TAUREADTEST:  integer := 0;
   variable TAUWRITETEST: integer := 0;
   variable TAUREADTMCONDTEST: integer := 1;
   

  begin
  
  if LOOPBACKTEST /= 1 and ETHERNETTEST = 1 then
  
    report "Starting non loopback Ethernet test" severity note;
  
    btnU <= '0';
    PhyRxErr <= '0';
    PhyIntn <= '1';    
    wait for 100 ns;
    wait until PhyRstn = '1';
    wait for 200 us;
    btnU <= '1';

    -- First thing we expect to see is an ARP request from the FPGA from the
    -- packet it is trying to send

    RECEIVE_TX(minSize => 60, testName => "ARP REQUEST", verbosity => 2);
    
    -- Create an ARP reply

    wait for 100 us;
    btnU <= '0';
    
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));

    -- Change the MAC over from transmitted order

    j := 28*8;
    i := 0;    
    while i < 6 loop
       receivedMac(i*8+7 downto i*8) := rx_data(j-1 downto j-8);
       j := j - 8; 
       i := i + 1;
    end loop;

    BUILD_ARP_FRAME(
       testName => "ARP REPLY",
       verbosity => 1,
       srcMac => X"E0D55EAFF823",
       destMac => receivedMac,
       arpOperation => X"0002", -- Reply
       srcIP => X"C0A82A3C", 
       tgtMac => receivedMac,
       tgtIp => X"C0A82AFE"); -- Hard coded for now till I figure out the offset
    
    report "Built ARP Reply Frame";
    
    wait for 10 ns;
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    i := 0;
    while i < 8*to_integer(unsigned(tx_len)) loop
       tx_data(8*60-i-1 downto 8*60-i-8) <= tx_arp(i+7 downto i);
       i := i + 8;       
    end loop;
    
    wait for 100 us;
    
    -- tx_data(8*60-1 downto 0) <= tx_arp;
    SEND_RX(minSize => 60, testName => "ARP REPLY", verbosity => 1);
    wait for 1 us;
            
    RECEIVE_TX(minSize => 64, testName => "Tape Request UDP Receive Packet", verbosity => 2);
    
    btnU <= '0';  -- Added
                        
    -- wait for 1 ms;
    
    -- report "Pressing btnU again...";
    -- btnU <= '1';
    RECEIVE_TX(minSize => 64, testName => "UDP Receive Packet", verbosity => 2);
    

    -- wait for 100 us;
    -- btnU <= '0';
    wait for 500 us;     
    
    -- Send a packet to test receiving too...  
    
    tx_data(4*120-1 downto 0) <= 
       -- X"020001040A00E0D55EAFF82308004500002EB3FE00008011B035C0A82A3CC0A82AFE04000400001AD8DD000102030405060708090A0B0C0D0E0F1011";
        X"11100F0E0D0C0B0A09080706050403020100DDD81A0000040004FE2AA8C03C2AA8C035B011800000FEB32E000045000823F8AF5ED5E0000A04010002";
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 60, testName => "SEND UDP Send to FPGA", verbosity => 1);

    wait for 100 us;

    tx_data(4*120-1 downto 0) <= 
       -- X"020001040A00E0D55EAFF82308004500002EB3FE00008011B035C0A82A3CC0A82AFE04000400001AD8DD000102030405060708090A0B0C0D0E0F1011";
        X"11100F0E0D0C0B0A09080706050403020100DDD81A0000040004FE2AA8C03C2AA8C035B011800000FEB32E000045000823F8AF5ED5E0000A04010002";
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 60, testName => "SEND SECOND UDP Send to FPGA", verbosity => 1);
      
    wait for 500 us;
     
    report "Normal End of Loopback Ethernet Test" severity failure;
    end if;  -- LOOPACKTEST /= 1 and EthernetTest = 1
    
if SWITCHTEST = 1 then

    -- Give Ethernet a chance to initialize...
    btnU <= '0';
    btnC <= '0';
    PhyRxErr <= '0';
    PhyIntn <= '1';    
    wait for 100 ns;
    wait until PhyRstn = '1';
    wait for 1500 us;
        
    -- Send a packet for the UDP input handler
    
    -- This packet turns OFF the Run Mode (starts to rotate the switch)

--    tx_data(663 downto 0) <=
--        X"0000030002000140200004000000000001000000000000100000000000400020" &
--        X"0000004000040000800C75310000040004FE2AA8C03C2AA8C01CA41140000001" &
--        X"0045000045000823F8AF5ED5E0000A04010002" ;
--    tx_len <= std_logic_vector(to_unsigned(83,tx_len'length));
--    wait for 1 ns;
--    SEND_RX(minSize => 83, testName => "Off Run Mode Packet to FPGA", verbosity => 1); 
--    wait for 1 ms;   
        
--    -- this packet sets the mode to Display.  (Note that the data below is
--    -- in least significant nybble first.)

--    tx_data(663 downto 0) <=
--        X"0000030002000140200004000000000000010000000000100000000000400020" &
--        X"0000004000040000800B76310000040004FE2AA8C03C2AA8C01CA41140000001" &
--        X"0045000045000823F8AF5ED5E0000A04010002" ;
--    tx_len <= std_logic_vector(to_unsigned(83,tx_len'length));
--    wait for 1 ns;
--    SEND_RX(minSize => 83, testName => "Display Mode Packet to FPGA", verbosity => 1);  
--    wait for 1 ms;  

--    -- This packet starts a memory load operation
    
--    tx_data(975 downto 0) <=
--        X"707012201720132819281A2812251A281A281A281A281A24102810281F271028" &
--        X"13281A28192811201A281126122319281328112019281A281F2710281A281A28" &
--        X"1A2812201A28112610284040404041825B44580000040004FE2AA8C03C2AA8C0" &
--        X"F5A31140000001006C000045000823F8AF5ED5E0000A04010002" ;
--    tx_len <= std_logic_vector(to_unsigned(122,tx_len'length));
--    wait for 1 ns;
--    SEND_RX(minSize => 122, testName => "Packet MEM Load to FPGA", verbosity => 1);    


   -- Send a packet to set up the status on tape unit 0

    tx_data(407 downto 0) <=
        X"270084040084000084B7F1110000040004FE2AA8C03C2AA8C03CA41140000001" &
        X"0025000045000823F8AF5ED5E0000A04010002" ;
    tx_len <= std_logic_vector(to_unsigned(51,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 51, testName => "Packet Sent Tape Status to FPGA", verbosity => 1);

    btnC <= '1';
    report "Pressed Start";

    -- The first attempt by the lamps to transmit should generate an ARP request... OR
    -- Once start has been pressed, we should see an ARP request for the tape read or write
    
    -- Look for the ARP request before we release start.

    RECEIVE_TX(minSize => 60, testName => "LAMP UDP ARP REQUEST", verbosity => 2);    

    wait for 10000 us; -- was 10100 
    btnC <= '0';   
    
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));

    j := 28*8;
    i := 0;    
    while i < 6 loop
       receivedMac(i*8+7 downto i*8) := rx_data(j-1 downto j-8);
       j := j - 8; 
       i := i + 1;
    end loop;

    BUILD_ARP_FRAME(
       testName => "Tape UDP ARP REPLY",
       verbosity => 1,
       srcMac => X"E0D55EAFF823",
       destMac => receivedMac,
       arpOperation => X"0002", -- Reply
       srcIP => X"C0A82A3C", 
       tgtMac => receivedMac,
       tgtIp => X"C0A82AFE"); -- Hard coded for now till I figure out the offset
    
    report "Built ARP Reply Frame";
    
    wait for 10 ns;
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    i := 0;
    while i < 8*to_integer(unsigned(tx_len)) loop
       tx_data(8*60-i-1 downto 8*60-i-8) <= tx_arp(i+7 downto i);
       i := i + 8;       
    end loop;
    
    wait for 100 us;
    
   -- tx_data(8*60-1 downto 0) <= tx_arp;
   SEND_RX(minSize => 60, testName => "Tape Write UDP ARP REPLY", verbosity => 2);
   wait for 1 us;

   -- Send a packet to set up the status on tape unit 0
   
   -- The following is for testing tape READ

   -- Send a packet in reponse to a READ
   
--   report "Sending Tape Unit Select";

--    tx_data(351 downto 0) <=
--        X"40840E9D0A0000040004FE2AA8C03C2AA8C043A41140000001001E0000450008" &
--        X"23F8AF5ED5E0000A04010002" ;
--    tx_len <= std_logic_vector(to_unsigned(44,tx_len'length));
--    wait for 1 ns;
--    SEND_RX(minSize => 44, testName => "Packet to FPGA", verbosity => 1);
    
--    wait for 100 us;
   
--   report "Sending tape read data...";

--    tx_data(2503 downto 0) <=
--        X"005D5D5D5D405D205D105D085D045D025D015D76376B5D5D3E3E5D5D6B37766B" &
--        X"5D5D3E3E5D5D6B76376B5D5D3E40014020402010201008100804080402040201" &
--        X"02013B5D404A4A4A024A615D570143434A4A4943014A4A345D570243434A4A4A" &
--        X"04014A4A345D7F0445014A4A295D434A43014A4A295D6B4A4A4A014A4A321C23" &
--        X"5D7F4A43014A4A295D404A4A4A024A615D570143434A4A07084A4A4A345D5702" &
--        X"43434A4A08084A4A4A345D7F024A014A4A295D4308074A4A4A295D6B4A4A4A01" &
--        X"4A4A321C235D7F08074A4A4A295D4349074A4A4A024A4A4A4A345D4F45494A4A" &
--        X"4A4A4A4A4A4A345D4F08084A4A4A4A4A4A4A4A345D4F01074A4A4A4A4A4A4A4A" &
--        X"345D10014A4A4A4A4302014A4A165D2862170100040004FE2AA8C03C2AA8C036" &
--        X"A31140000001002B010045000823F8AF5ED5E0000A04010002" ;
--    tx_len <= std_logic_vector(to_unsigned(313,tx_len'length));
--    wait for 1 ns;
--    SEND_RX(minSize => 313, testName => "Packet to FPGA", verbosity => 1);

--   This a packet with the unit select and data together - causing an error
--   tx_data(2519 downto 0) <=
--       X"005D5D5D5D405D205D105D085D045D025D015D76376B5D5D3E3E5D5D6B37766B" &
--       X"5D5D3E3E5D5D6B76376B5D5D3E40014020402010201008100804080402040201" &
--       X"02013B5D404A4A4A024A615D570143434A4A4943014A4A345D570243434A4A4A" &
--       X"04014A4A345D7F0445014A4A295D434A43014A4A295D6B4A4A4A014A4A321C23" &
--       X"5D7F4A43014A4A295D404A4A4A024A615D570143434A4A07084A4A4A345D5702" &
--       X"43434A4A08084A4A4A345D7F024A014A4A295D4308074A4A4A295D6B4A4A4A01" &
--       X"4A4A321C235D7F08074A4A4A295D4349074A4A4A024A4A4A4A345D4F45494A4A" &
--       X"4A4A4A4A4A4A345D4F08084A4A4A4A4A4A4A4A345D4F01074A4A4A4A4A4A4A4A" &
--       X"345D10014A4A4A4A4302014A4A165D4084E3DD190100040004FE2AA8C03C2AA8" &
--       X"C034A31140000001002D010045000823F8AF5ED5E0000A04010002" ;
--   tx_len <= std_logic_vector(to_unsigned(315,tx_len'length));
--   wait for 1 ns;
--   SEND_RX(minSize => 315, testName => "Tape Read Packet to FPGA", verbosity => 1);

   wait for 10 ms;

   report "Normal End of UDP Switch/Lamp/tape Test" severity failure;    

end if;  -- SWITCHTEST = 1

if TAUWRITETEST = 1 then

    report "Begin TAU Tape Write Test";

    -- Give Ethernet a chance to initialize...
    btnU <= '0';
    btnC <= '0';
    PhyRxErr <= '0';
    PhyIntn <= '1';    
    wait for 100 ns;
    wait until PhyRstn = '1';
    wait for 1500 us;
        
   -- Send a packet to set up the status on tape unit 0

    tx_data(407 downto 0) <=
        X"270084040084000084B7F1110000040004FE2AA8C03C2AA8C03CA41140000001" &
        X"0025000045000823F8AF5ED5E0000A04010002" ;
    tx_len <= std_logic_vector(to_unsigned(51,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 51, testName => "Packet Sent Tape Status to FPGA", verbosity => 1);

    wait for 1 ms;
    -- Send the same, for Channel 2, tape unit 0

    tx_data(407 downto 0) <=
        X"270083040083000083B8F3110000040004FE2AA8C03C2AA8C03CA41140000001" &
        X"0025000045000823F8AF5ED5E0000A04010002" ;
    tx_len <= std_logic_vector(to_unsigned(51,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 51, testName => "Packet Sent Tape 21 Status to FPGA", verbosity => 1);
    -- Start the CPU, but do not wait for the start to complete before waiting for the
    -- ARP packet 

    btnC <= '1';
    report "Pressed Start";

    -- Look for the ARP request before we release start.

    RECEIVE_TX(minSize => 60, testName => "TAPE UDP ARP REQUEST", verbosity => 2);    

    wait for 10000 us; -- was 10100 
    btnC <= '0';   
    
    -- Set up the ARP reply
    
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));

    j := 28*8;
    i := 0;    
    while i < 6 loop
       receivedMac(i*8+7 downto i*8) := rx_data(j-1 downto j-8);
       j := j - 8; 
       i := i + 1;
    end loop;

    BUILD_ARP_FRAME(
       testName => "Tape UDP ARP REPLY",
       verbosity => 1,
       srcMac => X"E0D55EAFF823",
       destMac => receivedMac,
       arpOperation => X"0002", -- Reply
       srcIP => X"C0A82A3C", 
       tgtMac => receivedMac,
       tgtIp => X"C0A82AFE"); -- Hard coded for now till I figure out the offset
    
    report "Built ARP Reply Frame";
    
    wait for 10 ns;
    tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
    i := 0;
    while i < 8*to_integer(unsigned(tx_len)) loop
       tx_data(8*60-i-1 downto 8*60-i-8) <= tx_arp(i+7 downto i);
       i := i + 8;       
    end loop;
    
    wait for 100 us;
    
    -- tx_data(8*60-1 downto 0) <= tx_arp;
    SEND_RX(minSize => 60, testName => "Tape Write UDP ARP REPLY", verbosity => 2);
    wait for 1 us;
    
    -- Then we expect to seee the write request, followed by the tape record data

    RECEIVE_TX(minSize => 60, testName => "Tape Write 1 Request", verbosity => 2);    
    RECEIVE_TX(minSize => 64, testName => "Tape W 1 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 2 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 3 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 4 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 5 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 6 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 7 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 8 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 9 UDP Receive Packet", verbosity => 2);
--    RECEIVE_TX(minSize => 64, testName => "Tape W 10 UDP Receive Packet", verbosity => 2);

    wait for 5 ms;

   report "Normal End of UDP Tape Write Test" severity failure;    

end if;  -- TAPEWRITETEST = 1

if TAUREADTMCONDTEST = 1 then

    report "Begin TAU Tape Write Test";

    -- Give Ethernet a chance to initialize...
    btnU <= '0';
    btnC <= '0';
    PhyRxErr <= '0';
    PhyIntn <= '1';    
    wait for 100 ns;
    wait until PhyRstn = '1';
    wait for 1500 us;
        
   -- Send a packet to set up the status on tape unit 0

    tx_data(407 downto 0) <=
        X"270084040084000084B7F1110000040004FE2AA8C03C2AA8C03CA41140000001" &
        X"0025000045000823F8AF5ED5E0000A04010002" ;
    tx_len <= std_logic_vector(to_unsigned(51,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 51, testName => "Packet Sent Tape Status to FPGA", verbosity => 1);

    wait for 1 ms;
    -- Send the same, for Channel 2, tape unit 0

    tx_data(407 downto 0) <=
        X"270083040083000083B8F3110000040004FE2AA8C03C2AA8C03CA41140000001" &
        X"0025000045000823F8AF5ED5E0000A04010002" ;
    tx_len <= std_logic_vector(to_unsigned(51,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 51, testName => "Packet Sent Tape 21 Status to FPGA", verbosity => 1);
    
    -- Start the CPU.  This test needs no ARP packet.

    btnC <= '1';
    report "Pressed Start";

    wait for 12 ms;    
    
    -- Send a TM packet for E Channel Unit 0
    
--    tx_data(367 downto 0) <=
--        X"000F40840A8E0C0000040004FE2AA8C03C2AA8C041A411400000010020000045" &
--        X"000823F8AF5ED5E0000A04010002" ;
--    tx_len <= std_logic_vector(to_unsigned(46,tx_len'length));
--    wait for 1 ns;
--    SEND_RX(minSize => 46, testName => "Packet to read TM TU 10 to FPGA", verbosity => 1); 

    -- Send a TM packet for F Channel Unit 0
    
    tx_data(367 downto 0) <=
        X"000F40830A8F0C0000040004FE2AA8C03C2AA8C041A411400000010020000045" &
        X"000823F8AF5ED5E0000A04010002" ;
    tx_len <= std_logic_vector(to_unsigned(46,tx_len'length));
    wait for 1 ns;
    SEND_RX(minSize => 46, testName => "Packet to read TM TU 20to FPGA", verbosity => 1);       

    wait for 5 ms;  -- hope this is long enough.
    
    report "Normal End of UDP Tape Read TM / Condition Test" severity failure;    

end if;


if LOOPBACKTEST = 1 then
   wait for 1 ms;
   tx_data(4*120-1 downto 0) <= 
       -- X"020001040A00E0D55EAFF82308004500002EB3FE00008011B035C0A82A3CC0A82AFE04000400001AD8DD000102030405060708090A0B0C0D0E0F1011";
       X"11100F0E0D0C0B0A09080706050403020100DDD81A0000040004FE2AA8C03C2AA8C035B011800000FEB32E000045000823F8AF5ED5E0000A04010002";
   tx_len <= std_logic_vector(to_unsigned(60,tx_len'length));
   wait for 1 ns;
   SEND_RX(minSize => 60, testName => "Loopback UDP Send to FPGA", verbosity => 1);
   wait for 1 ns;
   RECEIVE_TX(minSize => 60, testName => "Loopback UDP Receive Packet", verbosity => 1);
   
   report "Normal End of Loopback Test" severity failure;   
end if;
    
    
  end process;  
   
end behavioral;
