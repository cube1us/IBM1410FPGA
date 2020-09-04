----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 09/04/2020 
-- Design Name: IBM1410
-- Module Name: SMS_DHP_A - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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

entity SMS_DHP_A is
    Port ( 
        IN1:   IN STD_LOGIC;
        IN2:   IN STD_LOGIC := '0';
        OUT1:  OUT STD_LOGIC );
end SMS_DHP_A;

architecture Behavioral of SMS_DHP_A is

begin

	OUT1 <= (NOT IN1) OR IN2;

end;