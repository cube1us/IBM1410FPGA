----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 03/21/2022 08:25:08 AM
-- Design Name: IBM1410
-- Module Name: IBM1410U_UDP_OUTPUT_SUBSYSTEM_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench for the UDP output side interface between the  
--    IBM 1410 and the PC Support Program.  Copied from IBM1410_UART_OUTPUT_SUBSYSTEM_tb
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 1.00 - Copied from IBM1410_UART_OUTPUT_SUBSYSTEM_tb
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

entity IBM1410_UDP_OUTPUT_SUBSYSTEM_tb is
   Port (
      CLK: in STD_LOGIC
   );
end IBM1410_UDP_OUTPUT_SUBSYSTEM_tb;

architecture Behavioral of IBM1410_UDP_OUTPUT_SUBSYSTEM_tb is

   component IBM1410_UDP_OUTPUT_SUBSYSTEM is
    GENERIC (
       SIMULATED_UART: integer := 1
    );
    Port ( FPGA_CLK                     : in STD_LOGIC;
           UDP_RESET                    : in STD_LOGIC;
           UDP_OUTPUT_REQUESTER_STROBES : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUESTER_FLUSHES : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_0    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_1    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_2    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_3    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_4    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_5    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_6    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_7    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_ARBITER_REQUESTS  : out STD_LOGIC_VECTOR(7 downto 0);
           UDP_OUTPUT_ARBITER_GRANTS    : out STD_LOGIC_VECTOR(7 downto 0);
           -- UDP UART-like interface signals
           UDP_UART_TX_ACTIVE           : in STD_LOGIC;
           UDP_UART_TX_DATA_VALID       : out STD_LOGIC;
           UDP_UART_TX_BYTE             : out STD_LOGIC_VECTOR(7 downto 0);
           UDP_UART_TX_FLUSH            : out STD_LOGIC;
           -- Fake serial output from internal uart, for testing
           SERIAL_OUTPUT_TX_DATA : out STD_LOGIC);
   end component;
   
   -- constant UART_OUTPUT_CLKS_PER_BIT: integer := 100000000 / 115200;

   -- Inputs
   
   signal FPGA_CLK: STD_LOGIC := '0';
   signal UDP_RESET: STD_LOGIC := '0';
   signal UDP_OUTPUT_REQUESTER_STROBES: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUESTER_FLUSHES: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_0: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_1: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_2: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_3: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_4: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_5: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_6: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_REQUEST_DATA_7:  STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_ARBITER_REQUESTS : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   signal UDP_OUTPUT_ARBITER_GRANTS: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   
   -- UDP UART-like interface signals
   
   signal UDP_UART_TX_ACTIVE:      STD_LOGIC;
   signal UDP_UART_TX_DATA_VALID:  STD_LOGIC;
   signal UDP_UART_TX_BYTE:        STD_LOGIC_VECTOR(7 downto 0);
   signal UDP_UART_TX_FLUSH:       STD_LOGIC;
   
   -- Simulated UART output for testing
   signal SERIAL_OUTPUT_TX_DATA: STD_LOGIC;   

begin

   UUT: IBM1410_UDP_OUTPUT_SUBSYSTEM
    Generic map (
       SIMULATED_UART => 1
    )
    Port map (
       FPGA_CLK => FPGA_CLK,
       UDP_RESET => UDP_RESET,
       UDP_OUTPUT_REQUESTER_STROBES => UDP_OUTPUT_REQUESTER_STROBES,
       UDP_OUTPUT_REQUESTER_FLUSHES => UDP_OUTPUT_REQUESTER_FLUSHES,
       UDP_OUTPUT_REQUEST_DATA_0 => UDP_OUTPUT_REQUEST_DATA_0,
       UDP_OUTPUT_REQUEST_DATA_1 => UDP_OUTPUT_REQUEST_DATA_1,
       UDP_OUTPUT_REQUEST_DATA_2 => UDP_OUTPUT_REQUEST_DATA_2,
       UDP_OUTPUT_REQUEST_DATA_3 => UDP_OUTPUT_REQUEST_DATA_3,
       UDP_OUTPUT_REQUEST_DATA_4 => UDP_OUTPUT_REQUEST_DATA_4,
       UDP_OUTPUT_REQUEST_DATA_5 => UDP_OUTPUT_REQUEST_DATA_5,
       UDP_OUTPUT_REQUEST_DATA_6 => UDP_OUTPUT_REQUEST_DATA_6,
       UDP_OUTPUT_REQUEST_DATA_7 => UDP_OUTPUT_REQUEST_DATA_7,   
       UDP_OUTPUT_ARBITER_REQUESTS => UDP_OUTPUT_ARBITER_REQUESTS,
       UDP_OUTPUT_ARBITER_GRANTS => UDP_OUTPUT_ARBITER_GRANTS,
       UDP_UART_TX_ACTIVE => UDP_UART_TX_ACTIVE,
       UDP_UART_TX_DATA_VALID => UDP_UART_TX_DATA_VALID,
       UDP_UART_TX_BYTE => UDP_UART_TX_BYTE,
       UDP_UART_TX_FLUSH => UDP_UART_TX_FLUSH,
       SERIAL_OUTPUT_TX_DATA => SERIAL_OUTPUT_TX_DATA
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

   UDP_RESET <= '1';
   wait for 5 us;
   UDP_RESET <= '0';
   wait for 5 us;
   
   UDP_OUTPUT_REQUEST_DATA_7    <= "00110001";
   wait for 10 ns;
   UDP_OUTPUT_REQUESTER_STROBES <= "10000000";
   wait for 5 us;
   UDP_OUTPUT_REQUESTER_STROBES <= "00000000";
   wait until UDP_OUTPUT_ARBITER_REQUESTS (7) = '1';
   wait until UDP_OUTPUT_ARBITER_REQUESTS (7) = '0';
   
   wait for 100 us;
   
   UDP_OUTPUT_REQUEST_DATA_7    <= "00110010";
   wait for 10 ns;
   UDP_OUTPUT_REQUESTER_STROBES <= "10000000";
   wait for 5 us;
   UDP_OUTPUT_REQUESTER_STROBES <= "00000000";
   wait until UDP_OUTPUT_ARBITER_REQUESTS (7) = '1';
   wait until UDP_OUTPUT_ARBITER_REQUESTS (7) = '0';
   wait for 100 us;  -- Give UART a chance to finish

   -- Now test simultaneous requests

   UDP_OUTPUT_REQUEST_DATA_7    <= "00110011";
   UDP_OUTPUT_REQUEST_DATA_6 <= "00110100";
   wait for 10 ns;
   UDP_OUTPUT_REQUESTER_STROBES <= "11000000";
   UDP_OUTPUT_REQUESTER_FLUSHES <= "01000000";
   wait for 5 us;
   UDP_OUTPUT_REQUESTER_STROBES <= "00000000";
   wait until UDP_OUTPUT_ARBITER_REQUESTS (7) = '1';
   wait until UDP_OUTPUT_ARBITER_REQUESTS (7) = '0';
   wait until UDP_OUTPUT_ARBITER_REQUESTS (6) = '0';
   
   wait for 100 us;  -- Give UART a chance to finish
   
   UDP_OUTPUT_REQUESTER_FLUSHES <= "00000000";

   
   assert false report "Simulation Ended NORMALLY" severity failure;
   wait;
 
   end process;

end Behavioral;
