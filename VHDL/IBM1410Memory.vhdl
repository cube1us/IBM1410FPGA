----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 12/4/2020 8:15PM
-- Design Name: IBM1410
-- Module Name: IBM1410Memory - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: IBM 1410 Memory
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
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;
-- use IEEE.STD_LOGIC_SIGNED.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410Memory is
   Port (
      FPGA_CLK: in STD_LOGIC;
      MY_X_RD_1: in STD_LOGIC;
      MY_X_WR_1: in STD_LOGIC;
      MY_MEM_AR_NOT_UP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_TP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_HP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_THP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_TTHP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MV_INH_CHAR_0_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_0_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_1_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_1_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_2_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_2_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_3_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_3_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_0_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_1_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_2_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_3_BUS: out STD_LOGIC_VECTOR(7 downto 0) );


end IBM1410Memory;

architecture Behavioral of IBM1410Memory is

component MemoryAddressDecode is
    Port ( 
        UPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        TPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        HPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        THPOS:  IN STD_LOGIC_VECTOR(4 downto 0);
        ADDR:   OUT STD_LOGIC_VECTOR(13 downto 0));
end component;

component IBM1410_10K_RAM_INIT is
   port(
   clk : in std_logic;
   we : in std_logic;
   en : in std_logic;
   addr : in std_logic_vector(13 downto 0);
   di : in std_logic_vector(7 downto 0);
   do : out std_logic_vector(7 downto 0) );
end component;

component IBM1410_10K_RAM is
   port(
   clk : in std_logic;
   we : in std_logic;
   en : in std_logic;
   addr : in std_logic_vector(13 downto 0);
   di : in std_logic_vector(7 downto 0);
   do : out std_logic_vector(7 downto 0) );
end component;     

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

signal ADDR: STD_LOGIC_VECTOR(13 downto 0);
signal WRITE_DATA: STD_LOGIC_VECTOR(7 downto 0);

signal UPOS: STD_LOGIC_VECTOR(4 downto 0);
signal TPOS: STD_LOGIC_VECTOR(4 downto 0);
signal HPOS: STD_LOGIC_VECTOR(4 downto 0);
signal THPOS: STD_LOGIC_VECTOR(4 downto 0);

signal writeEnable: STD_LOGIC := '0';
signal enable:     STD_LOGIC := '0';
signal writeData0: STD_LOGIC_VECTOR(7 downto 0);
signal writeData1: STD_LOGIC_VECTOR(7 downto 0);
signal writeData2: STD_LOGIC_VECTOR(7 downto 0);
signal writeData3: STD_LOGIC_VECTOR(7 downto 0);

signal writeDone: std_logic := '0';


begin

   writeData0 <= MV_INH_CHAR_0_B1_BUS and MV_INH_CHAR_0_D1_BUS;
   writeData1 <= MV_INH_CHAR_1_B1_BUS and MV_INH_CHAR_1_D1_BUS;
   writeData2 <= MV_INH_CHAR_2_B1_BUS and MV_INH_CHAR_2_D1_BUS;
   writeData3 <= MV_INH_CHAR_3_B1_BUS and MV_INH_CHAR_3_D1_BUS;
   

   AddressDecode: MemoryAddressDecode port map (
      UPOS => MY_MEM_AR_NOT_UP_BUS,
      TPOS => MY_MEM_AR_NOT_TP_BUS, 
      HPOS => MY_MEM_AR_NOT_HP_BUS, 
      THPOS => MY_MEM_AR_NOT_THP_BUS, 
      ADDR => ADDR);
      
   MemoryBank0: IBM1410_10K_RAM_INIT port map (
      clk => FPGA_CLK, we => writeEnable, en => enable, addr => ADDR,
      di => writeData0, do => PV_SENSE_CHAR_0_BUS); 
      
   MemoryBank1: IBM1410_10K_RAM port map (
      clk => FPGA_CLK, we => writeEnable, en => enable, addr => ADDR,
      di => writeData1, do => PV_SENSE_CHAR_1_BUS);
      
   MemoryBank2: IBM1410_10K_RAM port map (
      clk => FPGA_CLK, we => writeEnable, en => enable, addr => ADDR,
      di => writeData2, do => PV_SENSE_CHAR_2_BUS);

   MemoryBank3: IBM1410_10K_RAM port map (
      clk => FPGA_CLK, we => writeEnable, en => enable, addr => ADDR,
      di => writeData3, do => PV_SENSE_CHAR_3_BUS);

   process(FPGA_CLK)
      begin

      if rising_edge(FPGA_CLK) then
      
         if (MY_MEM_AR_NOT_TTHP_BUS = TwoOfFive0 or
             MY_MEM_AR_NOT_TTHP_BUS = TwoofFive1 or
             MY_MEM_AR_NOT_TTHP_BUS = TwoOfFive2 or
             MY_MEM_AR_NOT_TTHP_BUS = TwoOfFive3) then
            
            if MY_X_RD_1 = '0' then
               enable <= '1';
               writeEnable <= '0';     
               writeDone <= '0';                   
            elsif MY_X_WR_1 = '0' and writeDone = '0' then
               enable <= '1';
               writeEnable <= '1';
               writeDone <= '1';     
            else
               enable <= '0';
               writeEnable <= '0';
            end if;                        
         end if;                       
         
      end if;

      end process;
      
end behavioral;
