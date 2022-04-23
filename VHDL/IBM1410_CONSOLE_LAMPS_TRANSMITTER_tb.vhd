----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 04/22/2022 02:55:40 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_CONSOLE_LAMPS_TRANSMITTER_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench for the IBM 1410 Console Lamp Transmitter component
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410_CONSOLE_LAMPS_TRANSMITTER_tb is
--  Port ( );
end IBM1410_CONSOLE_LAMPS_TRANSMITTER_tb;

architecture Behavioral of IBM1410_CONSOLE_LAMPS_TRANSMITTER_tb is

component IBM1410_CONSOLE_LAMPS_TRANSMITTER 
    Generic(LAMP_VECTOR_BITS: INTEGER; 
            REFRESH_TIME: INTEGER;
            CLOCKPERIOD: INTEGER);
    Port ( FPGA_CLK: in STD_LOGIC;
           RESET : in STD_LOGIC;
           LAMP_VECTOR : in STD_LOGIC_VECTOR (LAMP_VECTOR_BITS-1 downto 0);
           UART_OUTPUT_GRANT: in STD_LOGIC;           
           UART_OUTPUT_REQUEST : out STD_LOGIC;
           UART_OUTPUT_REQUEST_DATA : out STD_LOGIC_VECTOR (7 downto 0));
end component;

constant LAMP_VECTOR_BITS: INTEGER := 21;
constant REFRESH_TIME: INTEGER := 100;
constant CLOCKPERIOD: INTEGER := 10;

signal FPGA_CLK: STD_LOGIC := '0';
signal RESET: STD_LOGIC := '0';
signal LAMP_VECTOR: STD_LOGIC_VECTOR(LAMP_VECTOR_BITS-1 downto 0) := "000000000000000000000";
signal UART_OUTPUT_GRANT: STD_LOGIC := '0';

signal UART_OUTPUT_REQUEST: STD_LOGIC;
signal UART_OUTPUT_REQUEST_DATA: STD_LOGIC_VECTOR(7 downto 0);

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;    

begin

UUT: IBM1410_CONSOLE_LAMPS_TRANSMITTER
   generic map(
      LAMP_VECTOR_BITS => LAMP_VECTOR_BITS,
      REFRESH_TIME => REFRESH_TIME,
      CLOCKPERIOD => CLOCKPERIOD
      )
   port map(
      FPGA_CLK => FPGA_CLK,
      RESET => RESET,
      LAMP_VECTOR => LAMP_VECTOR,
      UART_OUTPUT_GRANT => UART_OUTPUT_GRANT,
      UART_OUTPUT_REQUEST => UART_OUTPUT_REQUEST,
      UART_OUTPUT_REQUEST_DATA => UART_OUTPUT_REQUEST_DATA
      );
      
-- 
-- TestBenchFPGAClock.vhdl
--
-- Process to simulate the FPGA clock for a VHDL test bench
--

fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

uut_process: process

   variable testName: string(1 to 18);

   begin
   
   testName := "1410 LAMPS        ";
   
   -- Initial reaset
   RESET <= '1';
   wait for 30 ns;
   RESET <= '0';
   wait for 30 ns;
   
   check1(UART_OUTPUT_REQUEST,'0',testname,"RESET A");
   
   -- Wait for quite a while - should still not see a request
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"RESET B");

   -- assign the lamp vector now
   
   LAMP_VECTOR <= "111011110101010010001";
   
   -- First 7 bits
   
   -- Wait until we see the request line
   
   wait until UART_OUTPUT_REQUEST = '1';
   wait for 30 ns;
   
   -- So now we should have the right stuff in the output vector
   
   assert UART_OUTPUT_REQUEST_DATA = "00010001" report 
   testname & " First UART output failed." severity failure;
      
   -- Then grant the request
   
   UART_OUTPUT_GRANT <= '1';
   wait for 20ns;
      
   -- Nothing more should happen while grant is high
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"First Send Wait");

   -- Release grant - should allow it to proceed.
   UART_OUTPUT_GRANT <= '0';

   -- Second 7 bits   

   wait until UART_OUTPUT_REQUEST = '1';
   wait for 30 ns;

   -- So now we should have the right stuff in the output vector
   
   assert UART_OUTPUT_REQUEST_DATA = "01010101" report 
      testname & " Second UART output failed." severity failure;
   
   -- Then grant the request
   
   UART_OUTPUT_GRANT <= '1';
   wait for 20ns;
   
   -- Nothing more should happen while grant is high
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"Second Send Wait");

   -- Release grant - should allow it to proceed.
   UART_OUTPUT_GRANT <= '0';   

   -- Third 7 bits   

   wait until UART_OUTPUT_REQUEST = '1';
   wait for 30 ns;
   
   -- So now we should have the right stuff in the output vector
   
   assert UART_OUTPUT_REQUEST_DATA = "01110111" report 
      testname & " Third UART output failed." severity failure;

   -- Then grant the request
   
   UART_OUTPUT_GRANT <= '1';
   wait for 20ns;
   
   -- Nothing more should happen while grant is high
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"Third Send Wait");

   -- Release grant - should allow it to proceed.
   UART_OUTPUT_GRANT <= '0';
   
   
   -- Now, there should not be any more requests until we change
   -- the lamp vector.
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"Lamp Vector Change wait");
      
   -- Now change the lamp vector, and do it all again...

   -- assign the lamp vector now
   
   LAMP_VECTOR <= "000100001010101101110";
   
   -- First 7 bits
   
   -- Wait until we see the request line
   
   wait until UART_OUTPUT_REQUEST = '1';
   wait for 30 ns;
   
   -- So now we should have the right stuff in the output vector
   
   assert UART_OUTPUT_REQUEST_DATA = "01101110" report 
      testname & " 2nd test First UART output failed." severity failure;

   -- Then grant the request
   
   UART_OUTPUT_GRANT <= '1';
   wait for 20ns;
   
   -- Nothing more should happen while grant is high
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"2nd test First Send Wait");

   -- Release grant - should allow it to proceed.
   UART_OUTPUT_GRANT <= '0';

   -- Second 7 bits   

   wait until UART_OUTPUT_REQUEST = '1';
   wait for 30 ns;
   
   -- So now we should have the right stuff in the output vector
   
   assert UART_OUTPUT_REQUEST_DATA = "00101010" report 
      testname & " 2nd test Second UART output failed." severity failure;

   -- Then grant the request
   
   UART_OUTPUT_GRANT <= '1';
   wait for 20ns;
   
   -- Nothing more should happen while grant is high
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"2nd test Second Send Wait");

   -- Release grant - should allow it to proceed.
   UART_OUTPUT_GRANT <= '0';
   

   -- Third 7 bits   

   wait until UART_OUTPUT_REQUEST = '1';
   wait for 30 ns;
   
   -- So now we should have the right stuff in the output vector
   
   assert UART_OUTPUT_REQUEST_DATA = "00001000" report 
      testname & " 2nd test Third UART output failed." severity failure;

   -- Then grant the request
   
   UART_OUTPUT_GRANT <= '1';
   wait for 20ns;
   
   -- Nothing more should happen while grant is high
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"2nd test Third Send Wait");

   -- Release grant - should allow it to proceed.
   UART_OUTPUT_GRANT <= '0';
   
   
   -- Now, there should not be any more requests until we change
   -- the lamp vector.
   
   wait for (REFRESH_TIME * CLOCKPERIOD * 3) * 1ns ; 
   check1(UART_OUTPUT_REQUEST,'0',testname,"2nd test Lamp Vector Change wait");
   
   assert false report "Simulation ended SUCCESSFULLY" severity failure;
   
   wait;      
   end process; 
   

end Behavioral;
