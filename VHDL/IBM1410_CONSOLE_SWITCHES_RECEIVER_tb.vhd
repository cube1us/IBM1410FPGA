----------------------------------------------------------------------------------
-- Company: The Computer Collection 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/03/2022 08:26:09 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_CONSOLE_SWITCHES_RECEIVER_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench for the IBM 1410 Console Switch Receiver Component
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

entity IBM1410_CONSOLE_SWITCHES_RECEIVER_tb is
--  Port ( );
end IBM1410_CONSOLE_SWITCHES_RECEIVER_tb;

architecture Behavioral of IBM1410_CONSOLE_SWITCHES_RECEIVER_tb is

component IBM1410_CONSOLE_SWITCHES_RECEIVER is
    GENERIC(
       SWITCH_VECTOR_BITS: INTEGER := 200
       );
    Port ( FPGA_CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           SWITCH_FIFO_WRITE_ENABLE : in STD_LOGIC;
           SWITCH_FIFO_WRITE_DATA : in STD_LOGIC_VECTOR (7 downto 0);
           SWITCH_VECTOR : out STD_LOGIC_VECTOR (SWITCH_VECTOR_BITS-1 downto 0));
end component;

constant SWITCH_VECTOR_BITS: INTEGER := 21;

signal FPGA_CLK: STD_LOGIC := '0';
signal RESET: STD_LOGIC := '0';
signal SWITCH_VECTOR: STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0) := "000000000000000000000";
signal FIFO_WRITE_ENABLE: STD_LOGIC := '0';
signal FIFO_WRITE_DATA: STD_LOGIC_VECTOR (7 downto 0) := "00000000";

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;    

procedure checkSwitches(
   checked: in STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0);
   val: in STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0);
   testname: in string;
   test: in string) is
   begin
      for thebit in 0 to SWITCH_VECTOR_BITS-1 loop
         assert checked(thebit) = val(thebit) report
            testname & " (" & test & ") bit " & Integer'image(thebit) & " failed." severity failure; 
       end loop;
    end procedure;
         
   
begin

UUT: IBM1410_CONSOLE_SWITCHES_RECEIVER 
    GENERIC MAP(
       SWITCH_VECTOR_BITS => SWITCH_VECTOR_BITS
       )
    Port Map ( FPGA_CLK => FPGA_CLK,
           RESET => RESET,
           SWITCH_FIFO_WRITE_ENABLE => FIFO_WRITE_ENABLE,
           SWITCH_FIFO_WRITE_DATA => FIFO_WRITE_DATA,
           SWITCH_VECTOR => SWITCH_VECTOR
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

uut_prociess: process

   variable testName: string(1 to 18);
   
   begin
   
   testName := "1410 SWITCHES     ";
   
   -- Initial reaset
   RESET <= '1';
   wait for 30 ns;
   RESET <= '0';
   wait for 30 ns;
   
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"RESET A");
   wait for 10 ns;
   
   FIFO_WRITE_DATA <= "01010101";
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;
   
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"First Test Byte 1");

   FIFO_WRITE_DATA <= "10101010";
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;
   
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"First Test Byte 2");

   FIFO_WRITE_DATA <= "11110000";
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;
   
   checkswitches(SWITCH_VECTOR,"101010101010101110000",testname,"First Test Byte 3");

   -- Second Test
   
   
   FIFO_WRITE_DATA <= "11001100";
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;
   
   checkswitches(SWITCH_VECTOR,"101010101010101110000",testname,"Second Test Byte 1");

   FIFO_WRITE_DATA <= "00110011";
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;
   
   checkswitches(SWITCH_VECTOR,"101010101010101110000",testname,"Second Test Byte 2");

   FIFO_WRITE_DATA <= "00001111";
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;
   
   checkswitches(SWITCH_VECTOR,"100110001100110001111",testname,"First Test Byte 3");

   assert false report "Simulation ended SUCCESSFULLY" severity failure;
   
   end process;

end Behavioral;
