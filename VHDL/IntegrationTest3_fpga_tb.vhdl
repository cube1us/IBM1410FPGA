----------------------------------------------------------------------
-- A test bench driver for Integration Test 3 - FPGA module
-- Just provides a clock really - but could also provide
-- button presses, UART input, etc.
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
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

signal FPGA_CLK: STD_LOGIC := '0';
signal SW: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal btnC, btnL, btnR, btnU, btnD: STD_LOGIC := '0';
signal btnCpuReset: STD_LOGIC := '1';
signal RsRx: STD_LOGIC := '1';

signal LED: STD_LOGIC_VECTOR(15 downto 0);
signal RsTx: STD_LOGIC;
     
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

   
  FPGA_CLK <= not FPGA_CLK after 5 ns;
   
  uut_process: process is
  begin
 
  wait for 25 ms;
  
  btnC <= '1';
  report "Pressed Start";
  wait for 11 ms;
  btnC <= '0';
    
  wait for 39 ms;
  
  
  
  assert false report "Normal End of Test" severity failure;
     
  end process;
   
end behavioral;
