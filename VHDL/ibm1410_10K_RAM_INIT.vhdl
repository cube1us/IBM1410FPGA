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
     
     -- 1 => X"F2", 2 => X"8A", 3 => X"02", 4 => X"8A", 5 => X"80", 6 => X"FB",
     -- 20 => X"68", 21 => X"8A", 22 => X"83", 23 => X"02", 24 => X"FB", 25 => X"FB",  -- F8 == H, 68 == Q
     -- 30 => X"40",
     
     -- 1401 NR9R followed by SAR Q020 Followed by two halts
     
     -- 1 => X"E5", 2 => X"29", 3 => X"89", 4 => X"29", 
     -- 5 => X"68", 6 => X"8A", 7 => X"02", 8 => X"8A",
     -- 9 => X"FB", 10 => X"FB",
     
     -- 1401 M?0!020 Q030 . .  With a WM/0 at location 20 so only 1 char is moved.
     -- 1 => X"64", 2 => X"BA", 3 => X"8A", 4 => X"2A", 5 => X"8A", 6 => X"02", 7 => X"8A",
     -- 8 => X"68", 9 => X"8A", 10 => X"83", 11 => X"8A", 12 => X"FB", 13 => X"FB",
     -- 20 => X"4A",
     
     -- 1410/7010 1401 CPU Compatibility Test RN085

     -- 1 => X"F2", 2 => X"86", 3 => X"8A", 4 => X"25", 5 => X"FB", 6 => X"FB",  -- B 8605
     -- 100 => X"FB", 101 => X"FB", 102 => X"FB",    -- OK Halts
     -- 7447 => X"29", 7448 => X"E9", 7449 => X"89", 7450 => X"29", -- (WM)R9R for compare if we need it later. 
     -- 7466 => X"4A", 7467 => X"4A",                               -- Word Mark for Destination of move, D6X, with a "0"
     -- 7468 => X"D9", 7469 => X"89", 7470 => X"29", -- CK1401, destination of SAR/Compare (Start (WM)Z9R
     -- 8605 => X"E5", 8606 => X"86", 8607 => X"01", 8608 => X"23", -- (WM)N 61L   NOP
     -- 8609 => X"68", 8610 => X"8A", 8611 => X"8A", 8612 => X"04", -- (WM)Q 004   SAR 004     
     -- 8613 => X"64", 8614 => X"BA", 8615 => X"8A", 8616 => X"2A", 8617 => X"34", 8618 => X"86", 8619 => X"97", -- Move Op
     -- 8620 => X"68", 8621 => X"34", 8622 => X"07", 8623 => X"1A", -- (WM)QD7(RM) SAR 
     -- 8624 => X"73", 8625 => X"34", 8626 => X"07", 8627 => X"1A", 8628 => X"34", 8629 => X"85", 8630 => X"1A", -- Compare Op
     -- 8631 => X"F2", 8632 => X"01", 8633 => X"8A", 8634 => X"8A", 8635 => X"92", -- B 0100 S
     -- 8636 => X"FB", 8637 => X"FB", 8638 => X"FB",  -- Error halts
     
     -- 1410 / 1401 Compatibility Tests RN111 Overflow, then branch with AADR with "Z" (6899), then branch back
     
     -- 1 => X"F2", 2 => X"29", 3 => X"08", 4 => X"98", 5 => X"FB", 6 => X"FB", -- B 6988
     -- 100 => X"FB", 101 => X"FB", 102 => X"FB",    -- OK Success Halt
     --     1430 => X"4A", 1431 => X"8A", 1432 => X"BA", -- TESAD init to WM 00?
     --     1439 => X"43", 1440 => X"02", 1441 => X"31", -- P321 init to WM 32A 
     --     1445 => X"49", 1446 => X"08", 1447 => X"37", -- P987 init to WM 98G
     --     6988 => X"E3", 6989 => X"94", 6990 => X"04", 6991 => X"07", 6992 => X"94", 6993 => X"83", 6994 => X"02", -- L U47 U32
     --     6995 => X"F1", 6996 => X"94", 6997 => X"04", 6998 => X"01", 6999 => X"94", 7000 => X"83", 7001 => X"02", -- A U41 U32
     --     7002 => X"64", 7003 => X"B9", 7004 => X"8A", 7005 => X"92", 7006 => X"B5", 7007 => X"08", 7008 => X"16", -- M I0S E8W
     --     7009 => X"E3", 7010 => X"B5", 7011 => X"08", 7012 => X"92", 7013 => X"B9", 7014 => X"8A", 7015 => X"92", -- L E8S I0S
     --     7016 => X"F2", 7017 => X"38", 7018 => X"89", 7019 => X"19", -- B H9Z (7899)
     --     7020 => X"64", 7021 => X"B5", 7022 => X"08", 7023 => X"16", 7024 => X"B9", 7025 => X"8A", 7026 => X"92", -- M E8W I0S
     --     7027 => X"F2", 7028 => X"01", 7029 => X"8A", 7030 => X"8A", 7031 => X"19",  -- B T62 Z (BAV - Branch Overflow)
     --     7032 => X"FB", 7033 => X"FB", 7034 => X"FB", -- Error Halts.
     --     7579 => X"F2", 7580 => X"BA", 7581 => X"02", 7582 => X"1A", -- BRBK -- B label BKK == B 7020
     --     7583 => X"40", 7584 => X"80", 7585 => X"80", 7586 => X"80", -- SVINST - WM bbbb
     --     7899 => X"E5", 7900 => X"80", 7901 => X"80", 7902 => X"80", -- Place to install Branch Instruction -- N 000
     
     -- 1410 mode console input test
     
     -- 1 => X"61", 2 => X"8A", 3 => X"8A", 4 => X"8A", 5 => X"01", 6 => X"85", 7 => X"A8", -- 7 => X"A8", -- J 00015 Q  - branch on Inquiry Request
     -- 8 => X"61", 9 => X"8A", 10 => X"8A", 11 => X"8A", 12 => X"8A", 13 => X"01", 14 => X"80",  -- J00001b - branch (no inquiry yet)
     -- 15 => X"64", 16 => X"1C", 17 => X"13", 18 => X"8A", 19 => X"8A", 20 => X"8A", 21 => X"01", 22 => X"8A", -- M %T0 00100 R
     -- 23 => X"8A", 24 => X"29", -- 24 => X"29",  X"16" is "W"      
     -- 25 => X"FB", 26 => X"FB", -- Two halts
     -- 100 => X"40", 101 => X"80", 102 => X"80", 103 => X"80", 104 => X"80", 105 => X"7F",  -- (WM) bbbbb (WM)GM                      

     -- Tape Rewind and Read test
     
     -- Address set to 00000
     -- A_U%U0R_R00013{_M%U001000R_R000132_R002001_R002104_R002208_R00230-_R00065{
     -- See below data for M%U, M%B or L%B
     00000 => X"31", 00001 => X"54", 00002 => X"1C", 00003 => X"94",  -- U is X"54" or X"94"
     00004 => X"8A", 00005 => X"29", 00006 => X"E9", 00007 => X"8A", 
     00008 => X"8A", 00009 => X"8A", 00010 => X"01", 00011 => X"83", 
     00012 => X"BF", 00013 => X"E3", 00014 => X"1C", 00015 => X"32",  -- M is X"64" U is X"94", 
     00016 => X"8A", 00017 => X"8A", 00018 => X"01", 00019 => X"8A", 
     00020 => X"8A", 00021 => X"8A", 00022 => X"29", 00023 => X"E9", 
     00024 => X"8A", 00025 => X"8A", 00026 => X"8A", 00027 => X"01", 
     00028 => X"83", 00029 => X"02", 00030 => X"E9", 00031 => X"8A", 
     00032 => X"8A", 00033 => X"02", 00034 => X"8A", 00035 => X"8A", 
     00036 => X"01", 00037 => X"E9", 00038 => X"8A", 00039 => X"8A", 
     00040 => X"02", 00041 => X"01", 00042 => X"8A", 00043 => X"04", 
     00044 => X"E9", 00045 => X"8A", 00046 => X"8A", 00047 => X"02", 
     00048 => X"02", 00049 => X"8A", 00050 => X"08", 00051 => X"E9", 
     00052 => X"8A", 00053 => X"8A", 00054 => X"02", 00055 => X"83", 
     00056 => X"8A", 00057 => X"20", 00058 => X"E9", 00059 => X"8A", 
     00060 => X"8A", 00061 => X"8A", 00062 => X"86", 00063 => X"85", 
     -- _M%U001000W_R000652_R002001_R002104_R002208_R00230-_R00065{
     -- See below data for M%U, M%B or L%B
     00064 => X"BF", 00065 => X"E3", 00066 => X"1C", 00067 => X"32",  -- M is X"64" U is X"94"
     00068 => X"8A", 00069 => X"8A", 00070 => X"01", 00071 => X"8A", 
     00072 => X"8A", 00073 => X"8A", 00074 => X"16", 00075 => X"E9", 
     00076 => X"8A", 00077 => X"8A", 00078 => X"8A", 00079 => X"86", 
     00080 => X"85", 00081 => X"02", 00082 => X"E9", 00083 => X"8A", 
     00084 => X"8A", 00085 => X"02", 00086 => X"8A", 00087 => X"8A", 
     00088 => X"01", 00089 => X"E9", 00090 => X"8A", 00091 => X"8A", 
     00092 => X"02", 00093 => X"01", 00094 => X"8A", 00095 => X"04", 
     00096 => X"E9", 00097 => X"8A", 00098 => X"8A", 00099 => X"02", 
     00100 => X"02", 00101 => X"8A", 00102 => X"08", 00103 => X"E9", 
     00104 => X"8A", 00105 => X"8A", 00106 => X"02", 00107 => X"83", 
     00108 => X"8A", 00109 => X"20", 00110 => X"E9", 00111 => X"8A", 
     00112 => X"8A", 00113 => X"8A", 00114 => X"86", 00115 => X"85", 
     -- _U%U0M_R001172_R002001_R002104_R002208_R00230-_R00240{_._.
     00116 => X"BF", 00117 => X"54", 00118 => X"1C", 00119 => X"94", 
     00120 => X"8A", 00121 => X"A4", 00122 => X"E9", 00123 => X"8A", 
     00124 => X"8A", 00125 => X"01", 00126 => X"01", 00127 => X"07", 
     00128 => X"02", 00129 => X"E9", 00130 => X"8A", 00131 => X"8A", 
     00132 => X"02", 00133 => X"8A", 00134 => X"8A", 00135 => X"01", 
     00136 => X"E9", 00137 => X"8A", 00138 => X"8A", 00139 => X"02", 
     00140 => X"01", 00141 => X"8A", 00142 => X"04", 00143 => X"E9", 
     00144 => X"8A", 00145 => X"8A", 00146 => X"02", 00147 => X"02", 
     00148 => X"8A", 00149 => X"08", 00150 => X"E9", 00151 => X"8A", 
     00152 => X"8A", 00153 => X"02", 00154 => X"83", 00155 => X"8A", 
     00156 => X"20", 00157 => X"E9", 00158 => X"8A", 00159 => X"8A", 
     00160 => X"02", 00161 => X"04", 00162 => X"8A", 00163 => X"BF", 
     00164 => X"FB", 00165 => X"FB", 
     -- Address set to 00200
     -- _._.
     00200 => X"FB", 00201 => X"FB", 
     -- Address set to 00210
     -- _._.
     00210 => X"FB", 00211 => X"FB", 
     -- Address set to 00220
     -- _._.
     00220 => X"FB", 00221 => X"FB", 
     -- Address set to 00230
     -- _._.
     00230 => X"FB", 00231 => X"FB", 
     -- Address set to 00240
     -- _._.
     -- 
     00240 => X"FB", 00241 => X"FB",
     
     -- GMWM for read instruction. 
     
     01020 => X"7F",
     
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