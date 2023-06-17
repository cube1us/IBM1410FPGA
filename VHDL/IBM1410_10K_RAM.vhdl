-- Single-Port Block RAM Write-First Mode (recommended template)
--
-- File: IBM1410_10K_RAM.vhdl
--
-- Revised 6/12/2023: True Dual port to support stuff like memory load and dump
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IBM1410_10K_RAM is
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
   
end IBM1410_10K_RAM;

architecture behavioral of IBM1410_10K_RAM is
  type ram_type is array (9999 downto 0) of std_logic_vector(7 downto 0);
  shared variable RAM : ram_type := (others => X"80");

attribute RAM_style: string;
attribute RAM_style of RAM: variable is "block";

begin
   
   process(clka)
   begin
      if clka'event and clka = '1' then
         if ena = '1' then
            if wea = '1' then
               RAM(to_integer(unsigned(addra))) := dia;
               doa <= dia;
            else
               doa <= RAM(to_integer(unsigned(addra)));
            end if;
         end if;
      end if;
   end process;

   process(clkb)
   begin
      if clkb'event and clkb = '1' then
         if enb = '1' then
            if web = '1' then
               RAM(to_integer(unsigned(addrb))) := dib;
               dob <= dib;
            else
               dob <= RAM(to_integer(unsigned(addrb)));
            end if;
         end if;
      end if;
   end process;

end behavioral;