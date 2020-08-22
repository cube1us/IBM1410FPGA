-- Test BenchVHDL for IBM SMS ALD group AddrRegAndexit
-- Title: AddrRegAndexit
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/22/2020 11:18:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddrRegAndexit_tb is
end AddrRegAndexit_tb;

architecture behavioral of AddrRegAndexit_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component AddrRegAndexit
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_AR_CH_0_BIT_STAR_VAL_CHK: in STD_LOGIC;
		MV_1ST_CHECK_TEST_SWITCH: in STD_LOGIC;
		MV_2ND_CHECK_TEST_SWITCH: in STD_LOGIC;
		PS_AR_CH_STAR_VAL_CHK_STAR_BUS: in STD_LOGIC_VECTOR (3 downTo 0);
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: in STD_LOGIC_VECTOR (3 downTo 0);
		PS_AR_CH_VC_GROUP_ONE: out STD_LOGIC;
		PY_1ST_CHECK_TEST_STAR_SEE_NOTE_STAR: out STD_LOGIC;
		PY_2ND_CHECK_TEST_STAR_SEE_NOTE_STAR: out STD_LOGIC;
		PS_AR_CH_VC_GROUP_TWO: out STD_LOGIC;
		PS_AR_EXIT_CH_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_AR_CH_0_BIT_STAR_VAL_CHK: STD_LOGIC := '0';
	signal MV_1ST_CHECK_TEST_SWITCH: STD_LOGIC := '1';
	signal MV_2ND_CHECK_TEST_SWITCH: STD_LOGIC := '1';
	signal PS_AR_CH_STAR_VAL_CHK_STAR_BUS: STD_LOGIC_VECTOR (3 downTo 0) := "0000";
	signal PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: STD_LOGIC_VECTOR (3 downTo 0) := "0000";

	-- Outputs

	signal PS_AR_CH_VC_GROUP_ONE: STD_LOGIC;
	signal PY_1ST_CHECK_TEST_STAR_SEE_NOTE_STAR: STD_LOGIC;
	signal PY_2ND_CHECK_TEST_STAR_SEE_NOTE_STAR: STD_LOGIC;
	signal PS_AR_CH_VC_GROUP_TWO: STD_LOGIC;
	signal PS_AR_EXIT_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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

	UUT: AddrRegAndexit port map(
		FPGA_CLK => FPGA_CLK,
		PS_AR_CH_0_BIT_STAR_VAL_CHK => PS_AR_CH_0_BIT_STAR_VAL_CHK,
		MV_1ST_CHECK_TEST_SWITCH => MV_1ST_CHECK_TEST_SWITCH,
		MV_2ND_CHECK_TEST_SWITCH => MV_2ND_CHECK_TEST_SWITCH,
		PS_AR_CH_STAR_VAL_CHK_STAR_BUS => PS_AR_CH_STAR_VAL_CHK_STAR_BUS,
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS => PS_AR_CH_STAR_TRANSLATOR_STAR_BUS,
		PS_AR_CH_VC_GROUP_ONE => PS_AR_CH_VC_GROUP_ONE,
		PY_1ST_CHECK_TEST_STAR_SEE_NOTE_STAR => PY_1ST_CHECK_TEST_STAR_SEE_NOTE_STAR,
		PY_2ND_CHECK_TEST_STAR_SEE_NOTE_STAR => PY_2ND_CHECK_TEST_STAR_SEE_NOTE_STAR,
		PS_AR_CH_VC_GROUP_TWO => PS_AR_CH_VC_GROUP_TWO,
		PS_AR_EXIT_CH_BUS => PS_AR_EXIT_CH_BUS);

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

   begin

   -- Your test bench code
   
   testName := "14.16.03.1        ";
   
   wait for 30 ns;
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"1A");
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '0';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"1B");
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'1',testName,"1C");
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '0';

   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"2A");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '0';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"2B");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'1',testName,"2C");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(0) <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '0';

   
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"3A");
   check1(PS_AR_EXIT_CH_BUS(HDL_1_BIT),'0',testName,"3B");
   check1(PS_AR_EXIT_CH_BUS(HDL_2_BIT),'0',testName,"3C");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '0';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"3D");
   check1(PS_AR_EXIT_CH_BUS(HDL_1_BIT),'0',testName,"3E");
   check1(PS_AR_EXIT_CH_BUS(HDL_2_BIT),'0',testName,"3F");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'1',testName,"3G");
   check1(PS_AR_EXIT_CH_BUS(HDL_1_BIT),'1',testName,"3H");
   check1(PS_AR_EXIT_CH_BUS(HDL_2_BIT),'1',testName,"3I");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(2) <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '0';

   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"4A");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '0';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"4B");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'1',testName,"4C");
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(3) <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '0';

   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"5A");
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '0';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'0',testName,"5B");
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '1';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '1';
   wait for 30 ns;
   check1(PS_AR_CH_VC_GROUP_ONE,'1',testName,"5C");
   PS_AR_CH_0_BIT_STAR_VAL_CHK <= '0';
   PS_AR_CH_STAR_VAL_CHK_STAR_BUS(1) <= '0';


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
