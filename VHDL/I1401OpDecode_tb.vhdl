-- Test BenchVHDL for IBM SMS ALD group I1401OpDecode
-- Title: I1401OpDecode
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/24/2020 2:20:16 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity I1401OpDecode_tb is
end I1401OpDecode_tb;

architecture behavioral of I1401OpDecode_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component I1401OpDecode
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_OP_REG_1401_C_BIT: in STD_LOGIC;
		PS_OP_REG_1401_NOT_C_BIT: in STD_LOGIC;
		PS_I_O_PERCENT_LATCH: in STD_LOGIC;
		MS_I_O_PERCENT_LATCH: in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE: in STD_LOGIC;
		PS_1401_MODE: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		MS_STOP_DOT_BRANCH_OP_CODE: in STD_LOGIC;
		MS_E_CH_STACKER_SEL_OP_CODE: in STD_LOGIC;
		MS_E_CH_FORMS_CTRL_OP_CODE: in STD_LOGIC;
		PS_OP_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_REG_NOT_BUS: in STD_LOGIC_VECTOR (5 downTo 0);
		MS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (11 downTo 0);
		PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_NOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_B_DOT_A_DOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_B_DOT_NOT_A_DOT_8_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_4_DOT_2_DOT_NOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B: out STD_LOGIC;
		PS_OP_DCDR_4_DOT_2_DOT_1_B: out STD_LOGIC;
		PS_1401_D_OR_P_OR_Y_OP_CODES: out STD_LOGIC;
		PS_1401_P_OP_CODE: out STD_LOGIC;
		PS_1401_L_NOT_PERCENT_OP_CODE: out STD_LOGIC;
		MS_1401_D_OP_CODE: out STD_LOGIC;
		MS_1401_Y_OP_CODE: out STD_LOGIC;
		MS_1401_DATA_MOVE_OP: out STD_LOGIC;
		MS_1401_I_O_MOVE_OP: out STD_LOGIC;
		MS_1401_I_O_LOAD_OP: out STD_LOGIC;
		MS_1401_M_OP_CODE: out STD_LOGIC;
		MS_1401_L_OP_CODE: out STD_LOGIC;
		PS_1401_DATA_MOVE_OP_CODES: out STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE: out STD_LOGIC;
		PS_1401_STORE_A_AR_OP_CODE: out STD_LOGIC;
		PS_1401_POUND_SIGN_OP_CODE: out STD_LOGIC;
		MS_1401_CHAR_TEST_OP_CODE: out STD_LOGIC;
		MS_1401_COND_TEST_OP_CODE: out STD_LOGIC;
		MS_1401_B_OP_CODE: out STD_LOGIC;
		MS_1401_POUND_SIGN_OP_CODE: out STD_LOGIC;
		MS_1401_STORE_A_AR_OP_CODE: out STD_LOGIC;
		MS_1401_STORE_B_AR_OP_CODE: out STD_LOGIC;
		MS_1401_NO_OP_DOT_LIROC: out STD_LOGIC;
		PS_1401_NO_EXE_CY_BRANCH_OPS: out STD_LOGIC;
		PS_1401_I_RING_8_BRANCH_OPS: out STD_LOGIC;
		PS_1401_I_RING_9_BRANCH_OPS: out STD_LOGIC;
		PS_1401_CARD_OR_PRINT_OP_CODE: out STD_LOGIC;
		MS_1401_CARD_OR_PRINT_OP_CODE: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_OP_REG_1401_C_BIT: STD_LOGIC := '0';
	signal PS_OP_REG_1401_NOT_C_BIT: STD_LOGIC := '0';
	signal PS_I_O_PERCENT_LATCH: STD_LOGIC := '0';
	signal MS_I_O_PERCENT_LATCH: STD_LOGIC := '1';
	signal PS_LAST_INSN_RO_CYCLE: STD_LOGIC := '0';
	signal PS_1401_MODE: STD_LOGIC := '0';
	signal MS_CONTROL_REG_DISABLE: STD_LOGIC := '1';
	signal MS_STOP_DOT_BRANCH_OP_CODE: STD_LOGIC := '1';
	signal MS_E_CH_STACKER_SEL_OP_CODE: STD_LOGIC := '1';
	signal MS_E_CH_FORMS_CTRL_OP_CODE: STD_LOGIC := '1';
	signal PS_OP_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_OP_REG_NOT_BUS: STD_LOGIC_VECTOR (5 downTo 0) := "000000";
	signal MS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (11 downTo 0) := "111111111111";

	-- Outputs

	signal PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_NOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_B_DOT_A_DOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_B_DOT_NOT_A_DOT_8_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_4_DOT_2_DOT_NOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B: STD_LOGIC;
	signal PS_OP_DCDR_4_DOT_2_DOT_1_B: STD_LOGIC;
	signal PS_1401_D_OR_P_OR_Y_OP_CODES: STD_LOGIC;
	signal PS_1401_P_OP_CODE: STD_LOGIC;
	signal PS_1401_L_NOT_PERCENT_OP_CODE: STD_LOGIC;
	signal MS_1401_D_OP_CODE: STD_LOGIC;
	signal MS_1401_Y_OP_CODE: STD_LOGIC;
	signal MS_1401_DATA_MOVE_OP: STD_LOGIC;
	signal MS_1401_I_O_MOVE_OP: STD_LOGIC;
	signal MS_1401_I_O_LOAD_OP: STD_LOGIC;
	signal MS_1401_M_OP_CODE: STD_LOGIC;
	signal MS_1401_L_OP_CODE: STD_LOGIC;
	signal PS_1401_DATA_MOVE_OP_CODES: STD_LOGIC;
	signal PS_1401_COND_TEST_OP_CODE: STD_LOGIC;
	signal PS_1401_STORE_A_AR_OP_CODE: STD_LOGIC;
	signal PS_1401_POUND_SIGN_OP_CODE: STD_LOGIC;
	signal MS_1401_CHAR_TEST_OP_CODE: STD_LOGIC;
	signal MS_1401_COND_TEST_OP_CODE: STD_LOGIC;
	signal MS_1401_B_OP_CODE: STD_LOGIC;
	signal MS_1401_POUND_SIGN_OP_CODE: STD_LOGIC;
	signal MS_1401_STORE_A_AR_OP_CODE: STD_LOGIC;
	signal MS_1401_STORE_B_AR_OP_CODE: STD_LOGIC;
	signal MS_1401_NO_OP_DOT_LIROC: STD_LOGIC;
	signal PS_1401_NO_EXE_CY_BRANCH_OPS: STD_LOGIC;
	signal PS_1401_I_RING_8_BRANCH_OPS: STD_LOGIC;
	signal PS_1401_I_RING_9_BRANCH_OPS: STD_LOGIC;
	signal PS_1401_CARD_OR_PRINT_OP_CODE: STD_LOGIC;
	signal MS_1401_CARD_OR_PRINT_OP_CODE: STD_LOGIC;

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

	UUT: I1401OpDecode port map(
		FPGA_CLK => FPGA_CLK,
		PS_OP_REG_1401_C_BIT => PS_OP_REG_1401_C_BIT,
		PS_OP_REG_1401_NOT_C_BIT => PS_OP_REG_1401_NOT_C_BIT,
		PS_I_O_PERCENT_LATCH => PS_I_O_PERCENT_LATCH,
		MS_I_O_PERCENT_LATCH => MS_I_O_PERCENT_LATCH,
		PS_LAST_INSN_RO_CYCLE => PS_LAST_INSN_RO_CYCLE,
		PS_1401_MODE => PS_1401_MODE,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		MS_STOP_DOT_BRANCH_OP_CODE => MS_STOP_DOT_BRANCH_OP_CODE,
		MS_E_CH_STACKER_SEL_OP_CODE => MS_E_CH_STACKER_SEL_OP_CODE,
		MS_E_CH_FORMS_CTRL_OP_CODE => MS_E_CH_FORMS_CTRL_OP_CODE,
		PS_OP_REG_BUS => PS_OP_REG_BUS,
		PS_OP_REG_NOT_BUS => PS_OP_REG_NOT_BUS,
		MS_I_RING_HDL_BUS => MS_I_RING_HDL_BUS,
		PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_8_B => PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_8_B,
		PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B => PS_OP_DCDR_NOT_B_DOT_A_DOT_8_B,
		PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B => PS_OP_DCDR_NOT_B_DOT_A_DOT_NOT_8_B,
		PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_NOT_8_B => PS_OP_DCDR_NOT_B_DOT_NOT_A_DOT_NOT_8_B,
		PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B => PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B,
		PS_OP_DCDR_B_DOT_A_DOT_8_B => PS_OP_DCDR_B_DOT_A_DOT_8_B,
		PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B => PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B,
		PS_OP_DCDR_B_DOT_NOT_A_DOT_8_B => PS_OP_DCDR_B_DOT_NOT_A_DOT_8_B,
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B => PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_NOT_1_B,
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B => PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B,
		PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B => PS_OP_DCDR_NOT_4_DOT_2_DOT_1_B,
		PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B => PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B,
		PS_OP_DCDR_4_DOT_2_DOT_NOT_1_B => PS_OP_DCDR_4_DOT_2_DOT_NOT_1_B,
		PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B => PS_OP_DCDR_4_DOT_NOT_2_DOT_1_B,
		PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B => PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B,
		PS_OP_DCDR_4_DOT_2_DOT_1_B => PS_OP_DCDR_4_DOT_2_DOT_1_B,
		PS_1401_D_OR_P_OR_Y_OP_CODES => PS_1401_D_OR_P_OR_Y_OP_CODES,
		PS_1401_P_OP_CODE => PS_1401_P_OP_CODE,
		PS_1401_L_NOT_PERCENT_OP_CODE => PS_1401_L_NOT_PERCENT_OP_CODE,
		MS_1401_D_OP_CODE => MS_1401_D_OP_CODE,
		MS_1401_Y_OP_CODE => MS_1401_Y_OP_CODE,
		MS_1401_DATA_MOVE_OP => MS_1401_DATA_MOVE_OP,
		MS_1401_I_O_MOVE_OP => MS_1401_I_O_MOVE_OP,
		MS_1401_I_O_LOAD_OP => MS_1401_I_O_LOAD_OP,
		MS_1401_M_OP_CODE => MS_1401_M_OP_CODE,
		MS_1401_L_OP_CODE => MS_1401_L_OP_CODE,
		PS_1401_DATA_MOVE_OP_CODES => PS_1401_DATA_MOVE_OP_CODES,
		PS_1401_COND_TEST_OP_CODE => PS_1401_COND_TEST_OP_CODE,
		PS_1401_STORE_A_AR_OP_CODE => PS_1401_STORE_A_AR_OP_CODE,
		PS_1401_POUND_SIGN_OP_CODE => PS_1401_POUND_SIGN_OP_CODE,
		MS_1401_CHAR_TEST_OP_CODE => MS_1401_CHAR_TEST_OP_CODE,
		MS_1401_COND_TEST_OP_CODE => MS_1401_COND_TEST_OP_CODE,
		MS_1401_B_OP_CODE => MS_1401_B_OP_CODE,
		MS_1401_POUND_SIGN_OP_CODE => MS_1401_POUND_SIGN_OP_CODE,
		MS_1401_STORE_A_AR_OP_CODE => MS_1401_STORE_A_AR_OP_CODE,
		MS_1401_STORE_B_AR_OP_CODE => MS_1401_STORE_B_AR_OP_CODE,
		MS_1401_NO_OP_DOT_LIROC => MS_1401_NO_OP_DOT_LIROC,
		PS_1401_NO_EXE_CY_BRANCH_OPS => PS_1401_NO_EXE_CY_BRANCH_OPS,
		PS_1401_I_RING_8_BRANCH_OPS => PS_1401_I_RING_8_BRANCH_OPS,
		PS_1401_I_RING_9_BRANCH_OPS => PS_1401_I_RING_9_BRANCH_OPS,
		PS_1401_CARD_OR_PRINT_OP_CODE => PS_1401_CARD_OR_PRINT_OP_CODE,
		MS_1401_CARD_OR_PRINT_OP_CODE => MS_1401_CARD_OR_PRINT_OP_CODE);

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
