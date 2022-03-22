----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2022 07:50:18 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_UART_OUTPUT_MUX - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Multiplexes data from several possible sources (console, tape, disk, unit record,
--   lights) to place onto the UART FIFO queue based on the grant vector.
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

entity IBM1410_UART_OUTPUT_MUX is
    Port ( UART_OUTPUT_ARBITER_GRANTS : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_0 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_1 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_2 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_3 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_4 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_5 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_6 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_DATA_7 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_MUX_OUT : out STD_LOGIC_VECTOR (7 downto 0));
end IBM1410_UART_OUTPUT_MUX;

architecture Behavioral of IBM1410_UART_OUTPUT_MUX is

begin

-- Each of the UART_DATA_# signal busses represents one possible source for data.  
-- send out the data for the one which is currently granted access.

-- Only ONE grant line should be active at any one time. 

UART_OUTPUT_MUX_OUT <=
   UART_OUTPUT_DATA_7 when UART_OUTPUT_ARBITER_GRANTS(7) = '1' else
   UART_OUTPUT_DATA_6 when UART_OUTPUT_ARBITER_GRANTS(6) = '1' else
   UART_OUTPUT_DATA_5 when UART_OUTPUT_ARBITER_GRANTS(5) = '1' else
   UART_OUTPUT_DATA_4 when UART_OUTPUT_ARBITER_GRANTS(4) = '1' else
   UART_OUTPUT_DATA_3 when UART_OUTPUT_ARBITER_GRANTS(3) = '1' else
   UART_OUTPUT_DATA_2 when UART_OUTPUT_ARBITER_GRANTS(2) = '1' else
   UART_OUTPUT_DATA_1 when UART_OUTPUT_ARBITER_GRANTS(1) = '1' else
   UART_OUTPUT_DATA_0 when UART_OUTPUT_ARBITER_GRANTS(0) = '1' else
   "00000000";

end Behavioral;
