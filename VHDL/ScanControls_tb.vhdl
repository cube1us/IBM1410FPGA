-- Test BenchVHDL for IBM SMS ALD group ScanControls
-- Title: ScanControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/8/2020 2:55:03 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ScanControls_tb is
end ScanControls_tb;

architecture behavioral of ScanControls_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ScanControls
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_LOGIC_GATE_B_1: in STD_LOGIC;
		PS_LOGIC_GATE_C_1: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		MS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE: in STD_LOGIC;
		MS_1401_I_O_SET_BRANCH_CNDS: in STD_LOGIC;
		MS_DISPLAY_OR_ALTER_SET_2ND_SCAN: in STD_LOGIC;
		MS_DATA_MOVE_A_CYCLE_CTRL_SET: in STD_LOGIC;
		MS_EDIT_SET_A_CYCLE_CTRL: in STD_LOGIC;
		MS_SET_A_CYCLE_CTRL_ON_Z_OP: in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_A: in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_B: in STD_LOGIC;
		MS_LAST_I_CYCLE_B: in STD_LOGIC;
		MS_G_OP_SET_C_CYCLE_CTRL_B: in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_A: in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_B: in STD_LOGIC;
		MS_ALT_ROUTINE_DOT_2ND_SCAN: in STD_LOGIC;
		MS_WORD_MARK_OP_DOT_A_CYCLE: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_A: in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_1: in STD_LOGIC;
		MS_1401_TAKE_I_TO_B_CYCLE: in STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN: in STD_LOGIC;
		MS_FILE_OP_TAKE_EXTENSION_CYCLE: in STD_LOGIC;
		MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE: in STD_LOGIC;
		PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9: in STD_LOGIC;
		PS_SET_NO_SCAN_CTRL_STAR_BR_OPS: in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE: in STD_LOGIC;
		PS_1ST_SCAN_FIRST_OP_CODES: in STD_LOGIC;
		MS_CLEAR_OP_TAKE_1ST_SCAN: in STD_LOGIC;
		MS_MPLY_DOT_N_DOT_C: in STD_LOGIC;
		PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH: in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_C: in STD_LOGIC;
		MS_TLU_SET_B_CYCLE_CTRL: in STD_LOGIC;
		MS_CMP_MODE_SET_A_CYCLE_CTRL_A: in STD_LOGIC;
		MS_TLU_SET_A_CYCLE_CTRL_B: in STD_LOGIC;
		MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_G: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_B: in STD_LOGIC;
		PS_SET_2ND_SCAN_CTRL_STAR_ARITH: in STD_LOGIC;
		MS_EDIT_SKID_CYCLE: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_E: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_F: in STD_LOGIC;
		PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH: in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_D: in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY: in STD_LOGIC;
		PS_SET_3RD_SCAN_CTRL_STAR_ARITH: in STD_LOGIC;
		PS_OP_MOD_REG_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_1ST_SCAN: out STD_LOGIC;
		PS_NO_SCAN: out STD_LOGIC;
		PS_NO_SCAN_1: out STD_LOGIC;
		MS_NO_SCAN: out STD_LOGIC;
		MS_1ST_SCAN: out STD_LOGIC;
		PS_2ND_SCAN: out STD_LOGIC;
		MS_2ND_SCAN: out STD_LOGIC;
		PS_1ST_OR_2ND_SCAN: out STD_LOGIC;
		PS_3RD_SCAN: out STD_LOGIC;
		MS_3RD_SCAN: out STD_LOGIC;
		PS_NO_SCAN_CTRL: out STD_LOGIC;
		PS_1ST_SCAN_CTRL: out STD_LOGIC;
		MS_NO_SCAN_CTRL: out STD_LOGIC;
		MS_1ST_SCAN_CTRL: out STD_LOGIC;
		MS_2ND_SCAN_CTRL: out STD_LOGIC;
		MS_3RD_SCAN_CTRL: out STD_LOGIC;
		PS_1ST_OR_NO_OR_3RD_SCAN: out STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN: out STD_LOGIC;
		PS_1ST_OR_3RD_SCAN: out STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_SCAN: out STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL: out STD_LOGIC;
		PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL: out STD_LOGIC;
		LAMPS_SCAN: out STD_LOGIC_VECTOR (3 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_C_1: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal PS_NEXT_TO_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal MS_1401_I_O_SET_BRANCH_CNDS: STD_LOGIC := '1';
	signal MS_DISPLAY_OR_ALTER_SET_2ND_SCAN: STD_LOGIC := '1';
	signal MS_DATA_MOVE_A_CYCLE_CTRL_SET: STD_LOGIC := '1';
	signal MS_EDIT_SET_A_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_SET_A_CYCLE_CTRL_ON_Z_OP: STD_LOGIC := '1';
	signal MS_STORE_AR_SET_A_CYCLE_CTRL_A: STD_LOGIC := '1';
	signal MS_STORE_AR_SET_A_CYCLE_CTRL_B: STD_LOGIC := '1';
	signal MS_LAST_I_CYCLE_B: STD_LOGIC := '1';
	signal MS_G_OP_SET_C_CYCLE_CTRL_B: STD_LOGIC := '1';
	signal MS_STORE_AR_SET_C_CYCLE_CTRL_A: STD_LOGIC := '1';
	signal MS_STORE_AR_SET_C_CYCLE_CTRL_B: STD_LOGIC := '1';
	signal MS_ALT_ROUTINE_DOT_2ND_SCAN: STD_LOGIC := '1';
	signal MS_WORD_MARK_OP_DOT_A_CYCLE: STD_LOGIC := '1';
	signal MS_EDIT_SET_B_CYCLE_CTRL_A: STD_LOGIC := '1';
	signal PS_LAST_INSN_RO_CYCLE_1: STD_LOGIC := '0';
	signal MS_1401_TAKE_I_TO_B_CYCLE: STD_LOGIC := '1';
	signal MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN: STD_LOGIC := '1';
	signal MS_FILE_OP_TAKE_EXTENSION_CYCLE: STD_LOGIC := '1';
	signal MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE: STD_LOGIC := '1';
	signal PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9: STD_LOGIC := '0';
	signal PS_SET_NO_SCAN_CTRL_STAR_BR_OPS: STD_LOGIC := '0';
	signal PS_DATA_MOVE_OP_CODE: STD_LOGIC := '0';
	signal PS_1ST_SCAN_FIRST_OP_CODES: STD_LOGIC := '0';
	signal MS_CLEAR_OP_TAKE_1ST_SCAN: STD_LOGIC := '1';
	signal MS_MPLY_DOT_N_DOT_C: STD_LOGIC := '1';
	signal PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH: STD_LOGIC := '0';
	signal MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: STD_LOGIC := '1';
	signal MS_EDIT_SET_B_CYCLE_CTRL_C: STD_LOGIC := '1';
	signal MS_TLU_SET_B_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_CMP_MODE_SET_A_CYCLE_CTRL_A: STD_LOGIC := '1';
	signal MS_TLU_SET_A_CYCLE_CTRL_B: STD_LOGIC := '1';
	signal MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1: STD_LOGIC := '1';
	signal MS_EDIT_SET_B_CYCLE_CTRL_G: STD_LOGIC := '1';
	signal MS_EDIT_SET_B_CYCLE_CTRL_B: STD_LOGIC := '1';
	signal PS_SET_2ND_SCAN_CTRL_STAR_ARITH: STD_LOGIC := '0';
	signal MS_EDIT_SKID_CYCLE: STD_LOGIC := '1';
	signal MS_EDIT_SET_B_CYCLE_CTRL_E: STD_LOGIC := '1';
	signal MS_EDIT_SET_B_CYCLE_CTRL_F: STD_LOGIC := '1';
	signal PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH: STD_LOGIC := '0';
	signal MS_EDIT_SET_B_CYCLE_CTRL_D: STD_LOGIC := '1';
	signal MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY: STD_LOGIC := '1';
	signal PS_SET_3RD_SCAN_CTRL_STAR_ARITH: STD_LOGIC := '0';
	signal PS_OP_MOD_REG_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_OP_MOD_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

	-- Outputs

	signal PS_1ST_SCAN: STD_LOGIC;
	signal PS_NO_SCAN: STD_LOGIC;
	signal PS_NO_SCAN_1: STD_LOGIC;
	signal MS_NO_SCAN: STD_LOGIC;
	signal MS_1ST_SCAN: STD_LOGIC;
	signal PS_2ND_SCAN: STD_LOGIC;
	signal MS_2ND_SCAN: STD_LOGIC;
	signal PS_1ST_OR_2ND_SCAN: STD_LOGIC;
	signal PS_3RD_SCAN: STD_LOGIC;
	signal MS_3RD_SCAN: STD_LOGIC;
	signal PS_NO_SCAN_CTRL: STD_LOGIC;
	signal PS_1ST_SCAN_CTRL: STD_LOGIC;
	signal MS_NO_SCAN_CTRL: STD_LOGIC;
	signal MS_1ST_SCAN_CTRL: STD_LOGIC;
	signal MS_2ND_SCAN_CTRL: STD_LOGIC;
	signal MS_3RD_SCAN_CTRL: STD_LOGIC;
	signal PS_1ST_OR_NO_OR_3RD_SCAN: STD_LOGIC;
	signal PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN: STD_LOGIC;
	signal PS_1ST_OR_3RD_SCAN: STD_LOGIC;
	signal PS_NO_OR_1ST_OR_2ND_SCAN: STD_LOGIC;
	signal PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL: STD_LOGIC;
	signal PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL: STD_LOGIC;
	signal LAMPS_SCAN: STD_LOGIC_VECTOR (3 downTo 0);

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

	UUT: ScanControls port map(
		FPGA_CLK => FPGA_CLK,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_LOGIC_GATE_C_1 => PS_LOGIC_GATE_C_1,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		PS_NEXT_TO_LAST_LOGIC_GATE => PS_NEXT_TO_LAST_LOGIC_GATE,
		MS_1401_I_O_SET_BRANCH_CNDS => MS_1401_I_O_SET_BRANCH_CNDS,
		MS_DISPLAY_OR_ALTER_SET_2ND_SCAN => MS_DISPLAY_OR_ALTER_SET_2ND_SCAN,
		MS_DATA_MOVE_A_CYCLE_CTRL_SET => MS_DATA_MOVE_A_CYCLE_CTRL_SET,
		MS_EDIT_SET_A_CYCLE_CTRL => MS_EDIT_SET_A_CYCLE_CTRL,
		MS_SET_A_CYCLE_CTRL_ON_Z_OP => MS_SET_A_CYCLE_CTRL_ON_Z_OP,
		MS_STORE_AR_SET_A_CYCLE_CTRL_A => MS_STORE_AR_SET_A_CYCLE_CTRL_A,
		MS_STORE_AR_SET_A_CYCLE_CTRL_B => MS_STORE_AR_SET_A_CYCLE_CTRL_B,
		MS_LAST_I_CYCLE_B => MS_LAST_I_CYCLE_B,
		MS_G_OP_SET_C_CYCLE_CTRL_B => MS_G_OP_SET_C_CYCLE_CTRL_B,
		MS_STORE_AR_SET_C_CYCLE_CTRL_A => MS_STORE_AR_SET_C_CYCLE_CTRL_A,
		MS_STORE_AR_SET_C_CYCLE_CTRL_B => MS_STORE_AR_SET_C_CYCLE_CTRL_B,
		MS_ALT_ROUTINE_DOT_2ND_SCAN => MS_ALT_ROUTINE_DOT_2ND_SCAN,
		MS_WORD_MARK_OP_DOT_A_CYCLE => MS_WORD_MARK_OP_DOT_A_CYCLE,
		MS_EDIT_SET_B_CYCLE_CTRL_A => MS_EDIT_SET_B_CYCLE_CTRL_A,
		PS_LAST_INSN_RO_CYCLE_1 => PS_LAST_INSN_RO_CYCLE_1,
		MS_1401_TAKE_I_TO_B_CYCLE => MS_1401_TAKE_I_TO_B_CYCLE,
		MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN => MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN,
		MS_FILE_OP_TAKE_EXTENSION_CYCLE => MS_FILE_OP_TAKE_EXTENSION_CYCLE,
		MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE => MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE,
		PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 => PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,
		PS_SET_NO_SCAN_CTRL_STAR_BR_OPS => PS_SET_NO_SCAN_CTRL_STAR_BR_OPS,
		PS_DATA_MOVE_OP_CODE => PS_DATA_MOVE_OP_CODE,
		PS_1ST_SCAN_FIRST_OP_CODES => PS_1ST_SCAN_FIRST_OP_CODES,
		MS_CLEAR_OP_TAKE_1ST_SCAN => MS_CLEAR_OP_TAKE_1ST_SCAN,
		MS_MPLY_DOT_N_DOT_C => MS_MPLY_DOT_N_DOT_C,
		PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH => PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH,
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE => MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
		MS_EDIT_SET_B_CYCLE_CTRL_C => MS_EDIT_SET_B_CYCLE_CTRL_C,
		MS_TLU_SET_B_CYCLE_CTRL => MS_TLU_SET_B_CYCLE_CTRL,
		MS_CMP_MODE_SET_A_CYCLE_CTRL_A => MS_CMP_MODE_SET_A_CYCLE_CTRL_A,
		MS_TLU_SET_A_CYCLE_CTRL_B => MS_TLU_SET_A_CYCLE_CTRL_B,
		MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1 => MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1,
		MS_EDIT_SET_B_CYCLE_CTRL_G => MS_EDIT_SET_B_CYCLE_CTRL_G,
		MS_EDIT_SET_B_CYCLE_CTRL_B => MS_EDIT_SET_B_CYCLE_CTRL_B,
		PS_SET_2ND_SCAN_CTRL_STAR_ARITH => PS_SET_2ND_SCAN_CTRL_STAR_ARITH,
		MS_EDIT_SKID_CYCLE => MS_EDIT_SKID_CYCLE,
		MS_EDIT_SET_B_CYCLE_CTRL_E => MS_EDIT_SET_B_CYCLE_CTRL_E,
		MS_EDIT_SET_B_CYCLE_CTRL_F => MS_EDIT_SET_B_CYCLE_CTRL_F,
		PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH => PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH,
		MS_EDIT_SET_B_CYCLE_CTRL_D => MS_EDIT_SET_B_CYCLE_CTRL_D,
		MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY => MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY,
		PS_SET_3RD_SCAN_CTRL_STAR_ARITH => PS_SET_3RD_SCAN_CTRL_STAR_ARITH,
		PS_OP_MOD_REG_NOT_BUS => PS_OP_MOD_REG_NOT_BUS,
		PS_OP_MOD_REG_BUS => PS_OP_MOD_REG_BUS,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PS_NO_SCAN => PS_NO_SCAN,
		PS_NO_SCAN_1 => PS_NO_SCAN_1,
		MS_NO_SCAN => MS_NO_SCAN,
		MS_1ST_SCAN => MS_1ST_SCAN,
		PS_2ND_SCAN => PS_2ND_SCAN,
		MS_2ND_SCAN => MS_2ND_SCAN,
		PS_1ST_OR_2ND_SCAN => PS_1ST_OR_2ND_SCAN,
		PS_3RD_SCAN => PS_3RD_SCAN,
		MS_3RD_SCAN => MS_3RD_SCAN,
		PS_NO_SCAN_CTRL => PS_NO_SCAN_CTRL,
		PS_1ST_SCAN_CTRL => PS_1ST_SCAN_CTRL,
		MS_NO_SCAN_CTRL => MS_NO_SCAN_CTRL,
		MS_1ST_SCAN_CTRL => MS_1ST_SCAN_CTRL,
		MS_2ND_SCAN_CTRL => MS_2ND_SCAN_CTRL,
		MS_3RD_SCAN_CTRL => MS_3RD_SCAN_CTRL,
		PS_1ST_OR_NO_OR_3RD_SCAN => PS_1ST_OR_NO_OR_3RD_SCAN,
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN => PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,
		PS_1ST_OR_3RD_SCAN => PS_1ST_OR_3RD_SCAN,
		PS_NO_OR_1ST_OR_2ND_SCAN => PS_NO_OR_1ST_OR_2ND_SCAN,
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL => PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,
		PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL => PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL,
		LAMPS_SCAN => LAMPS_SCAN);

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

   variable testName: string(1 to 25);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   testName := "12.30.01.01, 03.01 Part 1";
   
   wait for 30 ns;
   MS_PROGRAM_RESET_1 <= '0';
   wait for 1 us;
   MS_PROGRAM_RESET_1 <= '1';
   
   wait for 30 ns;
   check1(PS_NO_SCAN,'0',testName,"SA");
   check1(MS_NO_SCAN,'1',testName,"SB");
   check1(PS_1ST_SCAN,'0',testName,"SC");
   check1(MS_1ST_SCAN,'1',testName,"SD");
   check1(PS_2ND_SCAN,'0',testName,"SE");
   check1(MS_2ND_SCAN,'1',testName,"SF");
   check1(PS_3RD_SCAN,'0',testName,"SG");
   check1(MS_3RD_SCAN,'1',testname,"SH");
   check1(PS_NO_SCAN_CTRL,'0',testName,"SI");
   check1(MS_NO_SCAN_CTRL,'1',testName,"SJ");
   check1(PS_1ST_SCAN_CTRL,'0',testName,"SK");
   check1(MS_1ST_SCAN_CTRL,'1',testName,"SL");
   check1(MS_2ND_SCAN_CTRL,'1',testName,"SM");
   check1(MS_3RD_SCAN_CTRL,'1',testName,"SM");
   check1(PS_1ST_OR_NO_OR_3RD_SCAN,'0',testName,"SN");
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,'0',testName,"SO");
   check1(PS_1ST_OR_3RD_SCAN,'0',testname,"SP");
   check1(PS_NO_OR_1ST_OR_2ND_SCAN,'0',testName,"SQ");
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'0',testName,"SR");
   check1(PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'0',testName,"SS");
   

   -- First test No Scan Ctrl latch and No Scan latch      
   
   MS_1401_I_O_SET_BRANCH_CNDS <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"1A");
   check1(MS_NO_SCAN_CTRL,'0',testName,"1B");
   check1(PS_NO_SCAN,'0',testName,"1C");
   MS_1401_I_O_SET_BRANCH_CNDS <= '1';
   -- NO Scan Ctrl Latch should still be set
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"1D");
   check1(PS_NO_SCAN,'0',testName,"1E");
   
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"1EA");
   check1(PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'0',testName,"1EB");
      
   -- Set No Scan Latch
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"1F");
   check1(PS_NO_SCAN,'1',testName,"1G");
   check1(MS_NO_SCAN,'0',testName,"1H");
   -- Reset No Scan Ctrl Latch.  No Scan Latch stays set
   PS_LOGIC_GATE_C_1 <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"1I");
   check1(PS_NO_SCAN,'1',testName,"1J");
   
   check1(PS_1ST_OR_NO_OR_3RD_SCAN,'1',testName,"1JA");
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,'1',testName,"1JB");
   check1(PS_1ST_OR_3RD_SCAN,'0',testname,"1JC");
   check1(PS_NO_OR_1ST_OR_2ND_SCAN,'1',testName,"1JD");
   
   -- Reset No Scan Latch
   MS_LOGIC_GATE_D_1 <= '1';
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"1K");
   check1(PS_NO_SCAN,'0',testName,"1L");
   MS_LOGIC_GATE_B_1 <= '1';

   -- Now test all of the rest of the ways to set No Scan Ctrl
   -- But don't bother testing the No Scan latch each time.  ;)
   
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';  -- Set for a bunch of tests to follow
   
   testName := "12.30.05.1 Part 1        ";
   
   MS_1401_TAKE_I_TO_B_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2A");
   MS_1401_TAKE_I_TO_B_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2B");
   
   MS_LOGIC_GATE_D_1 <= '1';
   MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2C");
   MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2D");
   
   MS_LOGIC_GATE_D_1 <= '1';
   MS_FILE_OP_TAKE_EXTENSION_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2E");
   MS_FILE_OP_TAKE_EXTENSION_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2F");

   MS_LOGIC_GATE_D_1 <= '1';
   MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2G");
   MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2H");

   MS_LOGIC_GATE_D_1 <= '1';
   MS_ALT_ROUTINE_DOT_2ND_SCAN <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2I");
   MS_ALT_ROUTINE_DOT_2ND_SCAN <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2J");
   
   MS_LOGIC_GATE_D_1 <= '1';
   MS_LAST_I_CYCLE_B <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2K");
   MS_LAST_I_CYCLE_B <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2L");
   
   MS_LOGIC_GATE_D_1 <= '1';
   PS_SET_NO_SCAN_CTRL_STAR_BR_OPS <= '1';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2M");
   PS_SET_NO_SCAN_CTRL_STAR_BR_OPS <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2N");

   MS_LOGIC_GATE_D_1 <= '1';
   MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2O");
   MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1 <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2P");
   
   MS_LOGIC_GATE_D_1 <= '1';
   PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 <= '1';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'1',testName,"2Q");
   PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_NO_SCAN_CTRL,'0',testName,"2R");
   
   PS_NEXT_TO_LAST_LOGIC_GATE <= '0';
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   
   testName := "12.30.01.01, 03.01 Part 2";
   
   -- First test 1st Scan Ctrl latch and 1st Scan latch
      
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';  -- Set for a bunch of tests to follow
         
   MS_CLEAR_OP_TAKE_1ST_SCAN <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"3A");
   check1(MS_1ST_SCAN_CTRL,'0',testName,"3B");
   check1(PS_1ST_SCAN,'0',testName,"3C");
   MS_CLEAR_OP_TAKE_1ST_SCAN <= '1';
   -- 1st Scan Ctrl Latch should still be set
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"3D");
   check1(PS_1ST_SCAN,'0',testName,"3E");
   -- Set 1st Scan Latch
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"3F");
   check1(PS_1ST_SCAN,'1',testName,"3G");
   check1(MS_1ST_SCAN,'0',testName,"3H");
   
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"3HA");
   check1(PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"3HB");

   -- Reset 1st Scan Ctrl Latch.  1st Scan Latch stays set
   PS_LOGIC_GATE_C_1 <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"3I");
   check1(PS_1ST_SCAN,'1',testName,"3J");
   
   check1(PS_1ST_OR_NO_OR_3RD_SCAN,'1',testName,"3JA");
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,'1',testName,"3JB");
   check1(PS_1ST_OR_3RD_SCAN,'1',testname,"3JC");
   check1(PS_NO_OR_1ST_OR_2ND_SCAN,'1',testName,"3JD");   
   
   -- Reset 1st Scan Latch
   MS_LOGIC_GATE_D_1 <= '1';
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"3K");
   check1(PS_1ST_SCAN,'0',testName,"3L");
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   
   -- Now test the rest of the ways of setting 1st Scan Ctrl latch
   -- but don't obther trigger 1st Scan Latch as we already tested that.
   
   testName := "12.30.05.1 Part 2        ";
   
   -- Note:  Already tested Clear Op Take 1st Scan
   
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';  -- Set for a bunch of tests to follow   
   
   MS_MPLY_DOT_N_DOT_C <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4A");
   MS_MPLY_DOT_N_DOT_C <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4B");
   MS_LOGIC_GATE_D_1 <= '1';
   
   MS_STORE_AR_SET_C_CYCLE_CTRL_A <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4C");
   MS_STORE_AR_SET_C_CYCLE_CTRL_A <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4D");
   MS_LOGIC_GATE_D_1 <= '1';
   
   PS_1ST_SCAN_FIRST_OP_CODES <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4E");
   PS_LAST_INSN_RO_CYCLE_1 <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4F");
   PS_1ST_SCAN_FIRST_OP_CODES <= '0';
   PS_LAST_INSN_RO_CYCLE_1 <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4G");
   MS_LOGIC_GATE_D_1 <= '1';
   
   PS_DATA_MOVE_OP_CODE <= '1';
   PS_OP_MOD_REG_NOT_BUS(3) <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4H");
   PS_LAST_INSN_RO_CYCLE_1 <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4I");
   
   -- Set 1st scan for the tests that follow, as well
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN,'1',testname,"4J");
   PS_LOGIC_GATE_C_1 <= '0';
   
   -- Then reset 1st Scan Ctrl as usual
   PS_DATA_MOVE_OP_CODE <= '0';
   PS_OP_MOD_REG_NOT_BUS(3) <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4K");
   MS_LOGIC_GATE_D_1 <= '1';
   
   -- The following tests also require 1st scan to already be set
   -- (Regen)
   
   MS_EDIT_SET_A_CYCLE_CTRL <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4L");
   MS_EDIT_SET_A_CYCLE_CTRL <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4M");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_EDIT_SET_B_CYCLE_CTRL_A <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4N");
   MS_EDIT_SET_B_CYCLE_CTRL_A <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4O");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_EDIT_SET_B_CYCLE_CTRL_C <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4P");
   MS_EDIT_SET_B_CYCLE_CTRL_C <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4Q");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_TLU_SET_A_CYCLE_CTRL_B <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4R");
   MS_TLU_SET_A_CYCLE_CTRL_B <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4S");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_TLU_SET_B_CYCLE_CTRL <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4T");
   MS_TLU_SET_B_CYCLE_CTRL <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4U");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_SET_A_CYCLE_CTRL_ON_Z_OP <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4V");
   MS_SET_A_CYCLE_CTRL_ON_Z_OP <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4W");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_CMP_MODE_SET_A_CYCLE_CTRL_A <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4X");
   MS_CMP_MODE_SET_A_CYCLE_CTRL_A <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4Y");
   MS_LOGIC_GATE_D_1 <= '1';

   PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH <= '1';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4Z");
   PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AA");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_G_OP_SET_C_CYCLE_CTRL_B <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AB");
   MS_G_OP_SET_C_CYCLE_CTRL_B <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AC");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_DATA_MOVE_A_CYCLE_CTRL_SET <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AB");
   MS_DATA_MOVE_A_CYCLE_CTRL_SET <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AC");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_WORD_MARK_OP_DOT_A_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AD");
   MS_WORD_MARK_OP_DOT_A_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AE");
   MS_LOGIC_GATE_D_1 <= '1';   
   
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AF");
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AG");
   MS_LOGIC_GATE_D_1 <= '1';
   
   MS_STORE_AR_SET_A_CYCLE_CTRL_A <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AH");
   MS_STORE_AR_SET_A_CYCLE_CTRL_A <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AI");
   MS_LOGIC_GATE_D_1 <= '1';
      
   MS_STORE_AR_SET_A_CYCLE_CTRL_B <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AJ");
   MS_STORE_AR_SET_A_CYCLE_CTRL_B <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AK");
   MS_LOGIC_GATE_D_1 <= '1';
   
   MS_STORE_AR_SET_C_CYCLE_CTRL_B <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'1',testName,"4AL");
   MS_STORE_AR_SET_C_CYCLE_CTRL_B <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN_CTRL,'0',testName,"4AM");  -- A very early test  ;)
   MS_LOGIC_GATE_D_1 <= '1';

   -- Reset 1st Scan Latch

   PS_NEXT_TO_LAST_LOGIC_GATE <= '0';
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   check1(PS_1ST_SCAN,'0',testName,"4AN");
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;

   
   testName := "12.30.04.01, 02.01 Part 1";

   -- First test 2nd Scan Ctrl latch and 2nd Scan latch      
   
   MS_DISPLAY_OR_ALTER_SET_2ND_SCAN <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"1A");  -- PS is internal only signal
   check1(PS_2ND_SCAN,'0',testName,"1B");
   MS_DISPLAY_OR_ALTER_SET_2ND_SCAN <= '1';
   -- 2nd Scan Ctrl Latch should still be set
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"1C");
   check1(PS_2ND_SCAN,'0',testName,"1D");
   -- Set 2nd Scan Latch
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"1E");
   check1(PS_2ND_SCAN,'1',testName,"1F");
   check1(MS_2ND_SCAN,'0',testName,"1G");
   
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"1HA");
   check1(PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"1HB");

   -- Reset 2nd Scan Ctrl Latch.  2nd Scan Latch stays set
   PS_LOGIC_GATE_C_1 <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"1H");
   check1(PS_2ND_SCAN,'1',testName,"1I");

   check1(PS_1ST_OR_NO_OR_3RD_SCAN,'0',testName,"1JA");
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,'1',testName,"1JB");
   check1(PS_1ST_OR_3RD_SCAN,'0',testname,"1JC");
   check1(PS_NO_OR_1ST_OR_2ND_SCAN,'1',testName,"1JC");

   testName := "12.30.04.01, 06.01 Part 2";

   -- Next, do some tests requiring that 2nd Scan already be set (Regen)
   
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';
   
   MS_EDIT_SET_B_CYCLE_CTRL_C <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"2A");
   MS_EDIT_SET_B_CYCLE_CTRL_C <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"2B");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_EDIT_SKID_CYCLE <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"2C");
   MS_EDIT_SKID_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"2D");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_DATA_MOVE_A_CYCLE_CTRL_SET <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"2E");
   MS_DATA_MOVE_A_CYCLE_CTRL_SET <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"2F");
   MS_LOGIC_GATE_D_1 <= '1';

   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"2G");
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"2H");
   MS_LOGIC_GATE_D_1 <= '1';

   -- Reset 2nd Scan Latch
   MS_LOGIC_GATE_D_1 <= '1';
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"2I");
   check1(PS_2ND_SCAN,'0',testName,"2J");
   MS_LOGIC_GATE_B_1 <= '1';
   
   testName := "12.30.04.01 Part 3       ";

   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';
   
   MS_EDIT_SET_B_CYCLE_CTRL_B <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"3A");
   MS_EDIT_SET_B_CYCLE_CTRL_B <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"3B");
   MS_LOGIC_GATE_D_1 <= '1';
   
   MS_EDIT_SET_B_CYCLE_CTRL_G <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"3C");
   MS_EDIT_SET_B_CYCLE_CTRL_G <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"3D");
   MS_LOGIC_GATE_D_1 <= '1';
   
   PS_SET_2ND_SCAN_CTRL_STAR_ARITH <= '1';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"3E");
   PS_SET_2ND_SCAN_CTRL_STAR_ARITH <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"3F");
   MS_LOGIC_GATE_D_1 <= '1';
   
   PS_LAST_INSN_RO_CYCLE_1 <= '1';
   PS_DATA_MOVE_OP_CODE <= '1';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"3G");
   PS_OP_MOD_REG_BUS(3) <= '1';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'0',testName,"3H");
   PS_LAST_INSN_RO_CYCLE_1 <= '0';
   PS_DATA_MOVE_OP_CODE <= '0';
   PS_OP_MOD_REG_BUS(3) <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_2ND_SCAN_CTRL,'1',testName,"3I");
   MS_LOGIC_GATE_D_1 <= '1';
   
   
   testName := "12.30.04.01, 02.01 Part 4";

   -- First test 3rd Scan Ctrl latch and 3rd Scan latch     
   
   PS_NEXT_TO_LAST_LOGIC_GATE <= '1';
       
   MS_EDIT_SET_B_CYCLE_CTRL_D <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4A");  -- PS is internal only signal
   check1(PS_3RD_SCAN,'0',testName,"4B");
   MS_EDIT_SET_B_CYCLE_CTRL_D <= '1';
   -- 3rd Scan Ctrl Latch should still be set
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4C");
   check1(PS_3RD_SCAN,'0',testName,"4D");
   -- Set 3rd Scan Latch
   PS_LOGIC_GATE_C_1 <= '1';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4E");
   check1(PS_3RD_SCAN,'1',testName,"4F");
   check1(MS_3RD_SCAN,'0',testName,"4G");
   
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"4GA");
   check1(PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL,'1',testName,"4GB");
   
   -- Reset 3rd Scan Ctrl Latch.  2nd Scan Latch stays set
   PS_LOGIC_GATE_C_1 <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4H");
   check1(PS_3RD_SCAN,'1',testName,"4I");
     
   check1(PS_1ST_OR_NO_OR_3RD_SCAN,'1',testName,"4IA");
   check1(PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,'1',testName,"4IB");
   check1(PS_1ST_OR_3RD_SCAN,'1',testname,"4IC");
   check1(PS_NO_OR_1ST_OR_2ND_SCAN,'0',testName,"4ID");
   
   -- Test some things that require 3rd scan be already set (regen)
   
   MS_EDIT_SET_B_CYCLE_CTRL_E <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4J");
   MS_EDIT_SET_B_CYCLE_CTRL_E <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4K");
   MS_LOGIC_GATE_D_1 <= '1';
      
   MS_EDIT_SET_B_CYCLE_CTRL_F <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4L");
   MS_EDIT_SET_B_CYCLE_CTRL_F <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4M");
   MS_LOGIC_GATE_D_1 <= '1';
      
   MS_EDIT_SKID_CYCLE <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4N");
   MS_EDIT_SKID_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4O");
   MS_LOGIC_GATE_D_1 <= '1';
      
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4P");
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4Q");
   MS_LOGIC_GATE_D_1 <= '1';
   
   PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH <= '1';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4P");
   PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4Q");
   MS_LOGIC_GATE_D_1 <= '1';
      
   -- Reset 3rd Scan latch
   
   MS_LOGIC_GATE_D_1 <= '1';
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4R");
   check1(PS_3RD_SCAN,'0',testName,"4S");
   MS_LOGIC_GATE_B_1 <= '1';
   
   -- Test the rest
   
   -- Already tested EDIT_SET_B_CYCLE_CTRL_D

   MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY <= '0';   
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4T");
   MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4U");
   MS_LOGIC_GATE_D_1 <= '1';

   PS_SET_3RD_SCAN_CTRL_STAR_ARITH <= '1';   
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'0',testName,"4V");
   PS_SET_3RD_SCAN_CTRL_STAR_ARITH <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   check1(MS_3RD_SCAN_CTRL,'1',testName,"4W");
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
