----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 12/4/2020 8:15PM
-- Design Name: IBM1410
-- Module Name: MemoryAddressDecode_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test Bench for memory address decoder
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

entity MemoryAddressDecode_tb is
end MemoryAddressDecode_tb;

architecture Behavioral of MemoryAddressDecode_tb is

component MemoryAddressDecode is
    Port ( 
        UPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        TPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        HPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        THPOS:   IN STD_LOGIC_VECTOR(4 downto 0);
        ADDR:  OUT STD_LOGIC_VECTOR(13 downto 0));
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

signal ADDR: STD_LOGIC_VECTOR(13 downto 0);

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

   UUT: MemoryAddressDecode port map (
      UPOS => UPOS, TPOS => TPOS, HPOS => HPOS, THPOS => THPOS, ADDR => ADDR);
      
uut_process: process

variable twoOfFiveVals: TwoOfFiveArray :=
   (TwoOfFive0, TwoOfFive1, TwoOfFive2, TwoOfFive3, TwoOfFive4, TwoOfFive5, 
   TwoOfFive6, TwoOfFive7, TwoOfFive8, TwoOfFive9);
   
variable tv: std_logic_vector(13 downto 0);
variable a: integer;

begin
   for th in 0 to 9 loop
      THPOS <= twoOfFiveVals(th);
      for h in 0 to 9 loop
         HPOS <= twoOfFiveVals(h);
         for t in 0 to 9 loop
            TPOS <= twoOfFiveVals(t);
            for u in 0 to 9 loop
               UPOS <= twoOfFiveVals(u);               
               a := th*1000 + h*100 + t*10 + u; 
               tv := std_logic_vector(to_unsigned(a,tv'Length));
               wait for 30 ns;
               checkAddress("Mem Addr Decode","Address " & integer'Image(a),ADDR,tv);
            end loop;
         end loop;
      end loop;
   end loop;
   
   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;

end process;

end;