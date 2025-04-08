----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/13/2022 09:43:39 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_SWITCH_DECODER_LONG - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Rotary switches can really only be in one position at a time.
--   Without something like this, synthesis gets messed up trying to deal with
--   lots of impossible possiblities.
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

entity IBM1410_SWITCH_DECODER_LONG is
    Port ( SWITCH_VECTOR_IN : in STD_LOGIC_VECTOR (12 downto 0);
           SWITCH_VECTOR_OUT : out STD_LOGIC_VECTOR (12 downto 0));
end IBM1410_SWITCH_DECODER_LONG;

architecture Behavioral of IBM1410_SWITCH_DECODER_LONG is

begin

   SWITCH_VECTOR_OUT <=
      "0000000000001" when SWITCH_VECTOR_IN(0) = '1' else
      "0000000000010" when SWITCH_VECTOR_IN(1) = '1' else
      "0000000000100" when SWITCH_VECTOR_IN(2) = '1' else
      "0000000001000" when SWITCH_VECTOR_IN(3) = '1' else
      "0000000010000" when SWITCH_VECTOR_IN(4) = '1' else
      "0000000100000" when SWITCH_VECTOR_IN(5) = '1' else
      "0000001000000" when SWITCH_VECTOR_IN(6) = '1' else
      "0000010000000" when SWITCH_VECTOR_IN(7) = '1' else
      "0000100000000" when SWITCH_VECTOR_IN(8) = '1' else
      "0001000000000" when SWITCH_VECTOR_IN(9) = '1' else
      "0010000000000" when SWITCH_VECTOR_IN(10) = '1' else
      "0100000000000" when SWITCH_VECTOR_IN(11) = '1' else
      "1000000000000" when SWITCH_VECTOR_IN(12) = '1' else
      "0000000000000";

end Behavioral;
