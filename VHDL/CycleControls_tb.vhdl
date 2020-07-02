-- Test BenchVHDL for IBM SMS ALD group CycleControls
-- Title: CycleControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/26/2020 2:57:27 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity CycleControls_tb is
end CycleControls_tb;

architecture behavioral of CycleControls_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component CycleControls
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_LOGIC_GATE_D_1: in STD_LOGIC;
		PS_SET_A_CYCLE_CTRL: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		PS_SET_C_CYCLE_CTRL: in STD_LOGIC;
		PS_LOGIC_GATE_A_1: in STD_LOGIC;
		MS_1401_I_O_SET_BRANCH_CNDS: in STD_LOGIC;
		PS_SET_B_CYCLE_CTRL: in STD_LOGIC;
		PS_SET_D_CYCLE_CTRL: in STD_LOGIC;
		MS_DISPLAY_ROUTINE: in STD_LOGIC;
		MS_ALTER_ROUTINE: in STD_LOGIC;
		PS_CONSOLE_STROBE: in STD_LOGIC;
		PS_LOGIC_GATE_Z: in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE: in STD_LOGIC;
		MS_ANY_CHECK_TEST: in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION: in STD_LOGIC;
		PS_SET_I_CYCLE_CTRL: in STD_LOGIC;
		PS_NOT_INTR_START: in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE: in STD_LOGIC;
		PS_CONS_PRINTER_STROBE: in STD_LOGIC;
		MS_CONSOLE_SET_START_CND: in STD_LOGIC;
		PS_I_O_LAST_EX_CYCLE: in STD_LOGIC;
		PS_PROCESS_ROUTINE: in STD_LOGIC;
		PS_SET_X_CYCLE_CTRL: in STD_LOGIC;
		PS_B_CYCLE_1: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		PS_C_CYCLE_1: in STD_LOGIC;
		PS_D_CYCLE: in STD_LOGIC;
		PS_COMPARE_OP_CODE: in STD_LOGIC;
		MS_STOP_AT_F_TLU: in STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN: in STD_LOGIC;
		PS_1401_STORE_A_AR_OP_CODE: in STD_LOGIC;
		MS_MPLY_OP_CODE: in STD_LOGIC;
		MS_FILE_OP: in STD_LOGIC;
		PS_STOP_AT_F_STAR_ARITH: in STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_CODE: in STD_LOGIC;
		MS_1401_COND_TEST_DOT_I9: in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: in STD_LOGIC;
		PS_STOP_AT_F_ON_B_CY_OPS: in STD_LOGIC;
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE: in STD_LOGIC;
		MS_MPLY_DOT_3_DOT_D: in STD_LOGIC;
		MS_WORD_MARK_OP_DOT_A_CYCLE: in STD_LOGIC;
		MS_WORD_MARK_OP_DOT_B_CYCLE: in STD_LOGIC;
		PS_STOP_AT_F_ON_B_CY_OP_CODES: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ: in STD_LOGIC;
		MS_STOP_AT_F_DOT_LOGIC_GATE_D: in STD_LOGIC;
		MS_STOP_AT_H_DOT_LOGIC_GATE_F: in STD_LOGIC;
		MS_STOP_AT_G_DOT_LOGIC_GATE_E: in STD_LOGIC;
		MS_STOP_AT_J_DOT_LOGIC_GATE_G: in STD_LOGIC;
		MS_STOP_AT_K_DOT_LOGIC_GATE_H: in STD_LOGIC;
		MS_COMPUTER_RESET_1: in STD_LOGIC;
		PS_A_CYCLE: in STD_LOGIC;
		PS_X_CYCLE: in STD_LOGIC;
		PS_C_CYCLE: in STD_LOGIC;
		MS_OUTPUT_CYCLE: in STD_LOGIC;
		PS_STOP_AT_H_ON_B_CYCLE_OPS: in STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE: in STD_LOGIC;
		PS_1ST_SCAN: in STD_LOGIC;
		MS_INPUT_CYCLE: in STD_LOGIC;
		PS_STOP_AT_J_ON_B_CY_OP_CODES: in STD_LOGIC;
		MS_STOP_AT_J_TLU: in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME: in STD_LOGIC;
		PS_A_RING_4_TIME: in STD_LOGIC;
		PS_1401_MODE_1: in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE: in STD_LOGIC;
		MV_36_VOLTS: in STD_LOGIC;
		GROUND: in STD_LOGIC;
		SWITCH_ROT_STOR_SCAN: in STD_LOGIC_VECTOR(5 downTo 0);
		PS_A_CYCLE_CTRL: out STD_LOGIC;
		MS_A_CYCLE_CTRL: out STD_LOGIC;
		PS_C_CYCLE_CTRL: out STD_LOGIC;
		MS_C_CYCLE_CTRL: out STD_LOGIC;
		PS_C_OR_D_CYCLE_CTRL: out STD_LOGIC;
		PS_B_CYCLE_CTRL: out STD_LOGIC;
		MS_B_CYCLE_CTRL: out STD_LOGIC;
		PS_D_CYCLE_CTRL: out STD_LOGIC;
		MS_D_CYCLE_CTRL: out STD_LOGIC;
		MS_DISPLAY_OR_ALTER: out STD_LOGIC;
		PS_DISPLAY_OR_ALTER: out STD_LOGIC;
		MS_DISPLAY_OR_ALTER_SET_2ND_SCAN: out STD_LOGIC;
		PS_I_CYCLE_CTRL: out STD_LOGIC;
		MS_I_CYCLE_CTRL: out STD_LOGIC;
		PS_X_CYCLE_CTRL: out STD_LOGIC;
		MS_X_CYCLE_CTRL: out STD_LOGIC;
		MS_I_O_LAST_EX_DOT_Z: out STD_LOGIC;
		MS_LAST_EX_DOT_NEXT_TO_LAST: out STD_LOGIC;
		PS_STOP_AT_F: out STD_LOGIC;
		MS_STOP_AT_F_DOT_B_CYCLE: out STD_LOGIC;
		MS_STORAGE_SCAN_RGEN: out STD_LOGIC;
		PS_LAST_LOGIC_GATE_1: out STD_LOGIC;
		MS_LAST_LOGIC_GATE_1: out STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE: out STD_LOGIC;
		PS_LAST_LOGIC_GATE_2: out STD_LOGIC;
		MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN: out STD_LOGIC;
		PS_STOP_AT_H: out STD_LOGIC;
		PS_STOP_AT_J: out STD_LOGIC;
		MS_STORAGE_SCAN_LOAD: out STD_LOGIC;
		PS_STOP_AT_K: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal PS_SET_A_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal PS_SET_C_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_A_1: STD_LOGIC := '0';
	signal MS_1401_I_O_SET_BRANCH_CNDS: STD_LOGIC := '1';
	signal PS_SET_B_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_SET_D_CYCLE_CTRL: STD_LOGIC := '0';
	signal MS_DISPLAY_ROUTINE: STD_LOGIC := '1';
	signal MS_ALTER_ROUTINE: STD_LOGIC := '1';
	signal PS_CONSOLE_STROBE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_Z: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE: STD_LOGIC := '0';
	signal MS_ANY_CHECK_TEST: STD_LOGIC := '1';
	signal MS_CONS_RESET_START_CONDITION: STD_LOGIC := '1';
	signal PS_SET_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_NOT_INTR_START: STD_LOGIC := '0';
	signal PS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '0';
	signal PS_CONS_PRINTER_STROBE: STD_LOGIC := '0';
	signal MS_CONSOLE_SET_START_CND: STD_LOGIC := '1';
	signal PS_I_O_LAST_EX_CYCLE: STD_LOGIC := '0';
	signal PS_PROCESS_ROUTINE: STD_LOGIC := '0';
	signal PS_SET_X_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_C_CYCLE_1: STD_LOGIC := '0';
	signal PS_D_CYCLE: STD_LOGIC := '0';
	signal PS_COMPARE_OP_CODE: STD_LOGIC := '0';
	signal MS_STOP_AT_F_TLU: STD_LOGIC := '1';
	signal MS_B_CYCLE_DOT_NO_SCAN: STD_LOGIC := '1';
	signal PS_1401_STORE_A_AR_OP_CODE: STD_LOGIC := '0';
	signal MS_MPLY_OP_CODE: STD_LOGIC := '1';
	signal MS_FILE_OP: STD_LOGIC := '1';
	signal PS_STOP_AT_F_STAR_ARITH: STD_LOGIC := '0';
	signal MS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '1';
	signal MS_1401_COND_TEST_DOT_I9: STD_LOGIC := '1';
	signal MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: STD_LOGIC := '1';
	signal PS_STOP_AT_F_ON_B_CY_OPS: STD_LOGIC := '0';
	signal MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: STD_LOGIC := '1';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal MS_MPLY_DOT_3_DOT_D: STD_LOGIC := '1';
	signal MS_WORD_MARK_OP_DOT_A_CYCLE: STD_LOGIC := '1';
	signal MS_WORD_MARK_OP_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_STOP_AT_F_ON_B_CY_OP_CODES: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_3_JRJ: STD_LOGIC := '0';
	signal MS_STOP_AT_F_DOT_LOGIC_GATE_D: STD_LOGIC := '1';
	signal MS_STOP_AT_H_DOT_LOGIC_GATE_F: STD_LOGIC := '1';
	signal MS_STOP_AT_G_DOT_LOGIC_GATE_E: STD_LOGIC := '1';
	signal MS_STOP_AT_J_DOT_LOGIC_GATE_G: STD_LOGIC := '1';
	signal MS_STOP_AT_K_DOT_LOGIC_GATE_H: STD_LOGIC := '1';
	signal MS_COMPUTER_RESET_1: STD_LOGIC := '1';
	signal PS_A_CYCLE: STD_LOGIC := '0';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal PS_C_CYCLE: STD_LOGIC := '0';
	signal MS_OUTPUT_CYCLE: STD_LOGIC := '1';
	signal PS_STOP_AT_H_ON_B_CYCLE_OPS: STD_LOGIC := '0';
	signal MS_FILE_OP_DOT_D_CYCLE: STD_LOGIC := '1';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal MS_INPUT_CYCLE: STD_LOGIC := '1';
	signal PS_STOP_AT_J_ON_B_CY_OP_CODES: STD_LOGIC := '0';
	signal MS_STOP_AT_J_TLU: STD_LOGIC := '1';
	signal PS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '0';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal PS_I_RING_5_OR_10_TIME: STD_LOGIC := '0';
	signal PS_A_RING_4_TIME: STD_LOGIC := '0';
	signal PS_1401_MODE_1: STD_LOGIC := '0';
	signal MS_ADDRESS_SET_ROUTINE: STD_LOGIC := '1';
	signal MV_36_VOLTS: STD_LOGIC := '1';
	signal GROUND: STD_LOGIC := '0';
	signal SWITCH_ROT_STOR_SCAN: STD_LOGIC_VECTOR(5 downTo 0) := "000000";

	-- Outputs

	signal PS_A_CYCLE_CTRL: STD_LOGIC;
	signal MS_A_CYCLE_CTRL: STD_LOGIC;
	signal PS_C_CYCLE_CTRL: STD_LOGIC;
	signal MS_C_CYCLE_CTRL: STD_LOGIC;
	signal PS_C_OR_D_CYCLE_CTRL: STD_LOGIC;
	signal PS_B_CYCLE_CTRL: STD_LOGIC;
	signal MS_B_CYCLE_CTRL: STD_LOGIC;
	signal PS_D_CYCLE_CTRL: STD_LOGIC;
	signal MS_D_CYCLE_CTRL: STD_LOGIC;
	signal MS_DISPLAY_OR_ALTER: STD_LOGIC;
	signal PS_DISPLAY_OR_ALTER: STD_LOGIC;
	signal MS_DISPLAY_OR_ALTER_SET_2ND_SCAN: STD_LOGIC;
	signal PS_I_CYCLE_CTRL: STD_LOGIC;
	signal MS_I_CYCLE_CTRL: STD_LOGIC;
	signal PS_X_CYCLE_CTRL: STD_LOGIC;
	signal MS_X_CYCLE_CTRL: STD_LOGIC;
	signal MS_I_O_LAST_EX_DOT_Z: STD_LOGIC;
	signal MS_LAST_EX_DOT_NEXT_TO_LAST: STD_LOGIC;
	signal PS_STOP_AT_F: STD_LOGIC;
	signal MS_STOP_AT_F_DOT_B_CYCLE: STD_LOGIC;
	signal MS_STORAGE_SCAN_RGEN: STD_LOGIC;
	signal PS_LAST_LOGIC_GATE_1: STD_LOGIC;
	signal MS_LAST_LOGIC_GATE_1: STD_LOGIC;
	signal PS_NEXT_TO_LAST_LOGIC_GATE: STD_LOGIC;
	signal PS_LAST_LOGIC_GATE_2: STD_LOGIC;
	signal MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN: STD_LOGIC;
	signal PS_STOP_AT_H: STD_LOGIC;
	signal PS_STOP_AT_J: STD_LOGIC;
	signal MS_STORAGE_SCAN_LOAD: STD_LOGIC;
	signal PS_STOP_AT_K: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   -- Your test bench declarations go here

--  Procedure to proceed through NEXT to last logic gate sequence
   
procedure NLLG (signal MS_STOP_AT_J_DOT_LOGIC_GATE_G : inout STD_LOGIC;
            signal PS_2ND_CLOCK_PULSE_3_JRJ: inout STD_LOGIC) is
      begin
      MS_STOP_AT_J_DOT_LOGIC_GATE_G <= '0';
      wait for 30ns;
      PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
      wait for 300 ns;
      PS_2ND_CLOCK_PULSE_3_JRJ <= '0';
      wait for 30 ns;
      MS_STOP_AT_J_DOT_LOGIC_GATE_G <= '1';
      assert PS_NEXT_TO_LAST_LOGIC_GATE = '1' report "NLLG Process: Next to Last Logic Gate Not 1" severity failure; 
      end procedure;
   
-- Procedure to proceed through LAST logic gate sequnce

procedure LLG (signal PS_2ND_CLOCK_PULSE_3_JRJ: inout STD_LOGIC) is
    begin
    wait for 270 ns;
    PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
    wait for 330 ns;
    PS_2ND_CLOCK_PULSE_3_JRJ <= '0';
    wait for 30 ns;
    assert PS_LAST_LOGIC_GATE_1 = '1' report "LLG Process: Last Logic Gate Not 1" severity failure;
    assert PS_NEXT_TO_LAST_LOGIC_GATE = '0' report "LLG Process: Next to Last Logic Gate Not 0" severity failure; 
    end procedure;
   
--  Procedure to proceed though ending the LAST logic gate sequence

procedure ENDLLG (signal PS_2ND_CLOCK_PULSE_3_JRJ: inout STD_LOGIC) is
    begin
    wait for 270 ns;
    PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
    wait for 330 ns;
    PS_2ND_CLOCK_PULSE_3_JRJ <= '0';
    wait for 30 ns;
    assert PS_LAST_LOGIC_GATE_1 = '0' report "ENDLLG Process: Last Logic Gate Not 0" severity failure;
    assert PS_NEXT_TO_LAST_LOGIC_GATE = '0' report "ENDLLG Process: Next to Last Logic Gate Not 0" severity failure; 
    end procedure;
    

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: CycleControls port map(
		FPGA_CLK => FPGA_CLK,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		PS_SET_A_CYCLE_CTRL => PS_SET_A_CYCLE_CTRL,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		PS_SET_C_CYCLE_CTRL => PS_SET_C_CYCLE_CTRL,
		PS_LOGIC_GATE_A_1 => PS_LOGIC_GATE_A_1,
		MS_1401_I_O_SET_BRANCH_CNDS => MS_1401_I_O_SET_BRANCH_CNDS,
		PS_SET_B_CYCLE_CTRL => PS_SET_B_CYCLE_CTRL,
		PS_SET_D_CYCLE_CTRL => PS_SET_D_CYCLE_CTRL,
		MS_DISPLAY_ROUTINE => MS_DISPLAY_ROUTINE,
		MS_ALTER_ROUTINE => MS_ALTER_ROUTINE,
		PS_CONSOLE_STROBE => PS_CONSOLE_STROBE,
		PS_LOGIC_GATE_Z => PS_LOGIC_GATE_Z,
		PS_LAST_EXECUTE_CYCLE => PS_LAST_EXECUTE_CYCLE,
		MS_ANY_CHECK_TEST => MS_ANY_CHECK_TEST,
		MS_CONS_RESET_START_CONDITION => MS_CONS_RESET_START_CONDITION,
		PS_SET_I_CYCLE_CTRL => PS_SET_I_CYCLE_CTRL,
		PS_NOT_INTR_START => PS_NOT_INTR_START,
		PS_STORAGE_SCAN_ROUTINE => PS_STORAGE_SCAN_ROUTINE,
		PS_CONS_PRINTER_STROBE => PS_CONS_PRINTER_STROBE,
		MS_CONSOLE_SET_START_CND => MS_CONSOLE_SET_START_CND,
		PS_I_O_LAST_EX_CYCLE => PS_I_O_LAST_EX_CYCLE,
		PS_PROCESS_ROUTINE => PS_PROCESS_ROUTINE,
		PS_SET_X_CYCLE_CTRL => PS_SET_X_CYCLE_CTRL,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_C_CYCLE_1 => PS_C_CYCLE_1,
		PS_D_CYCLE => PS_D_CYCLE,
		PS_COMPARE_OP_CODE => PS_COMPARE_OP_CODE,
		MS_STOP_AT_F_TLU => MS_STOP_AT_F_TLU,
		MS_B_CYCLE_DOT_NO_SCAN => MS_B_CYCLE_DOT_NO_SCAN,
		PS_1401_STORE_A_AR_OP_CODE => PS_1401_STORE_A_AR_OP_CODE,
		MS_MPLY_OP_CODE => MS_MPLY_OP_CODE,
		MS_FILE_OP => MS_FILE_OP,
		PS_STOP_AT_F_STAR_ARITH => PS_STOP_AT_F_STAR_ARITH,
		MS_STORE_ADDR_REGS_OP_CODE => MS_STORE_ADDR_REGS_OP_CODE,
		MS_1401_COND_TEST_DOT_I9 => MS_1401_COND_TEST_DOT_I9,
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE => MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
		PS_STOP_AT_F_ON_B_CY_OPS => PS_STOP_AT_F_ON_B_CY_OPS,
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT => MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		MS_MPLY_DOT_3_DOT_D => MS_MPLY_DOT_3_DOT_D,
		MS_WORD_MARK_OP_DOT_A_CYCLE => MS_WORD_MARK_OP_DOT_A_CYCLE,
		MS_WORD_MARK_OP_DOT_B_CYCLE => MS_WORD_MARK_OP_DOT_B_CYCLE,
		PS_STOP_AT_F_ON_B_CY_OP_CODES => PS_STOP_AT_F_ON_B_CY_OP_CODES,
		PS_2ND_CLOCK_PULSE_3_JRJ => PS_2ND_CLOCK_PULSE_3_JRJ,
		MS_STOP_AT_F_DOT_LOGIC_GATE_D => MS_STOP_AT_F_DOT_LOGIC_GATE_D,
		MS_STOP_AT_H_DOT_LOGIC_GATE_F => MS_STOP_AT_H_DOT_LOGIC_GATE_F,
		MS_STOP_AT_G_DOT_LOGIC_GATE_E => MS_STOP_AT_G_DOT_LOGIC_GATE_E,
		MS_STOP_AT_J_DOT_LOGIC_GATE_G => MS_STOP_AT_J_DOT_LOGIC_GATE_G,
		MS_STOP_AT_K_DOT_LOGIC_GATE_H => MS_STOP_AT_K_DOT_LOGIC_GATE_H,
		MS_COMPUTER_RESET_1 => MS_COMPUTER_RESET_1,
		PS_A_CYCLE => PS_A_CYCLE,
		PS_X_CYCLE => PS_X_CYCLE,
		PS_C_CYCLE => PS_C_CYCLE,
		MS_OUTPUT_CYCLE => MS_OUTPUT_CYCLE,
		PS_STOP_AT_H_ON_B_CYCLE_OPS => PS_STOP_AT_H_ON_B_CYCLE_OPS,
		MS_FILE_OP_DOT_D_CYCLE => MS_FILE_OP_DOT_D_CYCLE,
		PS_1ST_SCAN => PS_1ST_SCAN,
		MS_INPUT_CYCLE => MS_INPUT_CYCLE,
		PS_STOP_AT_J_ON_B_CY_OP_CODES => PS_STOP_AT_J_ON_B_CY_OP_CODES,
		MS_STOP_AT_J_TLU => MS_STOP_AT_J_TLU,
		PS_STORE_ADDR_REGS_OP_CODE => PS_STORE_ADDR_REGS_OP_CODE,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		PS_I_RING_5_OR_10_TIME => PS_I_RING_5_OR_10_TIME,
		PS_A_RING_4_TIME => PS_A_RING_4_TIME,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		MS_ADDRESS_SET_ROUTINE => MS_ADDRESS_SET_ROUTINE,
		MV_36_VOLTS => MV_36_VOLTS,
		GROUND => GROUND,
		SWITCH_ROT_STOR_SCAN => SWITCH_ROT_STOR_SCAN,
		PS_A_CYCLE_CTRL => PS_A_CYCLE_CTRL,
		MS_A_CYCLE_CTRL => MS_A_CYCLE_CTRL,
		PS_C_CYCLE_CTRL => PS_C_CYCLE_CTRL,
		MS_C_CYCLE_CTRL => MS_C_CYCLE_CTRL,
		PS_C_OR_D_CYCLE_CTRL => PS_C_OR_D_CYCLE_CTRL,
		PS_B_CYCLE_CTRL => PS_B_CYCLE_CTRL,
		MS_B_CYCLE_CTRL => MS_B_CYCLE_CTRL,
		PS_D_CYCLE_CTRL => PS_D_CYCLE_CTRL,
		MS_D_CYCLE_CTRL => MS_D_CYCLE_CTRL,
		MS_DISPLAY_OR_ALTER => MS_DISPLAY_OR_ALTER,
		PS_DISPLAY_OR_ALTER => PS_DISPLAY_OR_ALTER,
		MS_DISPLAY_OR_ALTER_SET_2ND_SCAN => MS_DISPLAY_OR_ALTER_SET_2ND_SCAN,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		MS_I_CYCLE_CTRL => MS_I_CYCLE_CTRL,
		PS_X_CYCLE_CTRL => PS_X_CYCLE_CTRL,
		MS_X_CYCLE_CTRL => MS_X_CYCLE_CTRL,
		MS_I_O_LAST_EX_DOT_Z => MS_I_O_LAST_EX_DOT_Z,
		MS_LAST_EX_DOT_NEXT_TO_LAST => MS_LAST_EX_DOT_NEXT_TO_LAST,
		PS_STOP_AT_F => PS_STOP_AT_F,
		MS_STOP_AT_F_DOT_B_CYCLE => MS_STOP_AT_F_DOT_B_CYCLE,
		MS_STORAGE_SCAN_RGEN => MS_STORAGE_SCAN_RGEN,
		PS_LAST_LOGIC_GATE_1 => PS_LAST_LOGIC_GATE_1,
		MS_LAST_LOGIC_GATE_1 => MS_LAST_LOGIC_GATE_1,
		PS_NEXT_TO_LAST_LOGIC_GATE => PS_NEXT_TO_LAST_LOGIC_GATE,
		PS_LAST_LOGIC_GATE_2 => PS_LAST_LOGIC_GATE_2,
		MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN => MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN,
		PS_STOP_AT_H => PS_STOP_AT_H,
		PS_STOP_AT_J => PS_STOP_AT_J,
		MS_STORAGE_SCAN_LOAD => MS_STORAGE_SCAN_LOAD,
		PS_STOP_AT_K => PS_STOP_AT_K);

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
   begin

   -- Your test bench code
   

   -- Reset tests

   SWITCH_ROT_STOR_SCAN <= "001000";  -- Storage scan OFF
   
   wait for 1 us;
   MS_PROGRAM_RESET_1 <= '0';
   MS_COMPUTER_RESET_1 <= '0';
   wait for 3 us;
   MS_PROGRAM_RESET_1 <= '1';
   MS_COMPUTER_RESET_1 <= '1';
   wait for 1 us;
   
   --   Simple combinatorial tests - 12.12.30.1 
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set at beginning" severity failure;
   wait for 30 ns;
   PS_COMPARE_OP_CODE <= '1';
   wait for 30 ns;
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (1)" severity failure;   
   PS_COMPARE_OP_CODE <= '0';
   PS_B_CYCLE_1 <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (2)" severity failure;
   MS_STOP_AT_F_TLU <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (2)" severity failure;
   MS_STOP_AT_F_TLU <= '1';
   wait for 30 ns;   
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (3)" severity failure;
   MS_B_CYCLE_DOT_NO_SCAN <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (3)" severity failure;
   MS_B_CYCLE_DOT_NO_SCAN <= '1';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (4)" severity failure;
   PS_STOP_AT_F_ON_B_CY_OP_CODES <= '1';
   wait for 30 ns;
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (4)" severity failure;
   PS_STOP_AT_F_ON_B_CY_OP_CODES <= '0';
   PS_B_CYCLE_1 <= '0';   
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (5)" severity failure;
   PS_D_CYCLE <= '1';  -- -S MPLY OP CODE and -S FILE OP both already at '1'
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (5)" severity failure;
   PS_D_CYCLE <= '0';   
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (6)" severity failure;
   PS_C_CYCLE_1 <= '1';  -- -S STORE ADDR REGS OP CODE already at '1'
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (6)" severity failure;
   PS_C_CYCLE_1 <= '0';   
   wait for 30 ns;
      
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (7)" severity failure;
   --  -S STORAGE SCAN LOAD Already '1'
   --  -S 1401 COND TESTS.I9 is also already '1'
   --  -S 1401 MODE.IRING 5+10.I CY already '1'
   PS_I_CYCLE <= '1';   
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (7)" severity failure;
   PS_I_CYCLE <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (8)" severity failure;
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '0';   
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (8)" severity failure;
   MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= '1';   
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (9)" severity failure;
   assert MS_STOP_AT_F_DOT_B_CYCLE = '1' report "-S STOP AT F.B CYCLE SET EARLY" severity failure;   
   PS_STOP_AT_F_ON_B_CY_OPS <= '1';
   wait for 30 ns;
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (9)" severity failure;
   assert MS_STOP_AT_F_DOT_B_CYCLE = '0' report "-S STOP AT F.B CYCLE NOT SET" severity failure;
   PS_STOP_AT_F_ON_B_CY_OPS <= '0';
   PS_B_CYCLE_1 <= '0';   
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (10)" severity failure;
   MS_OUTPUT_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (10)" severity failure;
   MS_OUTPUT_CYCLE <= '1';   
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (11)" severity failure;
   MS_INPUT_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (11)" severity failure;
   MS_INPUT_CYCLE <= '1';   
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (12)" severity failure;
   PS_STOP_AT_F_STAR_ARITH <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (12)" severity failure;
   PS_STOP_AT_F_STAR_ARITH <= '0';
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (13)" severity failure;
   MS_WORD_MARK_OP_DOT_B_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (13)" severity failure;
   MS_WORD_MARK_OP_DOT_B_CYCLE <= '1';
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (14)" severity failure;
   MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (14)" severity failure;
   MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT <= '1';
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (15)" severity failure;
   MS_INTERRUPT_DOT_B_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (15)" severity failure;
   MS_INTERRUPT_DOT_B_CYCLE <= '1';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (16)" severity failure;
   PS_1401_STORE_A_AR_OP_CODE <= '1';
   wait for 30 ns;
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (16)" severity failure;
   PS_1401_STORE_A_AR_OP_CODE <= '0';
   wait for 30 ns;
   PS_B_CYCLE_1 <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (17)" severity failure;
   SWITCH_ROT_STOR_SCAN <= "010000";  -- STOR SCAN REGEN 
   wait for 30 ns;
   PS_STORAGE_SCAN_ROUTINE <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (17)" severity failure;
   SWITCH_ROT_STOR_SCAN <= "001000";  -- STOR SCAN OFF
   PS_STORAGE_SCAN_ROUTINE <= '0';
   wait for 30 ns;

   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (18)" severity failure;
   MS_MPLY_DOT_3_DOT_D <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (18)" severity failure;
   MS_MPLY_DOT_3_DOT_D <= '1';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (19)" severity failure;
   MS_WORD_MARK_OP_DOT_B_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (19)" severity failure;
   MS_WORD_MARK_OP_DOT_B_CYCLE <= '1';
   wait for 30 ns;
   
   assert PS_STOP_AT_F = '0' report "+S STOP AT F set (20)" severity failure;
   MS_WORD_MARK_OP_DOT_A_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_F = '1' report "+S STOP AT F not set (20)" severity failure;
   MS_WORD_MARK_OP_DOT_A_CYCLE <= '1';
   wait for 30 ns;
   
   -- Page 12.12.32.1 Combinatorial
   
   assert PS_STOP_AT_H = '0' report "+S STOP AT H set (1)" severity failure;
   assert MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN = '1' report "-S STOP AT H.B CY.1ST SCAN not set (1)" severity failure;   
   PS_STOP_AT_H_ON_B_CYCLE_OPS <= '1';
   PS_B_CYCLE_1 <= '1';
   PS_1ST_SCAN <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_H = '1' report "+S STOP AT H not set (1)" severity failure;
   assert MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN = '0' report "-S STOP AT H.B CY.1ST SCAN set (1)" severity failure;
   PS_STOP_AT_H_ON_B_CYCLE_OPS <= '0';
   PS_B_CYCLE_1 <= '0';
   PS_1ST_SCAN <= '0';   
   wait for 30 ns;
  
   assert PS_STOP_AT_H = '0' report "+S STOP AT H set (2)" severity failure;
   MS_FILE_OP_DOT_D_CYCLE <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_H = '1' report "+S STOP AT H not set (2)" severity failure;
   MS_FILE_OP_DOT_D_CYCLE <= '1';
   wait for 30 ns;

   assert PS_STOP_AT_H = '0' report "+S STOP AT H set (3)" severity failure;
   assert PS_STOP_AT_K = '0' report "+S STOP AT K set (3A)" severity failure;
   PS_A_RING_4_TIME <= '1';
   PS_X_CYCLE <= '1';
   PS_1401_MODE_1 <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_K = '1' report "+S STOP AT K not set (3A)" severity failure;
   assert PS_STOP_AT_H = '0' report "+S STOP AT H set (3B)" severity failure;
   -- +S X CYCLE already set above
   PS_A_RING_4_TIME <= '0';
   PS_1401_MODE_1 <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_H = '1' report "+S STOP AT H not set (3)" severity failure;
   PS_X_CYCLE <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_J = '0' report "+S STOP AT J set (1)" severity failure;
   PS_STOP_AT_J_ON_B_CY_OP_CODES <= '1';
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_J = '1' report "+S STOP AT J not set (1)" severity failure;
   PS_STOP_AT_J_ON_B_CY_OP_CODES <= '0';
   PS_B_CYCLE_1 <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_J = '0' report "+S STOP AT J set (2)" severity failure;
   PS_STORE_ADDR_REGS_OP_CODE <= '1';
   PS_C_CYCLE <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_J = '1' report "+S STOP AT J not set (2)" severity failure;
   PS_STORE_ADDR_REGS_OP_CODE <= '0';
   PS_C_CYCLE <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_J = '0' report "+S STOP AT J set (3)" severity failure;
   MS_STOP_AT_J_TLU <= '0';
   wait for 30 ns;
   assert PS_STOP_AT_J = '1' report "+S STOP AT J not set (3)" severity failure;
   MS_STOP_AT_J_TLU <= '1';
   wait for 30 ns;

   assert PS_STOP_AT_J = '0' report "+S STOP AT J set (4)" severity failure;
   PS_1401_STORE_AR_OP_CODES <= '1';
   PS_A_CYCLE <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_J = '1' report "+S STOP AT J not set (4)" severity failure;
   PS_1401_STORE_AR_OP_CODES <= '0';
   PS_A_CYCLE <= '0';
   wait for 30 ns;
   
   --   Combinatorial page 12.12.33.1
   
   -- -S 1401 MODE.A RING 4.X CYCLE internal only (and already tested above)
   
   assert PS_STOP_AT_K = '0' report "+S STOP AT K set (1)" severity failure;
   PS_1401_MODE_1 <= '1';
   PS_I_RING_5_OR_10_TIME <= '1';
   PS_I_CYCLE <= '1';
   wait for 30 ns;
   assert PS_STOP_AT_K = '1' report "+S STOP AT K not set (1)" severity failure;
   PS_1401_MODE_1 <= '0';
   PS_I_RING_5_OR_10_TIME <= '0';
   PS_I_CYCLE <= '0';
   wait for 30 ns;
   
   assert PS_STOP_AT_K = '0' report "+S STOP AT K set (2)" severity failure;
   assert MS_STORAGE_SCAN_LOAD = '1' report "-S STORAGE SCAN LOAD not 1 (2)" severity failure;
   -- -S ADDRESS SET ROUTINE already '1'
   PS_STORAGE_SCAN_ROUTINE <= '1';
   SWITCH_ROT_STOR_SCAN <= "000010";  -- STORAGE SCAN SET TO LOAD 
   wait for 30 ns;
   assert PS_STOP_AT_K = '1' report "+S STOP AT K not set (2)" severity failure;
   assert MS_STORAGE_SCAN_LOAD = '0' report "-S STORAGE SCAN LOAD not 0 (2)" severity failure;
   PS_STORAGE_SCAN_ROUTINE <= '0';
   SWITCH_ROT_STOR_SCAN <= "001000";  -- STORAGE SCAN SET TO OFF    
   wait for 30 ns;
   
   --   Begin the sequential tests
   
   assert PS_A_CYCLE_CTRL = '0' report "A Cycle Ctrl not 0 after Reset" severity failure;
   assert PS_C_CYCLE_CTRL = '0' report "C Cycle Ctrl not 0 after Reset" severity failure;
   assert PS_B_CYCLE_CTRL = '0' report "B Cycle Ctrl not 0 after Reset" severity failure;
   assert PS_D_CYCLE_CTRL = '0' report "D Cycle Ctrl not 0 after Reset" severity failure;
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Ctrl not 1 after Reset" severity failure;
   assert PS_X_CYCLE_CTRL = '0' report "X Cycle Ctrl not 0 after Reset" severity failure;
   
   assert PS_LAST_LOGIC_GATE_1 = '0' report "Last Logic Gate 1 not 0 after Computer Reset" severity failure;
   assert PS_LAST_LOGIC_GATE_2 = '0' report "Last Logic Gate 2 not 0 after Computer Reset" severity failure;
   assert PS_NEXT_TO_LAST_LOGIC_GATE = '0' report "Next to Last Logic Gate not 0 after Computer Reset" severity failure;
   
   assert PS_STOP_AT_F = '0' report "Stop at F not 0 at start" severity failure;
   assert PS_STOP_AT_H = '0' report "Stop at H not 0 at start" severity failure;
   assert PS_STOP_AT_J = '0' report "Stop at J not 0 at start" severity failure;
   assert PS_STOP_AT_K = '0' report "Stop at K not 0 at start" severity failure;
      
   assert MS_STORAGE_SCAN_RGEN = '1' report "-S Storage Scan Regen not 1 at start" severity failure;   
   assert MS_STORAGE_SCAN_LOAD = '1' report "-S Storage Scan Load not 1 at start" severity failure;
   
   --   Trip next to last logic gate (12.12.31.1)
   
   MS_STOP_AT_F_DOT_LOGIC_GATE_D <= '0';
   wait for 30 ns;
   assert PS_NEXT_TO_LAST_LOGIC_GATE = '0' report "Next to Last Logic Gate set early (1)" severity failure;
   PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
   wait for 300 ns;
   assert PS_NEXT_TO_LAST_LOGIC_GATE = '0' report "Next to Last Logic Gate set early (2)" severity failure;
   PS_2ND_CLOCK_PULSE_3_JRJ <= '0';   
   wait for 30 ns;
   assert PS_NEXT_TO_LAST_LOGIC_GATE = '1' report "Next to Last Logic Gate Did Not Set" severity failure;
   MS_STOP_AT_F_DOT_LOGIC_GATE_D <= '1';
   wait for 30 ns;   
   wait for 240 ns;
   PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
   wait for 300 ns;
   PS_2ND_CLOCK_PULSE_3_JRJ <= '0';
   wait for 30ns;
   assert PS_NEXT_TO_LAST_LOGIC_GATE = '0' report "Next to Last Logic Gate Did not Reset" severity failure;
   assert PS_LAST_LOGIC_GATE_2 = '1' report "Last Logic Gate Did not Set" severity failure;
   
   wait for 270 ns;
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   
   --   A Cycle Test
   
   wait for 270 ns;
   assert PS_A_CYCLE_CTRL = '0' report "A Cycle Ctrl Test: A Cycle Ctrl Already set" severity failure;
   MS_LOGIC_GATE_D_1 <= '0';
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   PS_SET_A_CYCLE_CTRL <= '1';
   wait for 30 ns;
   assert PS_A_CYCLE_CTRL = '0' report "A Cycle Ctrl Test: A Cycle Ctrl Set during LGD" severity failure;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 30 ns;
   assert PS_A_CYCLE_CTRL = '1' report "A Cycle Ctrl Test: A Cycle Ctrl Did Not set" severity failure;
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   --   A Cycle would actually happen here, taking several microseconds
   wait for 660 ns;
   PS_SET_A_CYCLE_CTRL <= '0';
   wait for 100 ns;
   assert PS_A_CYCLE_CTRL = '1' report "A Cycle Ctrl Test: A Cycle Ctrl Reset Prematurely with +S SET A CYCLE CTRL" severity failure;
   wait for 100 ns;  
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   assert PS_A_CYCLE_CTRL = '1' report "A Cycle Ctrl Test: A Cycle Ctrl Reset Prematurely with Next to Last Logic Gate" severity failure;
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 100 ns;         
   assert PS_A_CYCLE_CTRL = '0' report "A Cycle Ctrl Test: A Cycle Ctrl did not reset during LGD" severity failure;
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);

   --   C Cycle Test (Verify using waveforms)
   wait for 270 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   PS_SET_C_CYCLE_CTRL <= '1';   
   MS_LOGIC_GATE_D_1 <= '1';    -- Now it should set
   wait for 30 ns;
   assert PS_C_CYCLE_CTRL = '1' report "C Cycle Control did not set after LGD" severity failure;
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   wait for 660 ns;
   PS_SET_C_CYCLE_CTRL <= '0';
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets   
   wait for 30 ns;
   assert PS_C_CYCLE_CTRL = '0' report "C Cycle Ctrl did not reset during LGD" severity failure;
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   
   --   B Cycle Test (Verify using waveforms)
   wait for 270 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   PS_SET_B_CYCLE_CTRL <= '1';   
   MS_LOGIC_GATE_D_1 <= '1';    -- Now it should set
   wait for 30 ns;
   assert PS_B_CYCLE_CTRL = '1' report "B Cycle Control did not set after LGD" severity failure;
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   wait for 660 ns;
   PS_SET_B_CYCLE_CTRL <= '0';
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets   
   wait for 30 ns;
   assert PS_B_CYCLE_CTRL = '0' report "B Bycle Ctrl did not reset during LGD (1)" severity failure;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;
   MS_1401_I_O_SET_BRANCH_CNDS <= '0';
   wait for 30 ns;
   assert PS_B_CYCLE_CTRL = '1' report "B Bycle Ctrl did not set for -S 1401 IO SET BRANCH CNDS" severity failure;
   wait for 100 ns;
   MS_1401_I_O_SET_BRANCH_CNDS <= '1';
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   wait for 30 ns;
   assert PS_B_CYCLE_CTRL = '0' report "B Bycle Ctrl did not reset during LGD (2)" severity failure;   
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);   
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   
   --   D Cycle Test (Verify using waveforms)
   wait for 270 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   PS_SET_D_CYCLE_CTRL <= '1';   
   MS_LOGIC_GATE_D_1 <= '1';    -- Now it should set
   wait for 30 ns;
   assert PS_D_CYCLE_CTRL = '1' report "D Cycle Control did not set after LGD" severity failure;
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   wait for 660 ns;
   PS_SET_D_CYCLE_CTRL <= '0';
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets   
   wait for 30 ns;
   assert PS_D_CYCLE_CTRL = '0' report "D Cycle Ctrl did not reset during LGD (1)" severity failure;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;
   MS_DISPLAY_ROUTINE <= '0';
   wait for 100 ns;
   PS_LOGIC_GATE_A_1 <= '1';
   wait for 100 ns;
   PS_CONSOLE_STROBE <= '1';
   wait for 100 ns;
   assert PS_D_CYCLE_CTRL = '1' report "D Bycle Ctrl did not set for Console Display" severity failure;
   wait for 100 ns;
   MS_DISPLAY_ROUTINE <= '1';
   wait for 100 ns;
   PS_LOGIC_GATE_A_1 <= '0';
   wait for 100 ns;
   PS_CONSOLE_STROBE <= '1';
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   wait for 30 ns;
   assert PS_D_CYCLE_CTRL = '0' report "D Bycle Ctrl did not reset during LGD (2)" severity failure;   
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);   
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   
   --   I Cycle Control Tests

   wait for 270 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   PS_SET_I_CYCLE_CTRL <= '1';
   PS_NOT_INTR_START <= '1';
   MS_LOGIC_GATE_D_1 <= '1';    -- Now it should set  (NLLG is set at this point)
   wait for 30 ns;
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Control did not set after LGD" severity failure;
   wait for 30 ns;
   PS_SET_I_CYCLE_CTRL <= '0';
   PS_NOT_INTR_START <= '0';
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;      
   assert PS_I_CYCLE_CTRL = '0' report "I Cycle Control did not reset at LGD" severity failure;
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;
   
   MS_CONSOLE_SET_START_CND <= '0';
   wait for 30 ns;
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Control did not set after Console Set Start Cnd" severity failure;
   wait for 30 ns;
   MS_CONSOLE_SET_START_CND <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;
   
   PS_STORAGE_SCAN_ROUTINE <= '1';
   PS_CONS_PRINTER_STROBE <= '1'; 
   wait for 30 ns;   
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Control did not set with STORAGE SCAN and PRINTER STROBE" severity failure;
   wait for 30 ns;
   PS_STORAGE_SCAN_ROUTINE <= '0';
   PS_CONS_PRINTER_STROBE <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;
   
   MS_ANY_CHECK_TEST <= '0';
   wait for 30 ns;
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Control did not set after Any Check Test" severity failure;
   wait for 30 ns;
   MS_ANY_CHECK_TEST <= '1';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;

   PS_LAST_EXECUTE_CYCLE <= '1';
   PS_PROCESS_ROUTINE <= '1';
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   wait for 30 ns;   
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Control did not on Last Execute Cycle" severity failure;
   wait for 30 ns;   
   PS_LAST_EXECUTE_CYCLE <= '0';
   PS_PROCESS_ROUTINE <= '0';
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);   
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;
   
   PS_LOGIC_GATE_Z <= '1';
   PS_I_O_LAST_EX_CYCLE <= '1';
   PS_PROCESS_ROUTINE <= '1';
   wait for 30 ns;
   assert PS_I_CYCLE_CTRL = '1' report "I Cycle Control did not set on LGZ*IO LAST EX*PROCESS ROUTINE" severity failure;
   assert MS_I_O_LAST_EX_DOT_Z = '0' report "-S IO LAST EX dit not set properly" severity failure;
   wait for 100 ns;
   PS_LOGIC_GATE_Z <= '0';
   PS_I_O_LAST_EX_CYCLE <= '0';
   PS_PROCESS_ROUTINE <= '0';
   MS_LOGIC_GATE_D_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_D_1 <= '1';
   wait for 100 ns;

   --   Z Cycle Control Test (Verify using waveforms)
   
   wait for 270 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   PS_SET_X_CYCLE_CTRL <= '1';   
   MS_LOGIC_GATE_D_1 <= '1';    -- Now it should set
   wait for 30 ns;
   assert PS_X_CYCLE_CTRL = '1' report "X Cycle Control did not set after LGD" severity failure;
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   wait for 660 ns;
   PS_SET_X_CYCLE_CTRL <= '0';
   wait for 100 ns;
   MS_LOGIC_GATE_D_1 <= '0';    -- Logic Gate D Resets   
   wait for 30 ns;
   assert PS_X_CYCLE_CTRL = '0' report "X Cycle Ctrl did not reset during LGD" severity failure;
   NLLG(MS_STOP_AT_J_DOT_LOGIC_GATE_G, PS_2ND_CLOCK_PULSE_3_JRJ);
   LLG(PS_2ND_CLOCK_PULSE_3_JRJ);
   ENDLLG(PS_2ND_CLOCK_PULSE_3_JRJ);

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

END;