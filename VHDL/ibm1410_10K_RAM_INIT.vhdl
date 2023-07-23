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
  
     -- 1 => X"5B", 2 => X"8A", 3 => X"8A", 4 => X"8A", 5 => X"8A",
     -- 6 => X"08", 7 => X"E5", 8 => X"3B", 9 => X"FB",
     
     -- HE LO TYPEOUT
     -- 1 => X"64", 2 => X"1C", 3 => X"13", 4 => X"8A",  
     -- 5 => X"8A", 6 => X"8A", 7 => X"8A", 8 => X"02",
     -- 9 => X"8A", 10 => X"16", 11 => X"FB", 12 => X"FB",
     -- 20 => X"38", 21 => X"B5", 22 => X"80", 23 => X"23",
     -- 24 => X"26", 25 => X"7F",
     
     -- Simple subtract test:  1 -2 ==> -1
     -- 1 => X"52", 2 => X"8A", 3 => X"8A", 4 => X"8A", 5 => X"04",
     -- 6 => X"8A", 7 => X"8A", 8 => X"8A", 9=> X"8A", 10 => X"02",
     -- 11 => X"85", 12 => X"FB", 13 => X"FB",
     -- 15 => X"4A", 16 => X"8A", 17 => X"8A", 18 => X"8A", 19 => X"8A",
     -- 20 => X"8A", 21 => X"8A", 22 => X"8A", 23 => X"8A", 24 => X"4A",  -- 24 was 8A
     -- 25 => X"31", 26 => X"8A", 27 => X"8A", 28 => X"8A", 29 => X"8A",
     -- 30 => X"4A", 31 => X"8A", 32 => X"8A", 33 => X"8A", 34 => X"8A",
     -- 35 => X"8A", 36 => X"8A", 37 => X"8A", 38 => X"8A", 39 => X"4A",  -- 39 was 8A
     -- 40 => X"32",
     
     -- Simple Add test:  -1 +2 ==> +1
     -- 1 => X"F1", 2 => X"8A", 3 => X"8A", 4 => X"8A", 5 => X"04",
     -- 6 => X"8A", 7 => X"8A", 8 => X"8A", 9=> X"8A", 10 => X"02",
     -- 11 => X"85", 12 => X"FB", 13 => X"FB",
     -- 15 => X"4A", 16 => X"8A", 17 => X"8A", 18 => X"8A", 19 => X"8A",
     -- 20 => X"8A", 21 => X"8A", 22 => X"8A", 23 => X"8A", 24 => X"4A",
     -- 25 => X"A1", 26 => X"8A", 27 => X"8A", 28 => X"8A", 29 => X"8A",
     -- 30 => X"4A", 31 => X"8A", 32 => X"8A", 33 => X"8A", 34 => X"8A",
     -- 35 => X"8A", 36 => X"8A", 37 => X"8A", 38 => X"8A", 39 => X"4A",  -- 39 was 8A
     -- 40 => X"32",

     -- 1401 B 020 b Instruction, location 20 now has SAR to location 30 Q 032 or SBR H 032
     
     1 => X"F2", 2 => X"8A", 3 => X"02", 4 => X"8A", 5 => X"80", 6 => X"FB",
     20 => X"68", 21 => X"8A", 22 => X"83", 23 => X"02", 24 => X"FB", 25 => X"FB",  -- F8 == H, 68 == Q
     30 => X"40",
     
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