-- Test Bench VHDL for IBM SMS ALD page 12.60.19.1
-- Title: 1401 BRANCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/14/2020 3:38:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_60_19_1_1401_BRANCHES_tb is
end ALD_12_60_19_1_1401_BRANCHES_tb;

architecture behavioral of ALD_12_60_19_1_1401_BRANCHES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_12_60_19_1_1401_BRANCHES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		MS_PROGRAM_SET_BRANCH_CTRL:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_B_OR_W_OR_V_BRANCH_CND:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		PS_1401_NO_EXE_CY_BRANCH_OPS:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_1401_BRANCH_CONDITION:	 in STD_LOGIC;
		PS_1401_BRANCH_CONDITION_JRJ:	 in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE:	 in STD_LOGIC;
		MS_1401_CLEAR_DOT_I_RING_11:	 in STD_LOGIC;
		MS_J_TYPE_BRANCH_COND:	 in STD_LOGIC;
		MS_1401_UNCOND_BRANCH:	 in STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME:	 in STD_LOGIC;
		PS_1401_I_RING_8_BRANCH_OPS:	 in STD_LOGIC;
		PS_I_RING_9_TIME:	 in STD_LOGIC;
		PS_1401_I_RING_9_BRANCH_OPS:	 in STD_LOGIC;
		MS_1401_TAKE_I_TO_B_CYCLE:	 out STD_LOGIC;
		MS_1401_BRANCH_LATCH:	 out STD_LOGIC;
		PS_1401_BRANCH_LATCH:	 out STD_LOGIC;
		MS_1401_BRANCH_LAST_EX_CYCLE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_NEXT_TO_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal MS_PROGRAM_SET_BRANCH_CTRL: STD_LOGIC := '1';
	signal MS_I_RING_OP_TIME: STD_LOGIC := '1';
	signal PS_B_CYCLE: STD_LOGIC := '0';
	signal PS_B_OR_W_OR_V_BRANCH_CND: STD_LOGIC := '0';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal PS_1401_NO_EXE_CY_BRANCH_OPS: STD_LOGIC := '0';
	signal PS_LAST_INSN_RO_CYCLE: STD_LOGIC := '0';
	signal PS_1401_BRANCH_CONDITION: STD_LOGIC := '0';
	signal PS_1401_BRANCH_CONDITION_JRJ: STD_LOGIC := '0';
	signal PS_1401_COND_TEST_OP_CODE: STD_LOGIC := '0';
	signal MS_1401_CLEAR_DOT_I_RING_11: STD_LOGIC := '1';
	signal MS_J_TYPE_BRANCH_COND: STD_LOGIC := '1';
	signal MS_1401_UNCOND_BRANCH: STD_LOGIC := '1';
	signal PS_I_RING_6_OR_1401_AND_8_TIME: STD_LOGIC := '0';
	signal PS_1401_I_RING_8_BRANCH_OPS: STD_LOGIC := '0';
	signal PS_I_RING_9_TIME: STD_LOGIC := '0';
	signal PS_1401_I_RING_9_BRANCH_OPS: STD_LOGIC := '0';

	-- Outputs

	signal MS_1401_TAKE_I_TO_B_CYCLE: STD_LOGIC;
	signal MS_1401_BRANCH_LATCH: STD_LOGIC;
	signal PS_1401_BRANCH_LATCH: STD_LOGIC;
	signal MS_1401_BRANCH_LAST_EX_CYCLE: STD_LOGIC;

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

	UUT: ALD_12_60_19_1_1401_BRANCHES port map(
		FPGA_CLK => FPGA_CLK,
		PS_NEXT_TO_LAST_LOGIC_GATE => PS_NEXT_TO_LAST_LOGIC_GATE,
		PS_1ST_SCAN => PS_1ST_SCAN,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		MS_PROGRAM_SET_BRANCH_CTRL => MS_PROGRAM_SET_BRANCH_CTRL,
		MS_I_RING_OP_TIME => MS_I_RING_OP_TIME,
		PS_B_CYCLE => PS_B_CYCLE,
		PS_B_OR_W_OR_V_BRANCH_CND => PS_B_OR_W_OR_V_BRANCH_CND,
		PS_1401_MODE => PS_1401_MODE,
		PS_1401_NO_EXE_CY_BRANCH_OPS => PS_1401_NO_EXE_CY_BRANCH_OPS,
		PS_LAST_INSN_RO_CYCLE => PS_LAST_INSN_RO_CYCLE,
		PS_1401_BRANCH_CONDITION => PS_1401_BRANCH_CONDITION,
		PS_1401_BRANCH_CONDITION_JRJ => PS_1401_BRANCH_CONDITION_JRJ,
		PS_1401_COND_TEST_OP_CODE => PS_1401_COND_TEST_OP_CODE,
		MS_1401_CLEAR_DOT_I_RING_11 => MS_1401_CLEAR_DOT_I_RING_11,
		MS_J_TYPE_BRANCH_COND => MS_J_TYPE_BRANCH_COND,
		MS_1401_UNCOND_BRANCH => MS_1401_UNCOND_BRANCH,
		PS_I_RING_6_OR_1401_AND_8_TIME => PS_I_RING_6_OR_1401_AND_8_TIME,
		PS_1401_I_RING_8_BRANCH_OPS => PS_1401_I_RING_8_BRANCH_OPS,
		PS_I_RING_9_TIME => PS_I_RING_9_TIME,
		PS_1401_I_RING_9_BRANCH_OPS => PS_1401_I_RING_9_BRANCH_OPS,
		MS_1401_TAKE_I_TO_B_CYCLE => MS_1401_TAKE_I_TO_B_CYCLE,
		MS_1401_BRANCH_LATCH => MS_1401_BRANCH_LATCH,
		PS_1401_BRANCH_LATCH => PS_1401_BRANCH_LATCH,
		MS_1401_BRANCH_LAST_EX_CYCLE => MS_1401_BRANCH_LAST_EX_CYCLE);

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
   
   testName := "12.60.19.1        ";
   
   wait for 30 ns;
   MS_PROGRAM_RESET_1 <= '0';
   wait for 1 us;
   MS_PROGRAM_RESET_1 <= '1';
   wait for 30 ns;
   
   PS_1401_MODE <= '1';  -- These are 1401 mode tests
   
   check1(PS_1401_BRANCH_LATCH,'0',testName,"SA");
   check1(MS_1401_BRANCH_LATCH,'1',testName,"SB");
   check1(MS_1401_BRANCH_LAST_EX_CYCLE,'1',testName,"SC");
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"SD");
   
   PS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"1A");
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';     
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"1B");
   PS_B_OR_W_OR_V_BRANCH_CND <= '1';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"1C");
   PS_B_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'1',testName,"1D");
   check1(MS_1401_BRANCH_LATCH,'0',testName,"1E");   
   -- Latch should remain set   
   PS_B_CYCLE <= '0';
   PS_1ST_SCAN <= '0';
   PS_NEXT_TO_LAST_LOGIC_GATE <= '0';     
   PS_B_OR_W_OR_V_BRANCH_CND <= '0';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'1',testName,"2A");
   -- Reset latch by leaving 1401 mode
   PS_1401_MODE <= '0';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"2B");
   
   -- Go back into 1401 mode for the rest of the tests
   
   PS_1401_MODE <= '1';
   
   -- Set the branch latch again
   
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"3A");
   PS_LAST_INSN_RO_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"3B");
   MS_1401_UNCOND_BRANCH <= '0';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'1',testName,"3C");
      
   -- Use this opportunity, with the branch latch set, and
   -- the 1401 Unconditional Branch set to test another gate
   
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"4A");
   check1(MS_1401_BRANCH_LAST_EX_CYCLE,'1',testName,"4B");
   PS_1401_NO_EXE_CY_BRANCH_OPS <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"4C");
   check1(MS_1401_BRANCH_LAST_EX_CYCLE,'1',testName,"4D");
   MS_1401_UNCOND_BRANCH <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"4E");      
   check1(MS_1401_BRANCH_LAST_EX_CYCLE,'0',testName,"4F");
   PS_1401_NO_EXE_CY_BRANCH_OPS <= '0';
   -- Branch latch should still be set
   check1(PS_1401_BRANCH_LATCH,'1',testName,"4G");

   -- Reset the latch - one more latch test to go
      
   MS_I_RING_OP_TIME <= '0';
   wait for 30 ns;
   check1(PS_1401_BRANCH_LATCH,'0',testName,"5A");
   MS_I_RING_OP_TIME <= '1';

   PS_1401_NO_EXE_CY_BRANCH_OPS <= '1'; -- Used for later etsts

   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"5B");
   check1(PS_1401_BRANCH_LATCH,'0',testName,"5C");
   PS_1401_COND_TEST_OP_CODE <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"5D");
   check1(PS_1401_BRANCH_LATCH,'0',testName,"5E");
   PS_1401_BRANCH_CONDITION <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"5F");
   check1(PS_1401_BRANCH_LATCH,'1',testName,"5G");
   
   -- Ignore the branch latch for the remaining tests
            
   PS_1401_BRANCH_CONDITION <= '0';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"5H");
   PS_1401_BRANCH_CONDITION_JRJ <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"5I");
   PS_1401_BRANCH_CONDITION_JRJ <= '0';
   PS_1401_COND_TEST_OP_CODE <= '0';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"5J");
   
   MS_1401_CLEAR_DOT_I_RING_11 <= '0';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"5K");
   MS_1401_CLEAR_DOT_I_RING_11 <= '1';
   wait for 30 ns;
   MS_J_TYPE_BRANCH_COND <= '0';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"5L");
   MS_J_TYPE_BRANCH_COND <= '1';
   
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"6A");
   PS_I_RING_6_OR_1401_AND_8_TIME <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"6B");
   PS_1401_I_RING_8_BRANCH_OPS <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"6C");
   PS_I_RING_6_OR_1401_AND_8_TIME <= '0';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"6D");
   PS_1401_I_RING_8_BRANCH_OPS <= '0';
   
   PS_I_RING_9_TIME <= '1';  -- Not a group test bench - use the actual name
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"7A");
   PS_1401_I_RING_9_BRANCH_OPS <= '1';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'0',testName,"7B");
   PS_I_RING_9_TIME <= '0';
   wait for 30 ns;
   check1(MS_1401_TAKE_I_TO_B_CYCLE,'1',testName,"7C");
   
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
   

end;
