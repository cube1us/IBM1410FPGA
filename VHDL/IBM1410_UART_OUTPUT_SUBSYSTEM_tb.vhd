----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 03/21/2022 08:25:08 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_UART_OUTPUT_SUBSYSTEM_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench for the UART output side interface between the  
--    IBM 1410 and the PC Support Program
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

entity IBM1410_UART_OUTPUT_SUBSYSTEM_tb is
   Port (
      CLK: in STD_LOGIC
   );
end IBM1410_UART_OUTPUT_SUBSYSTEM_tb;

architecture Behavioral of IBM1410_UART_OUTPUT_SUBSYSTEM_tb is

   component IBM1410_UART_OUTPUT_SUBSYSTEM is
    Generic (
       UART_OUTPUT_CLKS_PER_BIT: integer := 100000000 / 115200
    );
    Port ( FPGA_CLK : in STD_LOGIC;
           UART_RESET: in STD_LOGIC;
           UART_OUTPUT_REQUESTER_STROBES : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_0 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_1 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_2 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_3 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_4 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_5 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_6 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_7 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_ARBITER_REQUESTS : out STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_TX_DATA : out STD_LOGIC);
   end component;
   
   constant UART_OUTPUT_CLKS_PER_BIT: integer := 100000000 / 115200;

   -- Inputs
   
   signal FPGA_CLK: STD_LOGIC := '0';
   signal UART_RESET: STD_LOGIC := '0';
   signal UART_OUTPUT_REQUESTER_STROBES: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_0: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_1: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_2: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_3: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_4: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_5: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_6: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_REQUEST_DATA_7: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UART_OUTPUT_ARBITER_REQUESTS: STD_LOGIC_VECTOR (7 downto 0);
   signal UART_OUTPUT_TX_DATA: STD_LOGIC;   

begin

   UUT: IBM1410_UART_OUTPUT_SUBSYSTEM
      Generic map (
         UART_OUTPUT_CLKS_PER_BIT => UART_OUTPUT_CLKS_PER_BIT
      )
    Port map (
       FPGA_CLK => FPGA_CLK,
       UART_RESET => UART_RESET,
       UART_OUTPUT_REQUESTER_STROBES => UART_OUTPUT_REQUESTER_STROBES,
       UART_OUTPUT_REQUEST_DATA_0 => UART_OUTPUT_REQUEST_DATA_0,
       UART_OUTPUT_REQUEST_DATA_1 => UART_OUTPUT_REQUEST_DATA_1,
       UART_OUTPUT_REQUEST_DATA_2 => UART_OUTPUT_REQUEST_DATA_2,
       UART_OUTPUT_REQUEST_DATA_3 => UART_OUTPUT_REQUEST_DATA_3,
       UART_OUTPUT_REQUEST_DATA_4 => UART_OUTPUT_REQUEST_DATA_4,
       UART_OUTPUT_REQUEST_DATA_5 => UART_OUTPUT_REQUEST_DATA_5,
       UART_OUTPUT_REQUEST_DATA_6 => UART_OUTPUT_REQUEST_DATA_6,
       UART_OUTPUT_REQUEST_DATA_7 => UART_OUTPUT_REQUEST_DATA_7,
       UART_OUTPUT_ARBITER_REQUESTS => UART_OUTPUT_ARBITER_REQUESTS,
       UART_OUTPUT_TX_DATA => UART_OUTPUT_TX_DATA
    );


fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;
   
uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   UART_RESET <= '1';
   wait for 5 us;
   UART_RESET <= '0';
   wait for 5 us;
   
   UART_OUTPUT_REQUEST_DATA_7 <= "00110001";
   wait for 10 ns;
   UART_OUTPUT_REQUESTER_STROBES <= "10000000";
   wait for 5 us;
   UART_OUTPUT_REQUESTER_STROBES <= "00000000";
   wait until UART_OUTPUT_ARBITER_REQUESTS(7) = '1';
   wait until UART_OUTPUT_ARBITER_REQUESTS(7) = '0';
   
   UART_OUTPUT_REQUEST_DATA_7 <= "00110010";
   wait for 10 ns;
   UART_OUTPUT_REQUESTER_STROBES <= "10000000";
   wait for 5 us;
   UART_OUTPUT_REQUESTER_STROBES <= "00000000";
   wait until UART_OUTPUT_ARBITER_REQUESTS(7) = '1';
   wait until UART_OUTPUT_ARBITER_REQUESTS(7) = '0';
   wait for 5 ms;  -- Give UART a chance to finish

   -- Now test simultaneous requests

   UART_OUTPUT_REQUEST_DATA_7 <= "00110011";
   UART_OUTPUT_REQUEST_DATA_6 <= "00110100";
   wait for 10 ns;
   UART_OUTPUT_REQUESTER_STROBES <= "11000000";
   wait for 5 us;
   UART_OUTPUT_REQUESTER_STROBES <= "00000000";
   wait until UART_OUTPUT_ARBITER_REQUESTS(7) = '1';
   wait until UART_OUTPUT_ARBITER_REQUESTS(7) = '0';
   wait until UART_OUTPUT_ARBITER_REQUESTS(6) = '0';
   
   wait for 5 ms;  -- Give UART a chance to finish

   
   assert false report "Simulation Ended NORMALLY" severity failure;
   wait;
 
   end process;

end Behavioral;
