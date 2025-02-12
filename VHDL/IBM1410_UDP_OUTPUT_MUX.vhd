----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2022 07:50:18 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_UDP_OUTPUT_MUX - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Multiplexes data from several possible sources (console, tape, disk, unit record,
--   lights) to place onto the UDP FIFO queue based on the grant vector.   Copied from
--   IBM1410_UART_OUTPUT_MUX
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 1.00 - Copied from IBM1410_UART_OUTPUT_MUX
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

entity IBM1410_UDP_OUTPUT_MUX is
    Port ( UDP_OUTPUT_ARBITER_GRANTS : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_FLUSHES        : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_0         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_1         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_2         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_3         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_4         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_5         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_6         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_DATA_7         : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_MUX_OUT        : out STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_MUX_FLUSH_OUT  : out STD_LOGIC);
end IBM1410_UDP_OUTPUT_MUX;

architecture Behavioral of IBM1410_UDP_OUTPUT_MUX is

begin

-- Each of the UART_DATA_# signal busses represents one possible source for data.  
-- send out the data for the one which is currently granted access.

-- Only ONE grant line should be active at any one time. 

UDP_OUTPUT_MUX_OUT <=
   UDP_OUTPUT_DATA_7 when UDP_OUTPUT_ARBITER_GRANTS(7) = '1' else
   UDP_OUTPUT_DATA_6 when UDP_OUTPUT_ARBITER_GRANTS(6) = '1' else
   UDP_OUTPUT_DATA_5 when UDP_OUTPUT_ARBITER_GRANTS(5) = '1' else
   UDP_OUTPUT_DATA_4 when UDP_OUTPUT_ARBITER_GRANTS(4) = '1' else
   UDP_OUTPUT_DATA_3 when UDP_OUTPUT_ARBITER_GRANTS(3) = '1' else
   UDP_OUTPUT_DATA_2 when UDP_OUTPUT_ARBITER_GRANTS(2) = '1' else
   UDP_OUTPUT_DATA_1 when UDP_OUTPUT_ARBITER_GRANTS(1) = '1' else
   UDP_OUTPUT_DATA_0 when UDP_OUTPUT_ARBITER_GRANTS(0) = '1' else
   "00000000";

UDP_OUTPUT_MUX_FLUSH_OUT <=
    UDP_OUTPUT_FLUSHES(7) when UDP_OUTPUT_ARBITER_GRANTS(7) = '1' else
    UDP_OUTPUT_FLUSHES(6) when UDP_OUTPUT_ARBITER_GRANTS(6) = '1' else
    UDP_OUTPUT_FLUSHES(5) when UDP_OUTPUT_ARBITER_GRANTS(5) = '1' else
    UDP_OUTPUT_FLUSHES(4) when UDP_OUTPUT_ARBITER_GRANTS(4) = '1' else
    UDP_OUTPUT_FLUSHES(3) when UDP_OUTPUT_ARBITER_GRANTS(3) = '1' else
    UDP_OUTPUT_FLUSHES(2) when UDP_OUTPUT_ARBITER_GRANTS(2) = '1' else
    UDP_OUTPUT_FLUSHES(1) when UDP_OUTPUT_ARBITER_GRANTS(1) = '1' else
    UDP_OUTPUT_FLUSHES(0) when UDP_OUTPUT_ARBITER_GRANTS(0) = '1' else
    '0';

end Behavioral;
