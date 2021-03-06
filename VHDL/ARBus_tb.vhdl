-- Test BenchVHDL for IBM SMS ALD group ARBus
-- Title: ARBus
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/19/2020 9:21:03 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ARBus_tb is
end ARBus_tb;

architecture behavioral of ARBus_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ARBus
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_ADDR_GEN_UP_04_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_08_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_02_BIT: in STD_LOGIC;
		MS_RO_FIXED_ADDR: in STD_LOGIC;
		MS_ADDR_GEN_UP_18_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_12_BIT: in STD_LOGIC;
		MS_ADDR_GEN_U_POS_5_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_01_BIT: in STD_LOGIC;
		MS_ADDR_GEN_U_POS_0_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_24_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_48_BIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_2_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_08_BIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_4_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_3_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_18_BIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_5_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_24_BIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_48_BIT: in STD_LOGIC;
		MS_RO_00201_INDEX_ADDR: in STD_LOGIC;
		MS_RO_00101_INDEX_ADDR: in STD_LOGIC;
		MS_RO_INDEX_AR: in STD_LOGIC;
		MS_RO_00001_INDEX_ADDR: in STD_LOGIC;
		MS_A_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_UP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_TP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_HP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_THP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_TTHP_BUS: out STD_LOGIC_VECTOR (4 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_ADDR_GEN_UP_04_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_08_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_02_BIT: STD_LOGIC := '1';
	signal MS_RO_FIXED_ADDR: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_18_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_12_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_U_POS_5_DIGIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_01_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_U_POS_0_DIGIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_24_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_UP_48_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_T_POS_2_DIGIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_TP_08_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_T_POS_4_DIGIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_T_POS_3_DIGIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_TP_18_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_T_POS_5_DIGIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_TP_24_BIT: STD_LOGIC := '1';
	signal MS_ADDR_GEN_TP_48_BIT: STD_LOGIC := '1';
	signal MS_RO_00201_INDEX_ADDR: STD_LOGIC := '1';
	signal MS_RO_00101_INDEX_ADDR: STD_LOGIC := '1';
	signal MS_RO_INDEX_AR: STD_LOGIC := '1';
	signal MS_RO_00001_INDEX_ADDR: STD_LOGIC := '1';
	signal MS_A_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_B_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_C_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_D_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_I_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_E_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_F_AR_GT_OUT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_A_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_B_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_C_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_D_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_I_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_E_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_F_AR_GT_OUT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_A_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_B_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_C_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_D_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_I_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_E_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_F_AR_GT_OUT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_A_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_B_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_C_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_D_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_I_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_E_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_F_AR_GT_OUT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_A_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_B_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_C_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_D_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_I_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_E_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";
	signal MS_F_AR_GT_OUT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "11111";

	-- Outputs

	signal PS_AR_BUS_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal PS_AR_BUS_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal PS_AR_BUS_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal PS_AR_BUS_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0);
	signal PS_AR_BUS_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0);

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   constant HDL_C_BIT: integer := 7;
   constant HDL_WM_BIT: integer := 6;
   constant HDL_B_BIT: integer := 5;
   constant HDL_A_BIT: integer := 4;
   constant HDL_8_BIT: integer := 3;
   constant HDL_4_BIT: integer := 2;
   constant HDL_2_BIT: integer := 1;
   constant HDL_1_BIT: integer := 0;

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;
      


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ARBus port map(
		FPGA_CLK => FPGA_CLK,
		MS_ADDR_GEN_UP_04_BIT => MS_ADDR_GEN_UP_04_BIT,
		MS_ADDR_GEN_UP_08_BIT => MS_ADDR_GEN_UP_08_BIT,
		MS_ADDR_GEN_UP_02_BIT => MS_ADDR_GEN_UP_02_BIT,
		MS_RO_FIXED_ADDR => MS_RO_FIXED_ADDR,
		MS_ADDR_GEN_UP_18_BIT => MS_ADDR_GEN_UP_18_BIT,
		MS_ADDR_GEN_UP_12_BIT => MS_ADDR_GEN_UP_12_BIT,
		MS_ADDR_GEN_U_POS_5_DIGIT => MS_ADDR_GEN_U_POS_5_DIGIT,
		MS_ADDR_GEN_UP_01_BIT => MS_ADDR_GEN_UP_01_BIT,
		MS_ADDR_GEN_U_POS_0_DIGIT => MS_ADDR_GEN_U_POS_0_DIGIT,
		MS_ADDR_GEN_UP_24_BIT => MS_ADDR_GEN_UP_24_BIT,
		MS_ADDR_GEN_UP_48_BIT => MS_ADDR_GEN_UP_48_BIT,
		MS_ADDR_GEN_T_POS_2_DIGIT => MS_ADDR_GEN_T_POS_2_DIGIT,
		MS_ADDR_GEN_TP_08_BIT => MS_ADDR_GEN_TP_08_BIT,
		MS_ADDR_GEN_T_POS_4_DIGIT => MS_ADDR_GEN_T_POS_4_DIGIT,
		MS_ADDR_GEN_T_POS_3_DIGIT => MS_ADDR_GEN_T_POS_3_DIGIT,
		MS_ADDR_GEN_TP_18_BIT => MS_ADDR_GEN_TP_18_BIT,
		MS_ADDR_GEN_T_POS_5_DIGIT => MS_ADDR_GEN_T_POS_5_DIGIT,
		MS_ADDR_GEN_TP_24_BIT => MS_ADDR_GEN_TP_24_BIT,
		MS_ADDR_GEN_TP_48_BIT => MS_ADDR_GEN_TP_48_BIT,
		MS_RO_00201_INDEX_ADDR => MS_RO_00201_INDEX_ADDR,
		MS_RO_00101_INDEX_ADDR => MS_RO_00101_INDEX_ADDR,
		MS_RO_INDEX_AR => MS_RO_INDEX_AR,
		MS_RO_00001_INDEX_ADDR => MS_RO_00001_INDEX_ADDR,
		MS_A_AR_GT_OUT_UP_BUS => MS_A_AR_GT_OUT_UP_BUS,
		MS_B_AR_GT_OUT_UP_BUS => MS_B_AR_GT_OUT_UP_BUS,
		MS_C_AR_GT_OUT_UP_BUS => MS_C_AR_GT_OUT_UP_BUS,
		MS_D_AR_GT_OUT_UP_BUS => MS_D_AR_GT_OUT_UP_BUS,
		MS_I_AR_GT_OUT_UP_BUS => MS_I_AR_GT_OUT_UP_BUS,
		MS_E_AR_GT_OUT_UP_BUS => MS_E_AR_GT_OUT_UP_BUS,
		MS_F_AR_GT_OUT_UP_BUS => MS_F_AR_GT_OUT_UP_BUS,
		MS_A_AR_GT_OUT_TP_BUS => MS_A_AR_GT_OUT_TP_BUS,
		MS_B_AR_GT_OUT_TP_BUS => MS_B_AR_GT_OUT_TP_BUS,
		MS_C_AR_GT_OUT_TP_BUS => MS_C_AR_GT_OUT_TP_BUS,
		MS_D_AR_GT_OUT_TP_BUS => MS_D_AR_GT_OUT_TP_BUS,
		MS_I_AR_GT_OUT_TP_BUS => MS_I_AR_GT_OUT_TP_BUS,
		MS_E_AR_GT_OUT_TP_BUS => MS_E_AR_GT_OUT_TP_BUS,
		MS_F_AR_GT_OUT_TP_BUS => MS_F_AR_GT_OUT_TP_BUS,
		MS_A_AR_GT_OUT_HP_BUS => MS_A_AR_GT_OUT_HP_BUS,
		MS_B_AR_GT_OUT_HP_BUS => MS_B_AR_GT_OUT_HP_BUS,
		MS_C_AR_GT_OUT_HP_BUS => MS_C_AR_GT_OUT_HP_BUS,
		MS_D_AR_GT_OUT_HP_BUS => MS_D_AR_GT_OUT_HP_BUS,
		MS_I_AR_GT_OUT_HP_BUS => MS_I_AR_GT_OUT_HP_BUS,
		MS_E_AR_GT_OUT_HP_BUS => MS_E_AR_GT_OUT_HP_BUS,
		MS_F_AR_GT_OUT_HP_BUS => MS_F_AR_GT_OUT_HP_BUS,
		MS_A_AR_GT_OUT_THP_BUS => MS_A_AR_GT_OUT_THP_BUS,
		MS_B_AR_GT_OUT_THP_BUS => MS_B_AR_GT_OUT_THP_BUS,
		MS_C_AR_GT_OUT_THP_BUS => MS_C_AR_GT_OUT_THP_BUS,
		MS_D_AR_GT_OUT_THP_BUS => MS_D_AR_GT_OUT_THP_BUS,
		MS_I_AR_GT_OUT_THP_BUS => MS_I_AR_GT_OUT_THP_BUS,
		MS_E_AR_GT_OUT_THP_BUS => MS_E_AR_GT_OUT_THP_BUS,
		MS_F_AR_GT_OUT_THP_BUS => MS_F_AR_GT_OUT_THP_BUS,
		MS_A_AR_GT_OUT_TTHP_BUS => MS_A_AR_GT_OUT_TTHP_BUS,
		MS_B_AR_GT_OUT_TTHP_BUS => MS_B_AR_GT_OUT_TTHP_BUS,
		MS_C_AR_GT_OUT_TTHP_BUS => MS_C_AR_GT_OUT_TTHP_BUS,
		MS_D_AR_GT_OUT_TTHP_BUS => MS_D_AR_GT_OUT_TTHP_BUS,
		MS_I_AR_GT_OUT_TTHP_BUS => MS_I_AR_GT_OUT_TTHP_BUS,
		MS_E_AR_GT_OUT_TTHP_BUS => MS_E_AR_GT_OUT_TTHP_BUS,
		MS_F_AR_GT_OUT_TTHP_BUS => MS_F_AR_GT_OUT_TTHP_BUS,
		PS_AR_BUS_UP_BUS => PS_AR_BUS_UP_BUS,
		PS_AR_BUS_TP_BUS => PS_AR_BUS_TP_BUS,
		PS_AR_BUS_HP_BUS => PS_AR_BUS_HP_BUS,
		PS_AR_BUS_THP_BUS => PS_AR_BUS_THP_BUS,
		PS_AR_BUS_TTHP_BUS => PS_AR_BUS_TTHP_BUS);

-- START USER TEST BENCH PROCESS

-- The user test bench code MUST be placed between the
-- line that starts with the first line of text that
-- begins with "-- START USERS TEST BENCH PROCESS" 
-- and ends with "-- END"
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

-- 
-- TestBenchFPGAClock.vhdl
--
-- Process to simulate the FPGA clock for a VHDL test bench
--

fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable test: string(1 to 4);
   variable bitNum: integer;

   begin

   -- Your test bench code

   testName := "14.15.0%.1        ";
  
   test := "UP  ";
   for bitnum in 0 to 4 loop
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitNum) & " S");
       MS_A_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " A");
       MS_A_AR_GT_OUT_UP_BUS(bitNum) <= '1';
       MS_B_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " B");
       MS_B_AR_GT_OUT_UP_BUS(bitNum) <= '1';
       MS_C_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " C");
       MS_C_AR_GT_OUT_UP_BUS(bitNum) <= '1';
       MS_D_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " D");
       MS_D_AR_GT_OUT_UP_BUS(bitNum) <= '1';
       MS_E_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " E");
       MS_E_AR_GT_OUT_UP_BUS(bitNum) <= '1';
       MS_F_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " F");
       MS_F_AR_GT_OUT_UP_BUS(bitNum) <= '1';
       MS_I_AR_GT_OUT_UP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & "I");
       MS_I_AR_GT_OUT_UP_BUS(bitNum) <= '1';
   end loop;
   
   -- Specials
   
   bitNum := 0;
   test := "UP  ";
   
   MS_ADDR_GEN_UP_04_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG04");
   MS_ADDR_GEN_UP_04_BIT <= '1';
   MS_ADDR_GEN_UP_08_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG08");
   MS_ADDR_GEN_UP_08_BIT <= '1';
   MS_ADDR_GEN_UP_02_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG02");
   MS_ADDR_GEN_UP_02_BIT <= '1';
   MS_ADDR_GEN_UP_01_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG01");
   MS_ADDR_GEN_UP_01_BIT <= '1';
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " ROFA");
   MS_RO_FIXED_ADDR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");
   
   test := "UP  ";
   bitNum := 1;
   MS_ADDR_GEN_UP_01_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG01");
   MS_ADDR_GEN_UP_01_BIT <= '1';
   MS_ADDR_GEN_UP_18_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG18");
   MS_ADDR_GEN_UP_18_BIT <= '1';
   MS_ADDR_GEN_UP_12_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG12");
   MS_ADDR_GEN_UP_12_BIT <= '1';
   MS_ADDR_GEN_U_POS_5_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 5 Digit");
   MS_ADDR_GEN_U_POS_5_DIGIT <= '1';
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " ROFA");
   MS_RO_FIXED_ADDR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "UP  ";
   bitNum := 2;
   MS_ADDR_GEN_UP_12_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG12");
   MS_ADDR_GEN_UP_12_BIT <= '1';
   MS_ADDR_GEN_UP_24_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG24");
   MS_ADDR_GEN_UP_24_BIT <= '1';
   MS_ADDR_GEN_UP_02_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG02");
   MS_ADDR_GEN_UP_02_BIT <= '1';
   MS_ADDR_GEN_U_POS_0_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 0 Digit");
   MS_ADDR_GEN_U_POS_0_DIGIT <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "UP  ";
   bitNum := 3;
   MS_ADDR_GEN_UP_04_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG04");
   MS_ADDR_GEN_UP_04_BIT <= '1';
   MS_ADDR_GEN_UP_48_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG48");
   MS_ADDR_GEN_UP_48_BIT <= '1';
   MS_ADDR_GEN_UP_24_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG24");
   MS_ADDR_GEN_UP_24_BIT <= '1';
   MS_ADDR_GEN_U_POS_5_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 5 Digit");
   MS_ADDR_GEN_U_POS_5_DIGIT <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "UP  ";
   bitNum := 4;
   MS_ADDR_GEN_UP_18_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG18");
   MS_ADDR_GEN_UP_18_BIT <= '1';
   MS_ADDR_GEN_UP_48_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG48");
   MS_ADDR_GEN_UP_48_BIT <= '1';
   MS_ADDR_GEN_UP_08_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG08");
   MS_ADDR_GEN_UP_08_BIT <= '1';
   MS_ADDR_GEN_U_POS_0_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 0 Digit");
   MS_ADDR_GEN_U_POS_0_DIGIT <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_UP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   -- TENS position

   test := "TP  ";
   for bitnum in 0 to 4 loop
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " S");
       MS_A_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " A");
       MS_A_AR_GT_OUT_TP_BUS(bitNum) <= '1';
       MS_B_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " B");
       MS_B_AR_GT_OUT_TP_BUS(bitNum) <= '1';
       MS_C_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " C");
       MS_C_AR_GT_OUT_TP_BUS(bitNum) <= '1';
       MS_D_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " D");
       MS_D_AR_GT_OUT_TP_BUS(bitNum) <= '1';
       MS_E_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " E");
       MS_E_AR_GT_OUT_TP_BUS(bitNum) <= '1';
       MS_F_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " F");
       MS_F_AR_GT_OUT_TP_BUS(bitNum) <= '1';
       MS_I_AR_GT_OUT_TP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & "I");
       MS_I_AR_GT_OUT_TP_BUS(bitNum) <= '1';
   end loop;

   test := "TP  ";
   bitNum := 0;
   MS_ADDR_GEN_TP_08_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG08");
   MS_ADDR_GEN_TP_08_BIT <= '1';
   MS_ADDR_GEN_T_POS_4_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 4 Digit");
   MS_ADDR_GEN_T_POS_4_DIGIT <= '1';
   MS_ADDR_GEN_T_POS_2_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 2 Digit");
   MS_ADDR_GEN_T_POS_2_DIGIT <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "TP  ";
   bitNum := 1;
   MS_ADDR_GEN_TP_18_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG18");
   MS_ADDR_GEN_TP_18_BIT <= '1';
   MS_ADDR_GEN_T_POS_3_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 3 Digit");
   MS_ADDR_GEN_T_POS_3_DIGIT <= '1';
   MS_ADDR_GEN_T_POS_5_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 5 Digit");
   MS_ADDR_GEN_T_POS_5_DIGIT <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");
   
   test := "TP  ";
   bitNum := 2;
   MS_ADDR_GEN_TP_24_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG24");
   MS_ADDR_GEN_TP_24_BIT <= '1';
   MS_ADDR_GEN_T_POS_3_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 3 Digit");
   MS_ADDR_GEN_T_POS_3_DIGIT <= '1';
   MS_ADDR_GEN_T_POS_2_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 2 Digit");
   MS_ADDR_GEN_T_POS_2_DIGIT <= '1';
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " ROFA");
   MS_RO_FIXED_ADDR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "TP  ";
   bitNum := 3;
   MS_ADDR_GEN_TP_48_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG48");
   MS_ADDR_GEN_TP_48_BIT <= '1';
   MS_ADDR_GEN_T_POS_4_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 4 Digit");
   MS_ADDR_GEN_T_POS_4_DIGIT <= '1';
   MS_ADDR_GEN_T_POS_5_DIGIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " 5 Digit");
   MS_ADDR_GEN_T_POS_5_DIGIT <= '1';
   MS_ADDR_GEN_TP_24_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG24");
   MS_ADDR_GEN_TP_24_BIT <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "TP  ";
   bitNum := 4;
   MS_ADDR_GEN_TP_48_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG48");
   MS_ADDR_GEN_TP_48_BIT <= '1';
   MS_ADDR_GEN_TP_18_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG18");
   MS_ADDR_GEN_TP_18_BIT <= '1';
   MS_ADDR_GEN_TP_08_BIT <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " AG08");
   MS_ADDR_GEN_TP_08_BIT <= '1';
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " ROFA");
   MS_RO_FIXED_ADDR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");


   -- HUNDREDS position

   test := "HP  ";
   for bitnum in 0 to 4 loop
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " S");
       MS_A_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " A");
       MS_A_AR_GT_OUT_HP_BUS(bitNum) <= '1';
       MS_B_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " B");
       MS_B_AR_GT_OUT_HP_BUS(bitNum) <= '1';
       MS_C_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " C");
       MS_C_AR_GT_OUT_HP_BUS(bitNum) <= '1';
       MS_D_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " D");
       MS_D_AR_GT_OUT_HP_BUS(bitNum) <= '1';
       MS_E_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " E");
       MS_E_AR_GT_OUT_HP_BUS(bitNum) <= '1';
       MS_F_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " F");
       MS_F_AR_GT_OUT_HP_BUS(bitNum) <= '1';
       MS_I_AR_GT_OUT_HP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & "I");
       MS_I_AR_GT_OUT_HP_BUS(bitNum) <= '1';
   end loop;

   test := "HP  ";
   bitNum := 0;
   MS_RO_00201_INDEX_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO 0201");
   MS_RO_00201_INDEX_ADDR <= '1';
   MS_RO_00101_INDEX_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO 0101");
   MS_RO_00101_INDEX_ADDR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "HP  ";
   bitNum := 1;
   MS_RO_00101_INDEX_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO 0101");
   MS_RO_00101_INDEX_ADDR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "HP  ";
   bitNum := 2;
   MS_RO_00201_INDEX_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO 0201");
   MS_RO_00201_INDEX_ADDR <= '1';
   MS_RO_00001_INDEX_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO 0001");
   MS_RO_00001_INDEX_ADDR <= '1';
   MS_RO_INDEX_AR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO INDEX");
   MS_RO_INDEX_AR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   -- Note: NO specials for HP 3rd bit

   test := "HP  ";
   bitNum := 4;
   MS_RO_00001_INDEX_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO 0001");
   MS_RO_00001_INDEX_ADDR <= '1';
   MS_RO_INDEX_AR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO INDEX");
   MS_RO_INDEX_AR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_HP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");


   -- THOUSANDS position

   test := "THP ";
   for bitnum in 0 to 4 loop
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " S");
       MS_A_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " A");
       MS_A_AR_GT_OUT_THP_BUS(bitNum) <= '1';
       MS_B_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " B");
       MS_B_AR_GT_OUT_THP_BUS(bitNum) <= '1';
       MS_C_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " C");
       MS_C_AR_GT_OUT_THP_BUS(bitNum) <= '1';
       MS_D_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " D");
       MS_D_AR_GT_OUT_THP_BUS(bitNum) <= '1';
       MS_E_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " E");
       MS_E_AR_GT_OUT_THP_BUS(bitNum) <= '1';
       MS_F_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " F");
       MS_F_AR_GT_OUT_THP_BUS(bitNum) <= '1';
       MS_I_AR_GT_OUT_THP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & "I");
       MS_I_AR_GT_OUT_THP_BUS(bitNum) <= '1';
   end loop;

   -- NOTE:  NO specials for Thousands Position bits 0, 1 and 4

   test := "THP ";
   bitNum := 2;
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO FIXED");
   MS_RO_FIXED_ADDR <= '1';
   MS_RO_INDEX_AR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO INDEX");
   MS_RO_INDEX_AR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_THP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "THP ";
   bitNum := 4;
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO FIXED");
   MS_RO_FIXED_ADDR <= '1';
   MS_RO_INDEX_AR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_THP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO INDEX");
   MS_RO_INDEX_AR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_THP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   -- TEN THOUSANDS position

   test := "TTHP";
   for bitnum in 0 to 4 loop
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " S");
       MS_A_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " A");
       MS_A_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
       MS_B_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " B");
       MS_B_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
       MS_C_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " C");
       MS_C_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
       MS_D_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " D");
       MS_D_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
       MS_E_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " E");
       MS_E_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
       MS_F_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " F");
       MS_F_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
       MS_I_AR_GT_OUT_TTHP_BUS(bitNum) <= '0';
       wait for 30 ns;
       check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & "I");
       MS_I_AR_GT_OUT_TTHP_BUS(bitNum) <= '1';
   end loop;

   -- NOTE: No specials for Ten Thousands bits 0, 1 or 4

   test := "TTHP";
   bitNum := 2;
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO FIXED");
   MS_RO_FIXED_ADDR <= '1';
   MS_RO_INDEX_AR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO INDEX");
   MS_RO_INDEX_AR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TTHP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   test := "TTHP";
   bitNum := 4;
   MS_RO_FIXED_ADDR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO FIXED");
   MS_RO_FIXED_ADDR <= '1';
   MS_RO_INDEX_AR <= '0';
   wait for 30 ns;
   check1(PS_AR_BUS_TTHP_BUS(bitNum),'1',testName,test & INTEGER'IMAGE(bitnum) & " RO INDEX");
   MS_RO_INDEX_AR <= '1';
   wait for 30 ns;
   check1(PS_AR_BUS_TTHP_BUS(bitNum),'0',testName,test & INTEGER'IMAGE(bitnum) & " END");

   wait;
   end process;


-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;
