-- Test BenchVHDL for IBM SMS ALD group InsnReadoutControls
-- Title: InsnReadoutControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/2/2020 5:38:00 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity InsnReadoutControls_tb is
end InsnReadoutControls_tb;

architecture behavioral of InsnReadoutControls_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component InsnReadoutControls
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_LOGIC_GATE_C_1: in STD_LOGIC;
		MS_LOGIC_GATE_E_1: in STD_LOGIC;
		PS_I_RING_1_OR_6_TIME: in STD_LOGIC;
		MS_LAST_EX_DOT_NEXT_TO_LAST: in STD_LOGIC;
		MS_I_O_LAST_EX_DOT_Z: in STD_LOGIC;
		PS_1401_MODE_1: in STD_LOGIC;
		PS_PERCENT_TYPE_OP_CODES: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION: in STD_LOGIC;
		MS_CONSOLE_SET_START_CND: in STD_LOGIC;
		MS_SET_I_RING_INTERRUPT: in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME: in STD_LOGIC;
		PS_I_RING_1_OR_2_OR_3_OR_4_TIME: in STD_LOGIC;
		PS_I_RING_6_OR_7_OR_8_OR_9_TIME: in STD_LOGIC;
		PS_B_CYCLE_1: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		PS_C_CYCLE_1: in STD_LOGIC;
		PS_D_CYCLE: in STD_LOGIC;
		PS_INDEX_REQUIRED: in STD_LOGIC;
		MS_1401_MODE_1: in STD_LOGIC;
		PS_B_CH_WM_BIT_2: in STD_LOGIC;
		PS_INDEX_NOT_REQUIRED: in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE: in STD_LOGIC;
		PS_ADDR_TYPE_OP_CODES: in STD_LOGIC;
		PS_TWO_ADDRESS_OP_CODES: in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE: in STD_LOGIC;
		PS_LOGIC_GATE_B_1: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ: in STD_LOGIC;
		PS_I_CYCLE_CTRL: in STD_LOGIC;
		MS_UNITS_CTRL_LATCH: in STD_LOGIC;
		MS_INTR_BRANCH_DOT_B_CYCLE_CTRL: in STD_LOGIC;
		PS_ARS_NO_OP: in STD_LOGIC;
		PS_LOGIC_GATE_E_2: in STD_LOGIC;
		PS_OP_MOD_TIME: in STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME: in STD_LOGIC;
		PS_I_RING_1_OR_1401_AND_3_TIME: in STD_LOGIC;
		PS_NO_D_CY_AT_I_RING_6_OPS: in STD_LOGIC;
		PS_2_CHAR_ONLY_OP_CODES: in STD_LOGIC;
		PS_NO_C_OR_D_CYCLE_OP_CODES: in STD_LOGIC;
		PS_1_ADDR_PLUS_MOD_OP_CODES: in STD_LOGIC;
		PS_2_ADDR_NO_MOD_OP_CODES: in STD_LOGIC;
		PS_2_ADDR_PLUS_MOD_OP_CODES: in STD_LOGIC;
		PS_ARITH_TYPE_OP_CODES: in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES: in STD_LOGIC;
		MS_NOT_PERCENT_TYPE_OP_CODES: in STD_LOGIC;
		MS_TWO_ADDRESS_OP_CODES: in STD_LOGIC;
		PS_1401_MODE: in STD_LOGIC;
		MS_UNIT_CTRL_OP_CODE: in STD_LOGIC;
		MS_LOGIC_GATE_C_1: in STD_LOGIC;
		PS_CLEAR_OP_CODE: in STD_LOGIC;
		PS_1401_POUND_SIGN_OP_CODE: in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE: in STD_LOGIC;
		MS_1401_NO_OP_DOT_LIROC: in STD_LOGIC;
		PS_SET_WORD_MARK_OP_CODE: in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE: in STD_LOGIC;
		PS_C_CYCLE_OP_CODES: in STD_LOGIC;
		PS_ADD_TYPE_OP_CODES: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		MS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (11 downTo 0);
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_I_RING_CTRL: out STD_LOGIC;
		MS_I_RING_CTRL: out STD_LOGIC;
		PS_SET_I_CYCLE_CTRL: out STD_LOGIC;
		MS_1401_B_CYCLE_I_RING_OP: out STD_LOGIC;
		MS_I_RING_ADV: out STD_LOGIC;
		PS_I_RING_RESET: out STD_LOGIC;
		PS_B_CH_Q: out STD_LOGIC;
		PS_SET_OP_REG: out STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_1: out STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_2: out STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE: out STD_LOGIC;
		MS_LAST_INSN_RO_CYCLE: out STD_LOGIC;
		PS_RD_1ST_ADDR_TO_A_AND_C_AR: out STD_LOGIC;
		PS_RD_2ND_ADDR_TO_B_AND_D_AR: out STD_LOGIC;
		MS_1401_UNCOND_BRANCH: out STD_LOGIC;
		MS_1401_CLEAR_DOT_I_RING_11: out STD_LOGIC;
		PS_1401_LAST_I_CYCLE: out STD_LOGIC;
		MS_1401_LAST_I_CYCLE: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_E_1: STD_LOGIC := '1';
	signal PS_I_RING_1_OR_6_TIME: STD_LOGIC := '0';
	signal MS_LAST_EX_DOT_NEXT_TO_LAST: STD_LOGIC := '1';
	signal MS_I_O_LAST_EX_DOT_Z: STD_LOGIC := '1';
	signal PS_1401_MODE_1: STD_LOGIC := '0';
	signal PS_PERCENT_TYPE_OP_CODES: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal MS_CONS_RESET_START_CONDITION: STD_LOGIC := '1';
	signal MS_CONSOLE_SET_START_CND: STD_LOGIC := '1';
	signal MS_SET_I_RING_INTERRUPT: STD_LOGIC := '1';
	signal PS_I_RING_5_OR_10_TIME: STD_LOGIC := '0';
	signal PS_I_RING_1_OR_2_OR_3_OR_4_TIME: STD_LOGIC := '0';
	signal PS_I_RING_6_OR_7_OR_8_OR_9_TIME: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_C_CYCLE_1: STD_LOGIC := '0';
	signal PS_D_CYCLE: STD_LOGIC := '0';
	signal PS_INDEX_REQUIRED: STD_LOGIC := '0';
	signal MS_1401_MODE_1: STD_LOGIC := '1';
	signal PS_B_CH_WM_BIT_2: STD_LOGIC := '0';
	signal PS_INDEX_NOT_REQUIRED: STD_LOGIC := '0';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_ADDR_TYPE_OP_CODES: STD_LOGIC := '0';
	signal PS_TWO_ADDRESS_OP_CODES: STD_LOGIC := '0';
	signal PS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_B_1: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_3_JRJ: STD_LOGIC := '0';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_UNITS_CTRL_LATCH: STD_LOGIC := '1';
	signal MS_INTR_BRANCH_DOT_B_CYCLE_CTRL: STD_LOGIC := '1';
	signal PS_ARS_NO_OP: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_E_2: STD_LOGIC := '0';
	signal PS_OP_MOD_TIME: STD_LOGIC := '0';
	signal PS_I_RING_6_OR_1401_AND_8_TIME: STD_LOGIC := '0';
	signal PS_I_RING_1_OR_1401_AND_3_TIME: STD_LOGIC := '0';
	signal PS_NO_D_CY_AT_I_RING_6_OPS: STD_LOGIC := '0';
	signal PS_2_CHAR_ONLY_OP_CODES: STD_LOGIC := '0';
	signal PS_NO_C_OR_D_CYCLE_OP_CODES: STD_LOGIC := '0';
	signal PS_1_ADDR_PLUS_MOD_OP_CODES: STD_LOGIC := '0';
	signal PS_2_ADDR_NO_MOD_OP_CODES: STD_LOGIC := '0';
	signal PS_2_ADDR_PLUS_MOD_OP_CODES: STD_LOGIC := '0';
	signal PS_ARITH_TYPE_OP_CODES: STD_LOGIC := '0';
	signal PS_MPLY_OR_DIV_OP_CODES: STD_LOGIC := '0';
	signal MS_NOT_PERCENT_TYPE_OP_CODES: STD_LOGIC := '1';
	signal MS_TWO_ADDRESS_OP_CODES: STD_LOGIC := '1';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal MS_UNIT_CTRL_OP_CODE: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_C_1: STD_LOGIC := '1';
	signal PS_CLEAR_OP_CODE: STD_LOGIC := '0';
	signal PS_1401_POUND_SIGN_OP_CODE: STD_LOGIC := '0';
	signal PS_1401_COND_TEST_OP_CODE: STD_LOGIC := '0';
	signal MS_1401_NO_OP_DOT_LIROC: STD_LOGIC := '1';
	signal PS_SET_WORD_MARK_OP_CODE: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '1';
	signal PS_C_CYCLE_OP_CODES: STD_LOGIC := '0';
	signal PS_ADD_TYPE_OP_CODES: STD_LOGIC := '0';
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";
	signal MS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (11 downTo 0) := "111111111111";
	signal PS_B_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_CH_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

	-- Outputs

	signal PS_I_RING_CTRL: STD_LOGIC;
	signal MS_I_RING_CTRL: STD_LOGIC;
	signal PS_SET_I_CYCLE_CTRL: STD_LOGIC;
	signal MS_1401_B_CYCLE_I_RING_OP: STD_LOGIC;
	signal MS_I_RING_ADV: STD_LOGIC;
	signal PS_I_RING_RESET: STD_LOGIC;
	signal PS_B_CH_Q: STD_LOGIC;
	signal PS_SET_OP_REG: STD_LOGIC;
	signal PS_LAST_INSN_RO_CYCLE_1: STD_LOGIC;
	signal PS_LAST_INSN_RO_CYCLE_2: STD_LOGIC;
	signal PS_LAST_INSN_RO_CYCLE: STD_LOGIC;
	signal MS_LAST_INSN_RO_CYCLE: STD_LOGIC;
	signal PS_RD_1ST_ADDR_TO_A_AND_C_AR: STD_LOGIC;
	signal PS_RD_2ND_ADDR_TO_B_AND_D_AR: STD_LOGIC;
	signal MS_1401_UNCOND_BRANCH: STD_LOGIC;
	signal MS_1401_CLEAR_DOT_I_RING_11: STD_LOGIC;
	signal PS_1401_LAST_I_CYCLE: STD_LOGIC;
	signal MS_1401_LAST_I_CYCLE: STD_LOGIC;

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

	UUT: InsnReadoutControls port map(
		FPGA_CLK => FPGA_CLK,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		MS_LOGIC_GATE_E_1 => MS_LOGIC_GATE_E_1,
		PS_I_RING_1_OR_6_TIME => PS_I_RING_1_OR_6_TIME,
		MS_LAST_EX_DOT_NEXT_TO_LAST => MS_LAST_EX_DOT_NEXT_TO_LAST,
		MS_I_O_LAST_EX_DOT_Z => MS_I_O_LAST_EX_DOT_Z,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		PS_PERCENT_TYPE_OP_CODES => PS_PERCENT_TYPE_OP_CODES,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		MS_CONS_RESET_START_CONDITION => MS_CONS_RESET_START_CONDITION,
		MS_CONSOLE_SET_START_CND => MS_CONSOLE_SET_START_CND,
		MS_SET_I_RING_INTERRUPT => MS_SET_I_RING_INTERRUPT,
		PS_I_RING_5_OR_10_TIME => PS_I_RING_5_OR_10_TIME,
		PS_I_RING_1_OR_2_OR_3_OR_4_TIME => PS_I_RING_1_OR_2_OR_3_OR_4_TIME,
		PS_I_RING_6_OR_7_OR_8_OR_9_TIME => PS_I_RING_6_OR_7_OR_8_OR_9_TIME,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_C_CYCLE_1 => PS_C_CYCLE_1,
		PS_D_CYCLE => PS_D_CYCLE,
		PS_INDEX_REQUIRED => PS_INDEX_REQUIRED,
		MS_1401_MODE_1 => MS_1401_MODE_1,
		PS_B_CH_WM_BIT_2 => PS_B_CH_WM_BIT_2,
		PS_INDEX_NOT_REQUIRED => PS_INDEX_NOT_REQUIRED,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		PS_ADDR_TYPE_OP_CODES => PS_ADDR_TYPE_OP_CODES,
		PS_TWO_ADDRESS_OP_CODES => PS_TWO_ADDRESS_OP_CODES,
		PS_STORAGE_SCAN_ROUTINE => PS_STORAGE_SCAN_ROUTINE,
		PS_LOGIC_GATE_B_1 => PS_LOGIC_GATE_B_1,
		PS_2ND_CLOCK_PULSE_3_JRJ => PS_2ND_CLOCK_PULSE_3_JRJ,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		MS_UNITS_CTRL_LATCH => MS_UNITS_CTRL_LATCH,
		MS_INTR_BRANCH_DOT_B_CYCLE_CTRL => MS_INTR_BRANCH_DOT_B_CYCLE_CTRL,
		PS_ARS_NO_OP => PS_ARS_NO_OP,
		PS_LOGIC_GATE_E_2 => PS_LOGIC_GATE_E_2,
		PS_OP_MOD_TIME => PS_OP_MOD_TIME,
		PS_I_RING_6_OR_1401_AND_8_TIME => PS_I_RING_6_OR_1401_AND_8_TIME,
		PS_I_RING_1_OR_1401_AND_3_TIME => PS_I_RING_1_OR_1401_AND_3_TIME,
		PS_NO_D_CY_AT_I_RING_6_OPS => PS_NO_D_CY_AT_I_RING_6_OPS,
		PS_2_CHAR_ONLY_OP_CODES => PS_2_CHAR_ONLY_OP_CODES,
		PS_NO_C_OR_D_CYCLE_OP_CODES => PS_NO_C_OR_D_CYCLE_OP_CODES,
		PS_1_ADDR_PLUS_MOD_OP_CODES => PS_1_ADDR_PLUS_MOD_OP_CODES,
		PS_2_ADDR_NO_MOD_OP_CODES => PS_2_ADDR_NO_MOD_OP_CODES,
		PS_2_ADDR_PLUS_MOD_OP_CODES => PS_2_ADDR_PLUS_MOD_OP_CODES,
		PS_ARITH_TYPE_OP_CODES => PS_ARITH_TYPE_OP_CODES,
		PS_MPLY_OR_DIV_OP_CODES => PS_MPLY_OR_DIV_OP_CODES,
		MS_NOT_PERCENT_TYPE_OP_CODES => MS_NOT_PERCENT_TYPE_OP_CODES,
		MS_TWO_ADDRESS_OP_CODES => MS_TWO_ADDRESS_OP_CODES,
		PS_1401_MODE => PS_1401_MODE,
		MS_UNIT_CTRL_OP_CODE => MS_UNIT_CTRL_OP_CODE,
		MS_LOGIC_GATE_C_1 => MS_LOGIC_GATE_C_1,
		PS_CLEAR_OP_CODE => PS_CLEAR_OP_CODE,
		PS_1401_POUND_SIGN_OP_CODE => PS_1401_POUND_SIGN_OP_CODE,
		PS_1401_COND_TEST_OP_CODE => PS_1401_COND_TEST_OP_CODE,
		MS_1401_NO_OP_DOT_LIROC => MS_1401_NO_OP_DOT_LIROC,
		PS_SET_WORD_MARK_OP_CODE => PS_SET_WORD_MARK_OP_CODE,
		MS_STORAGE_SCAN_ROUTINE => MS_STORAGE_SCAN_ROUTINE,
		PS_C_CYCLE_OP_CODES => PS_C_CYCLE_OP_CODES,
		PS_ADD_TYPE_OP_CODES => PS_ADD_TYPE_OP_CODES,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		MS_I_RING_HDL_BUS => MS_I_RING_HDL_BUS,
		PS_B_CH_NOT_BUS => PS_B_CH_NOT_BUS,
		PS_B_CH_BUS => PS_B_CH_BUS,
		PS_I_RING_CTRL => PS_I_RING_CTRL,
		MS_I_RING_CTRL => MS_I_RING_CTRL,
		PS_SET_I_CYCLE_CTRL => PS_SET_I_CYCLE_CTRL,
		MS_1401_B_CYCLE_I_RING_OP => MS_1401_B_CYCLE_I_RING_OP,
		MS_I_RING_ADV => MS_I_RING_ADV,
		PS_I_RING_RESET => PS_I_RING_RESET,
		PS_B_CH_Q => PS_B_CH_Q,
		PS_SET_OP_REG => PS_SET_OP_REG,
		PS_LAST_INSN_RO_CYCLE_1 => PS_LAST_INSN_RO_CYCLE_1,
		PS_LAST_INSN_RO_CYCLE_2 => PS_LAST_INSN_RO_CYCLE_2,
		PS_LAST_INSN_RO_CYCLE => PS_LAST_INSN_RO_CYCLE,
		MS_LAST_INSN_RO_CYCLE => MS_LAST_INSN_RO_CYCLE,
		PS_RD_1ST_ADDR_TO_A_AND_C_AR => PS_RD_1ST_ADDR_TO_A_AND_C_AR,
		PS_RD_2ND_ADDR_TO_B_AND_D_AR => PS_RD_2ND_ADDR_TO_B_AND_D_AR,
		MS_1401_UNCOND_BRANCH => MS_1401_UNCOND_BRANCH,
		MS_1401_CLEAR_DOT_I_RING_11 => MS_1401_CLEAR_DOT_I_RING_11,
		PS_1401_LAST_I_CYCLE => PS_1401_LAST_I_CYCLE,
		MS_1401_LAST_I_CYCLE => MS_1401_LAST_I_CYCLE);

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

   variable testName: string(1 to 10);
   variable subtest: integer;

   begin
   
   testName := "12.13.01.1";
   
   --  reset
   
   wait for 30 ns;
   MS_PROGRAM_RESET_1 <= '0';
   wait for 1 us;
   MS_PROGRAM_RESET_1 <= '1';
   wait for 30 ns;   
   check1(MS_I_RING_ADV,'1',testName,"SA");
   check1(PS_I_RING_CTRL,'1',testName,"SB");  -- Gets set by a reset!

   -- Test Special Advance Control latch (via I Ring ADV)
   
   PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
   
   PS_I_RING_1_OR_6_TIME <= '1';
   PS_1401_MODE_1 <= '1';
   wait for 30 ns;
   check1(MS_I_RING_ADV,'1',testName,"1A");
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(MS_I_RING_ADV,'0',testName,"1B");
   PS_I_RING_1_OR_6_TIME <= '0';
   PS_1401_MODE_1 <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   wait for 30 ns;
   -- Should stay latched at this poitn
   check1(MS_I_RING_ADV,'0',testName,"1C");
   -- Reset the latch
   MS_LOGIC_GATE_E_1 <= '0';
   wait for 30 ns;
   check1(MS_I_RING_ADV,'1',testName,"1D");
   MS_LOGIC_GATE_E_1 <= '1';
   PS_PERCENT_TYPE_OP_CODES <= '1';
   PS_I_RING_HDL_BUS(1) <= '1';
   wait for 30 ns;
   check1(MS_I_RING_ADV,'1',testName,"1E");
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(MS_I_RING_ADV,'0',testName,"1F");
   PS_PERCENT_TYPE_OP_CODES <= '0';
   PS_I_RING_HDL_BUS(1) <= '0';
   PS_LOGIC_GATE_C_1 <= '0';
   -- Should stay latched at this poitn
   wait for 30 ns;
   check1(MS_I_RING_ADV,'0',testName,"1G");
   -- Reset the latch
   MS_LOGIC_GATE_E_1 <= '0';
   wait for 30 ns;
   check1(MS_I_RING_ADV,'1',testName,"1H");
   
   -- Test I Ring Ctrl Latch -- It starts off SET
   
   check1(PS_I_RING_CTRL,'1',testName,"2A");
   check1(MS_I_RING_CTRL,'0',testName,"2A-1");
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_I_RING_CTRL,'0',testName,"2B");
   check1(MS_I_RING_CTRL,'1',testName,"2B-1");   
   MS_LOGIC_GATE_D_1 <= '1';
   MS_CONSOLE_SET_START_CND <= '0';
   wait for 30 ns;   
   check1(PS_I_RING_CTRL,'1',testName,"2C");
   MS_CONSOLE_SET_START_CND <= '1';
   MS_CONS_RESET_START_CONDITION <= '0';
   wait for 30 ns;
   check1(PS_I_RING_CTRL,'0',testName,"2D");
   MS_CONS_RESET_START_CONDITION <= '1';   
   MS_LAST_EX_DOT_NEXT_TO_LAST <= '0';
   wait for 30 ns;   
   check1(PS_I_RING_CTRL,'1',testName,"2E");
   MS_LAST_EX_DOT_NEXT_TO_LAST <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_I_RING_CTRL,'0',testName,"2F");
   MS_LOGIC_GATE_D_1 <= '1';
   MS_SET_I_RING_INTERRUPT <=  '0';
   wait for 30 ns;   
   check1(PS_I_RING_CTRL,'1',testName,"2G");
   MS_SET_I_RING_INTERRUPT <=  '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_I_RING_CTRL,'0',testName,"2H");
   MS_LOGIC_GATE_D_1 <= '1';
   MS_I_O_LAST_EX_DOT_Z <= '0';
   wait for 30 ns;   
   check1(PS_I_RING_CTRL,'1',testName,"2I");
   MS_I_O_LAST_EX_DOT_Z <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_I_RING_CTRL,'0',testName,"2J");
   MS_LOGIC_GATE_D_1 <= '1';
   
  
   
   
         

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
