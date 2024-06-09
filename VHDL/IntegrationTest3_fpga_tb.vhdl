----------------------------------------------------------------------
-- A test bench driver for Integration Test 3 - FPGA module
-- Just provides a clock really - but could also provide
-- button presses, UART input, etc.
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
 
entity IntegrationTest3_fpga_tb is
end IntegrationTest3_fpga_tb;
 
architecture behavioral of IntegrationTest3_fpga_tb is
 
component IntegrationTest3_fpga is
   PORT (
      CLK: in  STD_LOGIC;
      SW:  in  STD_LOGIC_VECTOR(15 downto 0);
      LED: out STD_LOGIC_VECTOR(15 downto 0);
      btnC, btnL, btnR, btnU, btnD, btnCpuReset: in STD_LOGIC;
      RsTx: out STD_LOGIC;  -- From FPGA to USB/Serial
      RsRx: in STD_LOGIC    -- To FPGA from USB/Serial        
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
   
constant c_CLKS_PER_BIT : integer := 100000000 / 115200; 

signal FPGA_CLK: STD_LOGIC := '0';
signal SW: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal btnC, btnL, btnR, btnU, btnD: STD_LOGIC := '0';
signal btnCpuReset: STD_LOGIC := '1';
signal RsRx: STD_LOGIC := '1';

signal LED: STD_LOGIC_VECTOR(15 downto 0);
signal RsTx: STD_LOGIC;

-- UART output signals (from test bench to FPGA)

signal UART_RCV_DATA_VALID: STD_LOGIC := '0';
signal UART_RCV_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal UART_XMT_DATA_VALID: STD_LOGIC := '0';
signal UART_XMT_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal UART_XMT_ACTIVE: STD_LOGIC := '0';
signal UART_XMT_DONE: STD_LOGIC := '0';

     
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
 
  -- Instantiate the top level module

   UUT: IntegrationTest3_fpga port map(
     
      CLK => FPGA_CLK,
      SW => SW,
      LED => LED,
      btnC => btnC, btnL => btnL, btnR => btnR, 
      btnU => btnU, btnD => btnD,
      btnCpuReset => btnCpuReset,
      RsTx => RsTx,
      RsRx => RsRx );

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
  SW(2) <= '1';  -- Suppress lamp data transmission.
  SW(1) <= '0';  -- 1401 Mode (for testing)
  SW(0) <= '0';  -- FAST console
  
  -- wait for 25 ms;
  wait for 20 ms;
  
  -- Tell it unit E channel tape unit 0 is ready
  
  UART_XMT_DATA <= "10000100"; -- TAU E Channel Flag byte
  UART_XMT_DATA_VALID <= '1';
  wait for 100 ns; 
  UART_XMT_DATA_VALID <= '0';
  wait until UART_XMT_ACTIVE = '0';
  
  UART_XMT_DATA <= "00000000"; -- Unit 0
  UART_XMT_DATA_VALID <= '1';
  wait for 100 ns; 
  UART_XMT_DATA_VALID <= '0';
  wait until UART_XMT_ACTIVE = '0';

  UART_XMT_DATA <= "00000011"; -- TAU E Channel Status: Read write, Ready read
  UART_XMT_DATA_VALID <= '1';
  wait for 100 ns; 
  UART_XMT_DATA_VALID <= '0';
  wait until UART_XMT_ACTIVE = '0';
  
  -- Press Start  
    
  btnC <= '1';
  report "Pressed Start";
  wait for 10100 us; 
  btnC <= '0';
  
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
  
  for i in 1 to 3 loop
     if UART_RCV_DATA_VALID = '0' then
        wait until UART_RCV_DATA_VALID = '1' for 10 ms;
     end if;
     assert UART_RCV_DATA_VALID = '1' report "No Data Recevied" severity failure;
     report "Received Byte " & integer'image(to_integer(unsigned(UART_RCV_DATA)));
     wait for 20 ns;
  end loop;
  
  -- wait for 19 ms; 
 
  assert false report "Normal End of Test" severity failure;
     
  end process;
   
end behavioral;
