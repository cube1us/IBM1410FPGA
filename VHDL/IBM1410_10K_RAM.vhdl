-- Single-Port Block RAM Write-First Mode (recommended template)
--
-- File: IBM1410_10K_RAM.vhdl
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IBM1410_10K_RAM is
   port(
   clk : in std_logic;
   we : in std_logic;
   en : in std_logic;
   addr : in std_logic_vector(13 downto 0);
   di : in std_logic_vector(7 downto 0);
   do : out std_logic_vector(7 downto 0) );
end IBM1410_10K_RAM;

architecture behavioral of IBM1410_10K_RAM is
  type ram_type is array (9999 downto 0) of std_logic_vector(7 downto 0);
  signal RAM : ram_type := (others => X"80");

begin
   process(clk)
   begin
      if clk'event and clk = '1' then
         if en = '1' then
            if we = '1' then
               RAM(to_integer(unsigned(addr))) <= di;
               do <= di;
            else
               do <= RAM(to_integer(unsigned(addr)));
            end if;
         end if;
      end if;
   end process;
end behavioral;