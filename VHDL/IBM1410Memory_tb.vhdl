----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 12/4/2020 8:15PM
-- Design Name: IBM1410
-- Module Name: IBM1410Memory_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test Bench for memory
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

entity IBM1410Memory_tb is
end IBM1410Memory_tb;

architecture Behavioral of IBM1410Memory_tb is

   component IBM1410Memory is
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

signal UPOS: STD_LOGIC_VECTOR(4 downto 0) := "00000";
signal TPOS: STD_LOGIC_VECTOR(4 downto 0) := "00000";
signal HPOS: STD_LOGIC_VECTOR(4 downto 0) := "00000";
signal THPOS: STD_LOGIC_VECTOR(4 downto 0) := "00000";
signal TTHPOS: STD_LOGIC_VECTOR(4 downto 0) := "00000";

signal ADDR: STD_LOGIC_VECTOR(13 downto 0);

signal FPGA_CLK: STD_LOGIC := '0';
signal MY_X_RD_1: STD_LOGIC := '1';
signal MY_X_WR_1: STD_LOGIC := '1';

signal MV_INH_CHAR_0_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_0_D1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_1_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_1_D1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_2_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_2_D1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_3_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";
signal MV_INH_CHAR_3_D1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "11111111";

signal PV_SENSE_CHAR_0_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal PV_SENSE_CHAR_1_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal PV_SENSE_CHAR_2_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal PV_SENSE_CHAR_3_B1_BUS: STD_LOGIC_VECTOR(7 downto 0) := "00000000";

type TwoOfFiveArray is array(0 to 9) of std_logic_vector(4 downto 0);

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;

procedure checkAddress(
    testName: string;
    test: string;
    testVal: STD_LOGIC_VECTOR(13 downto 0);
    addr: STD_LOGIC_VECTOR(13 downto 0)) is
    begin
    for i in 0 to 13 loop
       check1(addr(i),testVal(i),testName,test);
    end loop;
    end procedure;   


begin

UUT: IBM1410Memory Port map(
      FPGA_CLK => FPGA_CLK,
      MY_X_RD_1 => MY_X_RD_1,
      -- MY_X_WR_1 => MY_X_WR_1, -- disable writes for now
      MY_X_WR_1 => '1',
      MY_MEM_AR_NOT_UP_BUS => UPOS,
      MY_MEM_AR_NOT_TP_BUS => TPOS,
      MY_MEM_AR_NOT_HP_BUS => HPOS,
      MY_MEM_AR_NOT_THP_BUS => THPOS,
      MY_MEM_AR_NOT_TTHP_BUS => TTHPOS,
      MV_INH_CHAR_0_B1_BUS => MV_INH_CHAR_0_B1_BUS,
      MV_INH_CHAR_0_D1_BUS => MV_INH_CHAR_0_D1_BUS,
      MV_INH_CHAR_1_B1_BUS => MV_INH_CHAR_1_B1_BUS,
      MV_INH_CHAR_1_D1_BUS => MV_INH_CHAR_1_D1_BUS,
      MV_INH_CHAR_2_B1_BUS => MV_INH_CHAR_2_B1_BUS,
      MV_INH_CHAR_2_D1_BUS => MV_INH_CHAR_2_D1_BUS,
      MV_INH_CHAR_3_B1_BUS => MV_INH_CHAR_3_B1_BUS,
      MV_INH_CHAR_3_D1_BUS => MV_INH_CHAR_3_D1_BUS,
      PV_SENSE_CHAR_0_BUS => PV_SENSE_CHAR_0_B1_BUS,
      PV_SENSE_CHAR_1_BUS => PV_SENSE_CHAR_1_B1_BUS,
      PV_SENSE_CHAR_2_BUS => PV_SENSE_CHAR_2_B1_BUS,
      PV_SENSE_CHAR_3_BUS => PV_SENSE_CHAR_3_B1_BUS );

     
fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;
     
uut_process: process

variable twoOfFiveVals: TwoOfFiveArray :=
   (TwoOfFive0, TwoOfFive1, TwoOfFive2, TwoOfFive3, TwoOfFive4, TwoOfFive5, 
   TwoOfFive6, TwoOfFive7, TwoOfFive8, TwoOfFive9);
   
variable tv: std_logic_vector(13 downto 0);
variable a: integer;

begin

   wait for 1 us;

--   for u in 0 to 9 loop
--      UPOS <= twoOfFiveVals(u);
--      for t in 0 to 9 loop
--         TPOS <= twoOfFiveVals(t);
--         for h in 0 to 9 loop
--            HPOS <= twoOfFiveVals(h);
--            for th in 0 to 9 loop
--               THPOS <= twoOfFiveVals(th);
--            end loop;
--         end loop;
--      end loop;
--   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;

end process;

end;