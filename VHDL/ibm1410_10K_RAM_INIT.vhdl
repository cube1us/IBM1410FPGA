-- Single-Port Block RAM_INIT Write-First Mode (recommended template)
--
-- File: IBM1410_10K_RAM_INIT.vhdl
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IBM1410_10K_RAM_INIT is
   port(
   clk : in std_logic;
   we : in std_logic;
   en : in std_logic;
   addr : in std_logic_vector(13 downto 0);
   di : in std_logic_vector(7 downto 0);
   do : out std_logic_vector(7 downto 0) );
end IBM1410_10K_RAM_INIT;

architecture behavioral of IBM1410_10K_RAM_INIT is
  type RAM_INIT_type is array (9999 downto 0) of std_logic_vector(7 downto 0);
  signal RAM_INIT : RAM_INIT_type := (
     -- 1 => X"5B", 2 => X"8A", 3 => X"8A", 4 => X"8A", 5 => X"8A",
     -- 6 => X"08", 7 => X"E5", 8 => X"3B", 9 => X"FB",
     1 => X"64", 2 => X"1C", 3 => X"13", 4 => X"8A", 
     5 => X"8A", 6 => X"8A", 7 => X"8A", 8 => X"02",
     9 => X"8A", 10 => X"16", 11 => X"FB", 12 => X"FB",
     20 => X"38", 21 => X"B5", 22 => X"23", 23 => X"23",
     24 => X"26", 25 => X"7F", 
     others => X"80");
 
attribute RAM_INIT_style: string;
attribute RAM_INIT_style of RAM_INIT : signal is "block";

begin
   process(clk)
   begin
      if clk'event and clk = '1' then
         if en = '1' then
            if we = '1' then
               RAM_INIT(to_integer(unsigned(addr))) <= di;
               do <= di;
            else
               do <= RAM_INIT(to_integer(unsigned(addr)));
            end if;
         end if;
      end if;
   end process;
end behavioral;