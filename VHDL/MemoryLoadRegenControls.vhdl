-- VHDL for IBM SMS ALD group MemoryLoadRegenControls
-- Title: MemoryLoadRegenControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/9/2020 3:53:09 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity MemoryLoadRegenControls is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_A_CYCLE: in STD_LOGIC;
		PS_A_OR_B_CYCLE: in STD_LOGIC;
		PS_B_CYCLE_1: in STD_LOGIC;
		PS_C_CYCLE: in STD_LOGIC;
		MS_STORAGE_SCAN_LOAD: in STD_LOGIC;
		MS_ALT_ROUTINE_DOT_2ND_SCAN: in STD_LOGIC;
		PS_1ST_SCAN: in STD_LOGIC;
		PS_CLEAR_OP_CODE: in STD_LOGIC;
		MS_MPLY_DOT_N_OR_1_OR_2_DOT_D: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		PS_B_CH_NOT_GROUP_MARK_WM: in STD_LOGIC;
		MS_ANY_CHECK_TEST: in STD_LOGIC;
		PS_INPUT_CYCLE: in STD_LOGIC;
		PS_I_O_END_OF_STG_STOP_CTRL: in STD_LOGIC;
		PS_WORD_MARK_OP_CODES: in STD_LOGIC;
		PS_LOAD_MEM_ON_B_CY_OP_CODES: in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE: in STD_LOGIC;
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: in STD_LOGIC;
		MS_I_CYCLE_DOT_NOT_CR_DISABLE: in STD_LOGIC;
		MS_X_CYCLE: in STD_LOGIC;
		PS_C_OR_D_CYCLE: in STD_LOGIC;
		MS_STORAGE_SCAN_RGEN: in STD_LOGIC;
		MS_1401_B_CYCLE_I_RING_OP: in STD_LOGIC;
		PS_PROCESS_ROUTINE: in STD_LOGIC;
		MS_PROCESS_ROUTINE: in STD_LOGIC;
		MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN: in STD_LOGIC;
		MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN: in STD_LOGIC;
		MS_OUTPUT_CYCLE: in STD_LOGIC;
		MS_MPLY_DOT_N_DOT_C: in STD_LOGIC;
		MS_1401_STORE_AR_DOT_C_CYCLE: in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE: in STD_LOGIC;
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT: in STD_LOGIC;
		PS_REGEN_MEM_ON_B_CY_OP_CODES: in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: in STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN: in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE: in STD_LOGIC;
		MS_DISPLAY_ROUTINE: in STD_LOGIC;
		MS_ALTER_ROUTINE: in STD_LOGIC;
		MS_DIV_DOT_2_DOT_D: in STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE: in STD_LOGIC;
		MS_MPLY_DOT_3_DOT_D: in STD_LOGIC;
		MY_LOAD_MEMORY: out STD_LOGIC;
		PS_INPUT_CYCLE_DOT_LOAD: out STD_LOGIC;
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: out STD_LOGIC;
		MY_REGEN_MEMORY: out STD_LOGIC);
end MemoryLoadRegenControls;


ARCHITECTURE structural of MemoryLoadRegenControls is

BEGIN

Page_12_50_01_1: ENTITY ALD_12_50_01_1_MEMORY_LOAD_CONTROLS_FEATURE_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_1ST_SCAN =>
		PS_1ST_SCAN,
	PS_CLEAR_OP_CODE =>
		PS_CLEAR_OP_CODE,
	MS_ALT_ROUTINE_DOT_2ND_SCAN =>
		MS_ALT_ROUTINE_DOT_2ND_SCAN,
	MS_MPLY_DOT_N_OR_1_OR_2_DOT_D =>
		MS_MPLY_DOT_N_OR_1_OR_2_DOT_D,
	PS_A_CYCLE =>
		PS_A_CYCLE,
	PS_1401_STORE_AR_OP_CODES =>
		PS_1401_STORE_AR_OP_CODES,
	PS_B_CYCLE_1 =>
		PS_B_CYCLE_1,
	MS_STORAGE_SCAN_LOAD =>
		MS_STORAGE_SCAN_LOAD,
	PS_B_CH_NOT_GROUP_MARK_WM =>
		PS_B_CH_NOT_GROUP_MARK_WM,
	MS_ANY_CHECK_TEST =>
		MS_ANY_CHECK_TEST,
	PS_INPUT_CYCLE =>
		PS_INPUT_CYCLE,
	PS_I_O_END_OF_STG_STOP_CTRL =>
		PS_I_O_END_OF_STG_STOP_CTRL,
	PS_A_OR_B_CYCLE =>
		PS_A_OR_B_CYCLE,
	PS_WORD_MARK_OP_CODES =>
		PS_WORD_MARK_OP_CODES,
	PS_LOAD_MEM_ON_B_CY_OP_CODES =>
		PS_LOAD_MEM_ON_B_CY_OP_CODES,
	PS_C_CYCLE =>
		PS_C_CYCLE,
	PS_STORE_ADDR_REGS_OP_CODE =>
		PS_STORE_ADDR_REGS_OP_CODE,
	MY_LOAD_MEMORY =>
		MY_LOAD_MEMORY,
	PS_INPUT_CYCLE_DOT_LOAD =>
		PS_INPUT_CYCLE_DOT_LOAD
	);

Page_12_50_02_1: ENTITY ALD_12_50_02_1_MEMORY_RGEN_CONTROLS_FEATURE_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_ANY_CHECK_TEST =>
		MS_ANY_CHECK_TEST,
	MS_STORAGE_SCAN_RGEN =>
		MS_STORAGE_SCAN_RGEN,
	MS_OUTPUT_CYCLE =>
		MS_OUTPUT_CYCLE,
	MS_MPLY_DOT_N_DOT_C =>
		MS_MPLY_DOT_N_DOT_C,
	MS_1401_B_CYCLE_I_RING_OP =>
		MS_1401_B_CYCLE_I_RING_OP,
	MS_1401_STORE_AR_DOT_C_CYCLE =>
		MS_1401_STORE_AR_DOT_C_CYCLE,
	MS_INTERRUPT_DOT_B_CYCLE =>
		MS_INTERRUPT_DOT_B_CYCLE,
	PS_B_CYCLE_1 =>
		PS_B_CYCLE_1,
	MS_INPUT_CYCLE_GRP_MK_WM_INSRT =>
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT,
	PS_REGEN_MEM_ON_B_CY_OP_CODES =>
		PS_REGEN_MEM_ON_B_CY_OP_CODES,
	PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 =>
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8,
	PS_C_OR_D_CYCLE =>
		PS_C_OR_D_CYCLE,
	PS_PROCESS_ROUTINE =>
		PS_PROCESS_ROUTINE,
	MS_STD_A_CYCLE_OPS_DOT_A_CYCLE =>
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
	MS_I_CYCLE_DOT_NOT_CR_DISABLE =>
		MS_I_CYCLE_DOT_NOT_CR_DISABLE,
	MS_X_CYCLE =>
		MS_X_CYCLE,
	MS_B_CYCLE_DOT_NO_SCAN =>
		MS_B_CYCLE_DOT_NO_SCAN,
	MS_PROCESS_ROUTINE =>
		MS_PROCESS_ROUTINE,
	MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN =>
		MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN,
	MS_STORAGE_SCAN_ROUTINE =>
		MS_STORAGE_SCAN_ROUTINE,
	MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN =>
		MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN,
	MS_DISPLAY_ROUTINE =>
		MS_DISPLAY_ROUTINE,
	MS_ALTER_ROUTINE =>
		MS_ALTER_ROUTINE,
	MS_DIV_DOT_2_DOT_D =>
		MS_DIV_DOT_2_DOT_D,
	MS_FILE_OP_DOT_D_CYCLE =>
		MS_FILE_OP_DOT_D_CYCLE,
	MS_MPLY_DOT_3_DOT_D =>
		MS_MPLY_DOT_3_DOT_D,
	MY_REGEN_MEMORY =>
		MY_REGEN_MEMORY,
	MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT =>
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT
	);


END;
