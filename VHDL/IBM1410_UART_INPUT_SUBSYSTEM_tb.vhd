----------------------------------------------------------------------------------
-- Company: The Computer Collection 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/03/2022 03:54:32 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_UART_INPUT_SUBSYSTEM_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench for the IBM 1410 UART Input subsystem - for data that
--    originates from the support PC and is sent to the 1410 FPGA implementation.
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

entity IBM1410_UART_INPUT_SUBSYSTEM_tb is
--  Port ( );
end IBM1410_UART_INPUT_SUBSYSTEM_tb;

architecture Behavioral of IBM1410_UART_INPUT_SUBSYSTEM_tb is

component IBM1410_UART_INPUT_SUBSYSTEM is
    GENERIC (
       CLOCKS_PER_BIT: Integer := 115;
       UART_INPUT_FIFO_COUNT: Integer := 8
       );
    Port ( 
       FPGA_CLK: in STD_LOGIC;
       RESET: in STD_LOGIC;
       UART_RCV_DATA_VALID : in STD_LOGIC;
       UART_RCV_DATA : in STD_LOGIC_VECTOR (7 downto 0);
       UART_INPUT_FIFO_WRITE_ENABLE : out STD_LOGIC_VECTOR (UART_INPUT_FIFO_COUNT-1 downto 0);
       UART_INPUT_FIFO_WRITE_DATA: out STD_LOGIC_VECTOR(7 downto 0) 
       );
end component;

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


constant FIFO_COUNT: INTEGER := 8;
constant SWITCH_VECTOR_BITS: INTEGER := 21;

signal FPGA_CLK: STD_LOGIC := '0';
signal RESET: STD_LOGIC := '0';
signal UART_RCV_DATA_VALID: STD_LOGIC := '0';
signal UART_RCV_DATA: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal FIFO_WRITE_ENABLES: STD_LOGIC_VECTOR (FIFO_COUNT-1 downto 0) := (others => '0');
signal FIFO_WRITE_DATA: STD_LOGIC_VECTOR(7 downto 0);
signal SWITCH_VECTOR: STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0) := "000000000000000000000";

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;    

procedure checkFIFOVector(
   checked: in STD_LOGIC_VECTOR(FIFO_COUNT-1 downto 0);
   val: in STD_LOGIC_VECTOR(FIFO_COUNT-1 downto 0);
   testname: in string;
   test: in string) is
   begin
      for thebit in 0 to FIFO_COUNT-1 loop
         assert checked(thebit) = val(thebit) report
            testname & " (" & test & ") FIFO bit " & Integer'image(thebit) & " failed." severity failure; 
       end loop;
    end procedure;

procedure checkDataVector(
   checked: in STD_LOGIC_VECTOR(7 downto 0);
   val: in STD_LOGIC_VECTOR(7 downto 0);
   testname: in string;
   test: in string) is
   begin
      for thebit in 0 to 7 loop
         assert checked(thebit) = val(thebit) report
            testname & " (" & test & ") Data bit " & Integer'image(thebit) & " failed." severity failure; 
       end loop;
    end procedure;
    
procedure checkSwitches(
   checked: in STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0);
   val: in STD_LOGIC_VECTOR(SWITCH_VECTOR_BITS-1 downto 0);
   testname: in string;
   test: in string) is
   begin
      for thebit in 0 to SWITCH_VECTOR_BITS-1 loop
         assert checked(thebit) = val(thebit) report
            testname & " (" & test & ") Switches bit " & Integer'image(thebit) & " failed." severity failure; 
       end loop;
    end procedure;


begin

UUT: IBM1410_UART_INPUT_SUBSYSTEM
    GENERIC MAP (
       CLOCKS_PER_BIT => 115,
       UART_INPUT_FIFO_COUNT => FIFO_COUNT
       )
    Port Map ( 
       FPGA_CLK => FPGA_CLK,
       RESET => RESET,
       UART_RCV_DATA_VALID => UART_RCV_DATA_VALID,
       UART_RCV_DATA => UART_RCV_DATA,
       UART_INPUT_FIFO_WRITE_ENABLE => FIFO_WRITE_ENABLES,
       UART_INPUT_FIFO_WRITE_DATA => FIFO_WRITE_DATA 
       );

UUT2: IBM1410_CONSOLE_SWITCHES_RECEIVER 
    GENERIC MAP(
       SWITCH_VECTOR_BITS => SWITCH_VECTOR_BITS
       )
    Port Map ( FPGA_CLK => FPGA_CLK,
           RESET => RESET,
           SWITCH_FIFO_WRITE_ENABLE => FIFO_WRITE_ENABLES(0),
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
   
   testName := "1410 INPUTS       ";
   
   -- Initial reaset
   RESET <= '1';
   wait for 30 ns;
   RESET <= '0';
   wait for 30 ns;
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"RESET A");
   checkDataVector(FIFO_WRITE_DATA,"UUUUUUUU",testname,"RESET B");
   
   -- Send a non flag garbage byte.  Nothing should change.
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "00001111";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"1st Garbage Enables");
   checkDataVector(FIFO_WRITE_DATA,"00001111",testname,"1st Garbage Data");
   
   -- Next, send a flag byte of 1000111 and see that the right thing happens, which
   -- is actually nothing at this point as well.
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "10000111";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 7 Early Enable");
   checkDataVector(FIFO_WRITE_DATA,"00001111",testname,"Flag 7 Early Data");

   -- Now, receive a data byte for subsystem #7      
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "00011100";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"10000000",testname,"Flag 7 Enable");
   checkDataVector(FIFO_WRITE_DATA,"00011100",testname,"Flag 7 Data");
   
   -- Now, that enable should be gone

   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';

   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 7 Post Enable");
   checkDataVector(FIFO_WRITE_DATA,"00011100",testname,"Flag 7 Post Enable Data");
   
   -- Now, receive a second data byte for subsystem #7      
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "01111110";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"10000000",testname,"Flag 7 Enable 2");
   checkDataVector(FIFO_WRITE_DATA,"01111110",testname,"Flag 7 Data 2");
   
   -- Now, that enable should be gone

   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';

   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 7 Post Enable");
   checkDataVector(FIFO_WRITE_DATA,"01111110",testname,"Flag 7 Post Enable Data");

   -- Now do it for Subsystem 0 - Switches
   
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"RESET Switches");
   
   -- Next, send a flag byte of 1000000 and see that the right thing happens, which
   -- is actually nothing at this point as well.
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "10000000";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 0 Early Enable");
   checkDataVector(FIFO_WRITE_DATA,"01111110",testname,"Flag 0 Early Data");
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"Flag 0 Early Switches");

   -- Now, receive a data byte for subsystem #0      
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "01100011";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000001",testname,"Flag 0 Enable");
   checkDataVector(FIFO_WRITE_DATA,"01100011",testname,"Flag 0 Data");
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"Flag 0 First Byte Switches A");
   
   
   -- Now, that enable should be gone

   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';

   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 0 Post Enable");
   checkDataVector(FIFO_WRITE_DATA,"01100011",testname,"Flag 7 Post Enable Data");
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"Flag 0 First Byte Switches B");
   
   -- Now, receive a second data byte for subsystem #0      
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "01010101";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000001",testname,"Flag 0 Enable 2");
   checkDataVector(FIFO_WRITE_DATA,"01010101",testname,"Flag 0 Data 2");
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"Flag 0 Second Byte Switches A");

   
   -- Now, that enable should be gone

   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';

   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 0 Post Enable 2");
   checkDataVector(FIFO_WRITE_DATA,"01010101",testname,"Flag 0 Post Enable Data 2");
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"Flag 0 Second Byte Switches B");
   

   -- Now, receive a third data byte for subsystem #0      
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA <= "00111100";
   UART_RCV_DATA_VALID <= '1';
   
   wait until FPGA_CLK = '1'; -- UART data reaches input subsystem
   wait until FPGA_CLK = '0';
   
   UART_RCV_DATA_VALID <= '0';
   UART_RCV_DATA <= "00000000";
   
   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';
   
   checkFIFOVector(FIFO_WRITE_ENABLES,"00000001",testname,"Flag 0 Enable 3");
   checkDataVector(FIFO_WRITE_DATA,"00111100",testname,"Flag 0 Data 3");
   checkswitches(SWITCH_VECTOR,"UUUUUUUUUUUUUUUUUUUUU",testname,"Flag 0 Third Byte Switches A");

   -- Now, that enable should be gone

   wait until FPGA_CLK = '1';
   wait until FPGA_CLK = '0';

   checkFIFOVector(FIFO_WRITE_ENABLES,"00000000",testname,"Flag 0 Post Enable 3");
   checkDataVector(FIFO_WRITE_DATA,"00111100",testname,"Flag 0 Post Enable Data 3");

   -- After a bit, the switches should be set.

   wait for 40 ns;
   
   checkswitches(SWITCH_VECTOR,"110001110101010111100",testname,"Flag 0 Third Byte Switches B");
     
   assert false report "Test completed SUCCESSFULLY" severity failure;
   
end process;

end Behavioral;
