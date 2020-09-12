-- Test Bench VHDL for IBM SMS ALD page 15.49.01.1
-- Title: BLANK ASSEMBLY CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/11/2020 8:49:58 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC_tb is
end ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC_tb;

architecture behavioral of ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN:	 in STD_LOGIC;
		PS_COMPARE_TYPE_OP_CODES:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN:	 in STD_LOGIC;
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT:	 in STD_LOGIC;
		MS_STOP_AT_F_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_A_CH_INVALID:	 in STD_LOGIC;
		MV_ASTERISK_INS_CONSOLE_SW_OFF:	 in STD_LOGIC;
		PS_LOAD_CYCLE:	 in STD_LOGIC;
		PS_USE_NO_WM_STAR_EDIT:	 in STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE:	 in STD_LOGIC;
		PS_MOVE_CYCLE:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PB_1401_MODE:	 in STD_LOGIC;
		MS_X_CYCLE_DOT_NOT_CR_DISABLE:	 in STD_LOGIC;
		MS_MPLY_DOT_N_DOT_C:	 in STD_LOGIC;
		PS_A_OR_B_CYCLE:	 in STD_LOGIC;
		PS_C_CYCLE:	 in STD_LOGIC;
		PS_CLEAR_WORD_MARK_OP_CODE:	 in STD_LOGIC;
		PB_B_CH_NOT_GROUP_MARK_WM:	 in STD_LOGIC;
		PS_A_RING_3_TIME:	 in STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		PB_ANY_LIST_INPUT_CYCLE:	 in STD_LOGIC;
		PS_USE_NO_ZONES_STAR_ARITH:	 in STD_LOGIC;
		PS_USE_NO_ZONES_STAR_EDIT:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_OUTPUT_CYCLE:	 in STD_LOGIC;
		MS_WRITE_EDIT_BLANK:	 in STD_LOGIC;
		PS_A_CH_VALID_OR_AST_SWITCH_OFF:	 in STD_LOGIC;
		PS_A_CH_CHAR_A_BIT_ONLY:	 in STD_LOGIC;
		PS_EVEN_PARITY_CYCLE:	 in STD_LOGIC;
		MB_A_OR_S_DOT_B_DOT_Y_OR_X_DOT_S_OR_NOT_BW_DOT_1401:	 in STD_LOGIC;
		PS_OUTPUT_WM_CYCLE:	 in STD_LOGIC;
		PB_OUTPUT_WM_CYCLE:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_OUTPUT_CYCLE:	 in STD_LOGIC;
		PB_USE_NO_WM:	 out STD_LOGIC;
		MS_1401_STORE_AR_DOT_C_CYCLE:	 out STD_LOGIC;
		MB_USE_NO_ZONES:	 out STD_LOGIC;
		MB_USE_NO_NUMERICS:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN: STD_LOGIC := '1';
	signal PS_COMPARE_TYPE_OP_CODES: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal MS_B_CYCLE_DOT_NO_SCAN: STD_LOGIC := '1';
	signal MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: STD_LOGIC := '1';
	signal MS_STOP_AT_F_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_A_CH_INVALID: STD_LOGIC := '0';
	signal MV_ASTERISK_INS_CONSOLE_SW_OFF: STD_LOGIC := '1';
	signal PS_LOAD_CYCLE: STD_LOGIC := '0';
	signal PS_USE_NO_WM_STAR_EDIT: STD_LOGIC := '0';
	signal MS_FILE_OP_DOT_D_CYCLE: STD_LOGIC := '1';
	signal PS_MOVE_CYCLE: STD_LOGIC := '0';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal PB_1401_MODE: STD_LOGIC := '0';
	signal MS_X_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC := '1';
	signal MS_MPLY_DOT_N_DOT_C: STD_LOGIC := '1';
	signal PS_A_OR_B_CYCLE: STD_LOGIC := '0';
	signal PS_C_CYCLE: STD_LOGIC := '0';
	signal PS_CLEAR_WORD_MARK_OP_CODE: STD_LOGIC := '0';
	signal PB_B_CH_NOT_GROUP_MARK_WM: STD_LOGIC := '0';
	signal PS_A_RING_3_TIME: STD_LOGIC := '0';
	signal PS_INPUT_CYCLE_NOT_LAST_INPUT: STD_LOGIC := '0';
	signal PS_A_CYCLE: STD_LOGIC := '0';
	signal PB_ANY_LIST_INPUT_CYCLE: STD_LOGIC := '0';
	signal PS_USE_NO_ZONES_STAR_ARITH: STD_LOGIC := '0';
	signal PS_USE_NO_ZONES_STAR_EDIT: STD_LOGIC := '0';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal MS_CONTROL_REG_DISABLE: STD_LOGIC := '1';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal PS_OUTPUT_CYCLE: STD_LOGIC := '0';
	signal MS_WRITE_EDIT_BLANK: STD_LOGIC := '1';
	signal PS_A_CH_VALID_OR_AST_SWITCH_OFF: STD_LOGIC := '0';
	signal PS_A_CH_CHAR_A_BIT_ONLY: STD_LOGIC := '0';
	signal PS_EVEN_PARITY_CYCLE: STD_LOGIC := '0';
	signal MB_A_OR_S_DOT_B_DOT_Y_OR_X_DOT_S_OR_NOT_BW_DOT_1401: STD_LOGIC := '1';
	signal PS_OUTPUT_WM_CYCLE: STD_LOGIC := '0';
	signal PB_OUTPUT_WM_CYCLE: STD_LOGIC := '0';
	signal PS_B_CH_NOT_WM_BIT: STD_LOGIC := '0';
	signal PB_OUTPUT_CYCLE: STD_LOGIC := '0';

	-- Outputs

	signal PB_USE_NO_WM: STD_LOGIC;
	signal MS_1401_STORE_AR_DOT_C_CYCLE: STD_LOGIC;
	signal MB_USE_NO_ZONES: STD_LOGIC;
	signal MB_USE_NO_NUMERICS: STD_LOGIC;

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

   constant MX_X1A_POS: integer := 7;
   constant MX_X6A_POS: integer := 8;

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

	UUT: ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN => MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN,
		PS_COMPARE_TYPE_OP_CODES => PS_COMPARE_TYPE_OP_CODES,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		MS_B_CYCLE_DOT_NO_SCAN => MS_B_CYCLE_DOT_NO_SCAN,
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT => MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT,
		MS_STOP_AT_F_DOT_B_CYCLE => MS_STOP_AT_F_DOT_B_CYCLE,
		PS_A_CH_INVALID => PS_A_CH_INVALID,
		MV_ASTERISK_INS_CONSOLE_SW_OFF => MV_ASTERISK_INS_CONSOLE_SW_OFF,
		PS_LOAD_CYCLE => PS_LOAD_CYCLE,
		PS_USE_NO_WM_STAR_EDIT => PS_USE_NO_WM_STAR_EDIT,
		MS_FILE_OP_DOT_D_CYCLE => MS_FILE_OP_DOT_D_CYCLE,
		PS_MOVE_CYCLE => PS_MOVE_CYCLE,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		PB_1401_MODE => PB_1401_MODE,
		MS_X_CYCLE_DOT_NOT_CR_DISABLE => MS_X_CYCLE_DOT_NOT_CR_DISABLE,
		MS_MPLY_DOT_N_DOT_C => MS_MPLY_DOT_N_DOT_C,
		PS_A_OR_B_CYCLE => PS_A_OR_B_CYCLE,
		PS_C_CYCLE => PS_C_CYCLE,
		PS_CLEAR_WORD_MARK_OP_CODE => PS_CLEAR_WORD_MARK_OP_CODE,
		PB_B_CH_NOT_GROUP_MARK_WM => PB_B_CH_NOT_GROUP_MARK_WM,
		PS_A_RING_3_TIME => PS_A_RING_3_TIME,
		PS_INPUT_CYCLE_NOT_LAST_INPUT => PS_INPUT_CYCLE_NOT_LAST_INPUT,
		PS_A_CYCLE => PS_A_CYCLE,
		PB_ANY_LIST_INPUT_CYCLE => PB_ANY_LIST_INPUT_CYCLE,
		PS_USE_NO_ZONES_STAR_ARITH => PS_USE_NO_ZONES_STAR_ARITH,
		PS_USE_NO_ZONES_STAR_EDIT => PS_USE_NO_ZONES_STAR_EDIT,
		PS_X_CYCLE => PS_X_CYCLE,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		MS_1401_MODE => MS_1401_MODE,
		PS_OUTPUT_CYCLE => PS_OUTPUT_CYCLE,
		MS_WRITE_EDIT_BLANK => MS_WRITE_EDIT_BLANK,
		PS_A_CH_VALID_OR_AST_SWITCH_OFF => PS_A_CH_VALID_OR_AST_SWITCH_OFF,
		PS_A_CH_CHAR_A_BIT_ONLY => PS_A_CH_CHAR_A_BIT_ONLY,
		PS_EVEN_PARITY_CYCLE => PS_EVEN_PARITY_CYCLE,
		MB_A_OR_S_DOT_B_DOT_Y_OR_X_DOT_S_OR_NOT_BW_DOT_1401 => MB_A_OR_S_DOT_B_DOT_Y_OR_X_DOT_S_OR_NOT_BW_DOT_1401,
		PS_OUTPUT_WM_CYCLE => PS_OUTPUT_WM_CYCLE,
		PB_OUTPUT_WM_CYCLE => PB_OUTPUT_WM_CYCLE,
		PS_B_CH_NOT_WM_BIT => PS_B_CH_NOT_WM_BIT,
		PB_OUTPUT_CYCLE => PB_OUTPUT_CYCLE,
		PB_USE_NO_WM => PB_USE_NO_WM,
		MS_1401_STORE_AR_DOT_C_CYCLE => MS_1401_STORE_AR_DOT_C_CYCLE,
		MB_USE_NO_ZONES => MB_USE_NO_ZONES,
		MB_USE_NO_NUMERICS => MB_USE_NO_NUMERICS);

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
   variable tv: std_logic_vector(15 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;

   begin

   -- Your test bench code

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 2 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
