----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 12/4/2020 8:15PM
-- Design Name: IBM1410
-- Module Name: MemoryAddressDecode - Behavioral
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
-- use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MemoryAddressDecode is
    Port ( 
        UPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        TPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        HPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        THPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        ADDR:  OUT STD_LOGIC_VECTOR(13 downto 0));
end MemoryAddressDecode;

architecture Behavioral of MemoryAddressDecode is

constant TwoOfFive0: STD_LOGIC_VECTOR(4 downto 0) := "10100"; 
constant TwoOfFive1: STD_LOGIC_VECTOR(4 downto 0) := "00011"; 
constant TwoOfFive2: STD_LOGIC_VECTOR(4 downto 0) := "00101"; 
constant TwoOfFive3: STD_LOGIC_VECTOR(4 downto 0) := "00110"; 
constant TwoOfFive4: STD_LOGIC_VECTOR(4 downto 0) := "01001"; 
constant TwoOfFive5: STD_LOGIC_VECTOR(4 downto 0) := "01010"; 
constant TwoOfFive6: STD_LOGIC_VECTOR(4 downto 0) := "01100"; 
constant TwoOfFive7: STD_LOGIC_VECTOR(4 downto 0) := "11000"; 
constant TwoOfFive8: STD_LOGIC_VECTOR(4 downto 0) := "10001"; 
constant TwoOfFive9: STD_LOGIC_VECTOR(4 downto 0) := "10010"; 

signal UPOSNUM: STD_LOGIC_VECTOR(13 downto 0);
signal TPOSNUM: STD_LOGIC_VECTOR(13 downto 0);
signal HPOSNUM: STD_LOGIC_VECTOR(13 downto 0);
signal THPOSNUM: STD_LOGIC_VECTOR(13 downto 0);
 
 
begin

   with UPOS select
      UPOSNUM <= "00000000000000" when TwoOfFive0,
         "00000000000001" when TwoOfFive1,
         "00000000000010" when TwoOfFive2,
         "00000000000011" when TwoOfFive3,
         "00000000000100" when TwoOfFive4,
         "00000000000101" when TwoOfFive5,
         "00000000000110" when TwoOfFive6,
         "00000000000111" when TwoOfFive7,
         "00000000001000" when TwoOfFive8,
         "00000000001001" when TwoOfFive9,
         "11000000000000" when others;

   with TPOS select
      TPOSNUM <= "00000000000000" when TwoOfFive0,
         "00000000001010" when TwoOfFive1,
         "00000000010100" when TwoOfFive2,
         "00000000011110" when TwoOfFive3,
         "00000000101000" when TwoOfFive4,
         "00000000110010" when TwoOfFive5,
         "00000000111100" when TwoOfFive6,
         "00000001000110" when TwoOfFive7,
         "00000001010000" when TwoOfFive8,
         "00000001011010" when TwoOfFive9,
         "11000011110000" when others;

   with HPOS select
      HPOSNUM <= "00000000000000" when TwoOfFive0,
         "00000001100100" when TwoOfFive1,
         "00000011001000" when TwoOfFive2,
         "00000100101100" when TwoOfFive3,
         "00000110010000" when TwoOfFive4,
         "00000111110100" when TwoOfFive5,
         "00001001011000" when TwoOfFive6,
         "00001010111100" when TwoOfFive7,
         "00001100100000" when TwoOfFive8,
         "00001110000100" when TwoOfFive9,
         "11000000000000" when others;

   with THPOS select
      THPOSNUM <= "00000000000000" when TwoOfFive0,
         "00001111101000" when TwoOfFive1,
         "00011111010000" when TwoOfFive2,
         "00101110111000" when TwoOfFive3,
         "00111110100000" when TwoOfFive4,
         "01001110001000" when TwoOfFive5,
         "01011101110000" when TwoOfFive6,
         "01101101011000" when TwoOfFive7,
         "01111101000000" when TwoOfFive8,
         "10001100101000" when TwoOfFive9,
         "11000000000000" when others;

   ADDR <= THPOSNUM + TPOSNUM + HPOSNUM + UPOSNUM;

end;