-- Single-Port Block RAM_INIT Write-First Mode (recommended template)
--
-- File: IBM1410_10K_RAM_INIT.vhdl
--
-- Revised 6/12/2023 to True dual port (two write processes) RAM
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IBM1410_10K_RAM_INIT is
   port(
   clka : in std_logic;
   wea : in std_logic;
   ena : in std_logic;
   addra : in std_logic_vector(13 downto 0);
   dia : in std_logic_vector(7 downto 0);
   doa : out std_logic_vector(7 downto 0);
   clkb : in std_logic;
   web : in std_logic;
   enb : in std_logic;
   addrb : in std_logic_vector(13 downto 0);
   dib : in std_logic_vector(7 downto 0);
   dob : out std_logic_vector(7 downto 0) );
end IBM1410_10K_RAM_INIT;

architecture behavioral of IBM1410_10K_RAM_INIT is
  type RAM_INIT_type is array (9999 downto 0) of std_logic_vector(7 downto 0);
  shared variable RAM_INIT : RAM_INIT_type := (
     -- => X"5B", 2 => X"8A", 3 => X"8A", 4 => X"8A", 5 => X"8A",
     -- 6 => X"08", 7 => X"E5", 8 => X"3B", 9 => X"FB",
     1 => X"64", 2 => X"1C", 3 => X"13", 4 => X"8A", 
     5 => X"8A", 6 => X"8A", 7 => X"8A", 8 => X"02",
     9 => X"8A", 10 => X"16", 11 => X"FB", 12 => X"FB",
     20 => X"38", 21 => X"B5", 22 => X"23", 23 => X"23",
     24 => X"26", 25 => X"7F", 
     others => X"80");
 
attribute RAM_INIT_style: string;
attribute RAM_INIT_style of RAM_INIT : variable is "block";

begin
   process(clka)
   begin
      if clka'event and clka = '1' then
         if ena = '1' then
            if wea = '1' then
               RAM_INIT(to_integer(unsigned(addra))) := dia;
               doa <= dia;
            else
               doa <= RAM_INIT(to_integer(unsigned(addra)));
            end if;
         end if;
      end if;
   end process;

   process(clkb)
   begin
      if clkb'event and clkb = '1' then
         if enb = '1' then
            if web = '1' then
               RAM_INIT(to_integer(unsigned(addrb))) := dib;
               dob <= dib;
            else
               dob <= RAM_INIT(to_integer(unsigned(addrb)));
            end if;
         end if;
      end if;
   end process;
end behavioral;