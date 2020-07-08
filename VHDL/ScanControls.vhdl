-- VHDL for IBM SMS ALD group ScanControls
-- Title: ScanControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/8/2020 2:55:03 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ScanControls is
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
end ScanControls;


ARCHITECTURE structural of ScanControls is

	 signal PS_2ND_SCAN_CTRL: STD_LOGIC;
	 signal PS_3RD_SCAN_CTRL: STD_LOGIC;
	 signal PS_SET_NO_SCAN_CTRL: STD_LOGIC;
	 signal PS_SET_1ST_SCAN_CTRL: STD_LOGIC;
	 signal PS_RGEN_1ST_SCAN_CTRL: STD_LOGIC;
	 signal PS_SET_2ND_SCAN_CTRL: STD_LOGIC;
	 signal PS_RGEN_2ND_SCAN_CTRL: STD_LOGIC;
	 signal PS_RGEN_3RD_SCAN_CTRL: STD_LOGIC;
	 signal PS_SET_3RD_SCAN_CTRL: STD_LOGIC;

	 signal XX_PS_NO_SCAN_CTRL: STD_LOGIC;
	 signal XX_PS_1ST_SCAN_CTRL: STD_LOGIC;
	 signal XX_MS_1ST_SCAN: STD_LOGIC;
	 signal XX_PS_1ST_SCAN: STD_LOGIC;
	 signal XX_PS_2ND_SCAN: STD_LOGIC;
	 signal XX_PS_3RD_SCAN: STD_LOGIC;
	 signal XX_MS_NO_SCAN: STD_LOGIC;
	 signal XX_MS_2ND_SCAN: STD_LOGIC;
	 signal XX_MS_3RD_SCAN: STD_LOGIC;
	 signal XX_MS_NO_SCAN_CTRL: STD_LOGIC;
	 signal XX_MS_1ST_SCAN_CTRL: STD_LOGIC;
	 signal XX_MS_2ND_SCAN_CTRL: STD_LOGIC;
	 signal XX_MS_3RD_SCAN_CTRL: STD_LOGIC;
	 signal XX_LAMP_15A1A08: STD_LOGIC;
	 signal XX_LAMP_15A1B08: STD_LOGIC;
	 signal XX_LAMP_15A1C08: STD_LOGIC;
	 signal XX_LAMP_15A1D08: STD_LOGIC;

BEGIN

	PS_NO_SCAN_CTRL <= 
		XX_PS_NO_SCAN_CTRL;
	PS_1ST_SCAN_CTRL <= 
		XX_PS_1ST_SCAN_CTRL;
	MS_1ST_SCAN <= 
		XX_MS_1ST_SCAN;
	PS_1ST_SCAN <= 
		XX_PS_1ST_SCAN;
	PS_2ND_SCAN <= 
		XX_PS_2ND_SCAN;
	PS_3RD_SCAN <= 
		XX_PS_3RD_SCAN;
	MS_NO_SCAN <= 
		XX_MS_NO_SCAN;
	MS_2ND_SCAN <= 
		XX_MS_2ND_SCAN;
	MS_3RD_SCAN <= 
		XX_MS_3RD_SCAN;
	MS_NO_SCAN_CTRL <= 
		XX_MS_NO_SCAN_CTRL;
	MS_1ST_SCAN_CTRL <= 
		XX_MS_1ST_SCAN_CTRL;
	MS_2ND_SCAN_CTRL <= 
		XX_MS_2ND_SCAN_CTRL;
	MS_3RD_SCAN_CTRL <= 
		XX_MS_3RD_SCAN_CTRL;

	LAMPS_SCAN <= (
		XX_LAMP_15A1D08,
		XX_LAMP_15A1C08,
		XX_LAMP_15A1B08,
		XX_LAMP_15A1A08);

Page_12_30_01_1: ENTITY ALD_12_30_01_1_NO_SCAN_AND_1ST_SCAN_LATCHES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_LOGIC_GATE_B_1 =>
		MS_LOGIC_GATE_B_1,
	PS_NO_SCAN_CTRL =>
		XX_PS_NO_SCAN_CTRL,
	PS_LOGIC_GATE_C_1 =>
		PS_LOGIC_GATE_C_1,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_1ST_SCAN_CTRL =>
		XX_PS_1ST_SCAN_CTRL,
	PS_NO_SCAN =>
		PS_NO_SCAN,
	PS_NO_SCAN_1 =>
		PS_NO_SCAN_1,
	MS_NO_SCAN =>
		XX_MS_NO_SCAN,
	PS_1ST_SCAN =>
		XX_PS_1ST_SCAN,
	MS_1ST_SCAN =>
		XX_MS_1ST_SCAN,
	LAMP_15A1A08 =>
		XX_LAMP_15A1A08,
	LAMP_15A1B08 =>
		XX_LAMP_15A1B08
	);

Page_12_30_02_1: ENTITY ALD_12_30_02_1_2ND_AND_3RD_SCAN_LATCHES_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_LOGIC_GATE_B_1 =>
		MS_LOGIC_GATE_B_1,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	MS_1ST_SCAN =>
		XX_MS_1ST_SCAN,
	PS_2ND_SCAN_CTRL =>
		PS_2ND_SCAN_CTRL,
	PS_LOGIC_GATE_C_1 =>
		PS_LOGIC_GATE_C_1,
	PS_3RD_SCAN_CTRL =>
		PS_3RD_SCAN_CTRL,
	PS_2ND_SCAN =>
		XX_PS_2ND_SCAN,
	MS_2ND_SCAN =>
		XX_MS_2ND_SCAN,
	PS_1ST_OR_2ND_SCAN =>
		PS_1ST_OR_2ND_SCAN,
	PS_3RD_SCAN =>
		XX_PS_3RD_SCAN,
	MS_3RD_SCAN =>
		XX_MS_3RD_SCAN,
	LAMP_15A1C08 =>
		XX_LAMP_15A1C08,
	LAMP_15A1D08 =>
		XX_LAMP_15A1D08
	);

Page_12_30_03_1: ENTITY ALD_12_30_03_1_NO_SCAN_AND_1ST_SCAN_CTRLS_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_1401_I_O_SET_BRANCH_CNDS =>
		MS_1401_I_O_SET_BRANCH_CNDS,
	PS_NEXT_TO_LAST_LOGIC_GATE =>
		PS_NEXT_TO_LAST_LOGIC_GATE,
	PS_SET_NO_SCAN_CTRL =>
		PS_SET_NO_SCAN_CTRL,
	MS_LOGIC_GATE_D_1 =>
		MS_LOGIC_GATE_D_1,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_SET_1ST_SCAN_CTRL =>
		PS_SET_1ST_SCAN_CTRL,
	PS_1ST_SCAN =>
		XX_PS_1ST_SCAN,
	PS_RGEN_1ST_SCAN_CTRL =>
		PS_RGEN_1ST_SCAN_CTRL,
	MS_NO_SCAN_CTRL =>
		XX_MS_NO_SCAN_CTRL,
	PS_NO_SCAN_CTRL =>
		XX_PS_NO_SCAN_CTRL,
	PS_1ST_SCAN_CTRL =>
		XX_PS_1ST_SCAN_CTRL,
	MS_1ST_SCAN_CTRL =>
		XX_MS_1ST_SCAN_CTRL
	);

Page_12_30_04_1: ENTITY ALD_12_30_04_1_2ND_AND_3RD_SCAN_CTRLS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_LOGIC_GATE_D_1 =>
		MS_LOGIC_GATE_D_1,
	MS_DISPLAY_OR_ALTER_SET_2ND_SCAN =>
		MS_DISPLAY_OR_ALTER_SET_2ND_SCAN,
	PS_NEXT_TO_LAST_LOGIC_GATE =>
		PS_NEXT_TO_LAST_LOGIC_GATE,
	PS_2ND_SCAN =>
		XX_PS_2ND_SCAN,
	PS_3RD_SCAN =>
		XX_PS_3RD_SCAN,
	PS_SET_2ND_SCAN_CTRL =>
		PS_SET_2ND_SCAN_CTRL,
	PS_RGEN_2ND_SCAN_CTRL =>
		PS_RGEN_2ND_SCAN_CTRL,
	PS_RGEN_3RD_SCAN_CTRL =>
		PS_RGEN_3RD_SCAN_CTRL,
	PS_SET_3RD_SCAN_CTRL =>
		PS_SET_3RD_SCAN_CTRL,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_2ND_SCAN_CTRL =>
		PS_2ND_SCAN_CTRL,
	PS_3RD_SCAN_CTRL =>
		PS_3RD_SCAN_CTRL,
	MS_2ND_SCAN_CTRL =>
		XX_MS_2ND_SCAN_CTRL,
	MS_3RD_SCAN_CTRL =>
		XX_MS_3RD_SCAN_CTRL
	);

Page_12_30_05_1: ENTITY ALD_12_30_05_1_SCAN_CONTROLS_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_1401_TAKE_I_TO_B_CYCLE =>
		MS_1401_TAKE_I_TO_B_CYCLE,
	MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN =>
		MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN,
	MS_FILE_OP_TAKE_EXTENSION_CYCLE =>
		MS_FILE_OP_TAKE_EXTENSION_CYCLE,
	MS_LAST_I_CYCLE_B =>
		MS_LAST_I_CYCLE_B,
	MS_ALT_ROUTINE_DOT_2ND_SCAN =>
		MS_ALT_ROUTINE_DOT_2ND_SCAN,
	MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE =>
		MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE,
	PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 =>
		PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9,
	PS_SET_NO_SCAN_CTRL_STAR_BR_OPS =>
		PS_SET_NO_SCAN_CTRL_STAR_BR_OPS,
	MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1 =>
		MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1,
	MS_STORE_AR_SET_C_CYCLE_CTRL_A =>
		MS_STORE_AR_SET_C_CYCLE_CTRL_A,
	PS_LAST_INSN_RO_CYCLE_1 =>
		PS_LAST_INSN_RO_CYCLE_1,
	PS_DATA_MOVE_OP_CODE =>
		PS_DATA_MOVE_OP_CODE,
	PS_OP_MOD_REG_NOT_8_BIT =>
		PS_OP_MOD_REG_NOT_BUS(3),
	PS_1ST_SCAN_FIRST_OP_CODES =>
		PS_1ST_SCAN_FIRST_OP_CODES,
	MS_CLEAR_OP_TAKE_1ST_SCAN =>
		MS_CLEAR_OP_TAKE_1ST_SCAN,
	MS_DATA_MOVE_A_CYCLE_CTRL_SET =>
		MS_DATA_MOVE_A_CYCLE_CTRL_SET,
	MS_G_OP_SET_C_CYCLE_CTRL_B =>
		MS_G_OP_SET_C_CYCLE_CTRL_B,
	MS_WORD_MARK_OP_DOT_A_CYCLE =>
		MS_WORD_MARK_OP_DOT_A_CYCLE,
	MS_MPLY_DOT_N_DOT_C =>
		MS_MPLY_DOT_N_DOT_C,
	PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH =>
		PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH,
	MS_EDIT_SET_A_CYCLE_CTRL =>
		MS_EDIT_SET_A_CYCLE_CTRL,
	MS_EDIT_SET_B_CYCLE_CTRL_A =>
		MS_EDIT_SET_B_CYCLE_CTRL_A,
	MS_STD_A_CYCLE_OPS_DOT_A_CYCLE =>
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
	MS_EDIT_SET_B_CYCLE_CTRL_C =>
		MS_EDIT_SET_B_CYCLE_CTRL_C,
	MS_TLU_SET_B_CYCLE_CTRL =>
		MS_TLU_SET_B_CYCLE_CTRL,
	MS_SET_A_CYCLE_CTRL_ON_Z_OP =>
		MS_SET_A_CYCLE_CTRL_ON_Z_OP,
	MS_CMP_MODE_SET_A_CYCLE_CTRL_A =>
		MS_CMP_MODE_SET_A_CYCLE_CTRL_A,
	MS_TLU_SET_A_CYCLE_CTRL_B =>
		MS_TLU_SET_A_CYCLE_CTRL_B,
	MS_STORE_AR_SET_A_CYCLE_CTRL_A =>
		MS_STORE_AR_SET_A_CYCLE_CTRL_A,
	MS_STORE_AR_SET_A_CYCLE_CTRL_B =>
		MS_STORE_AR_SET_A_CYCLE_CTRL_B,
	MS_STORE_AR_SET_C_CYCLE_CTRL_B =>
		MS_STORE_AR_SET_C_CYCLE_CTRL_B,
	PS_SET_NO_SCAN_CTRL =>
		PS_SET_NO_SCAN_CTRL,
	PS_SET_1ST_SCAN_CTRL =>
		PS_SET_1ST_SCAN_CTRL,
	PS_RGEN_1ST_SCAN_CTRL =>
		PS_RGEN_1ST_SCAN_CTRL
	);

Page_12_30_06_1: ENTITY ALD_12_30_06_1_SCAN_CONTROLS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_EDIT_SET_B_CYCLE_CTRL_G =>
		MS_EDIT_SET_B_CYCLE_CTRL_G,
	PS_LAST_INSN_RO_CYCLE_1 =>
		PS_LAST_INSN_RO_CYCLE_1,
	PS_DATA_MOVE_OP_CODE =>
		PS_DATA_MOVE_OP_CODE,
	PS_OP_MOD_REG_8_BIT =>
		PS_OP_MOD_REG_BUS(3),
	MS_EDIT_SET_B_CYCLE_CTRL_B =>
		MS_EDIT_SET_B_CYCLE_CTRL_B,
	PS_SET_2ND_SCAN_CTRL_STAR_ARITH =>
		PS_SET_2ND_SCAN_CTRL_STAR_ARITH,
	MS_EDIT_SET_B_CYCLE_CTRL_C =>
		MS_EDIT_SET_B_CYCLE_CTRL_C,
	MS_DATA_MOVE_A_CYCLE_CTRL_SET =>
		MS_DATA_MOVE_A_CYCLE_CTRL_SET,
	MS_EDIT_SKID_CYCLE =>
		MS_EDIT_SKID_CYCLE,
	MS_STD_A_CYCLE_OPS_DOT_A_CYCLE =>
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
	MS_EDIT_SET_B_CYCLE_CTRL_E =>
		MS_EDIT_SET_B_CYCLE_CTRL_E,
	MS_EDIT_SET_B_CYCLE_CTRL_F =>
		MS_EDIT_SET_B_CYCLE_CTRL_F,
	PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH =>
		PS_RGEN_3RD_SCAN_CTRL_STAR_ARITH,
	MS_EDIT_SET_B_CYCLE_CTRL_D =>
		MS_EDIT_SET_B_CYCLE_CTRL_D,
	MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY =>
		MS_LB_DOT_B_CYCLE_DOT_EXT_DOT_ZONE_CARRY,
	PS_SET_3RD_SCAN_CTRL_STAR_ARITH =>
		PS_SET_3RD_SCAN_CTRL_STAR_ARITH,
	PS_SET_2ND_SCAN_CTRL =>
		PS_SET_2ND_SCAN_CTRL,
	PS_RGEN_2ND_SCAN_CTRL =>
		PS_RGEN_2ND_SCAN_CTRL,
	PS_RGEN_3RD_SCAN_CTRL =>
		PS_RGEN_3RD_SCAN_CTRL,
	PS_SET_3RD_SCAN_CTRL =>
		PS_SET_3RD_SCAN_CTRL
	);

Page_12_30_09_1: ENTITY ALD_12_30_09_1_MISC_SCAN_LATCH_OUTPUTS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_NO_SCAN =>
		XX_MS_NO_SCAN,
	MS_1ST_SCAN =>
		XX_MS_1ST_SCAN,
	MS_3RD_SCAN =>
		XX_MS_3RD_SCAN,
	MS_2ND_SCAN =>
		XX_MS_2ND_SCAN,
	MS_NO_SCAN_CTRL =>
		XX_MS_NO_SCAN_CTRL,
	MS_1ST_SCAN_CTRL =>
		XX_MS_1ST_SCAN_CTRL,
	MS_2ND_SCAN_CTRL =>
		XX_MS_2ND_SCAN_CTRL,
	MS_3RD_SCAN_CTRL =>
		XX_MS_3RD_SCAN_CTRL,
	PS_1ST_OR_NO_OR_3RD_SCAN =>
		PS_1ST_OR_NO_OR_3RD_SCAN,
	PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN =>
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN,
	PS_1ST_OR_3RD_SCAN =>
		PS_1ST_OR_3RD_SCAN,
	PS_NO_OR_1ST_OR_2ND_SCAN =>
		PS_NO_OR_1ST_OR_2ND_SCAN,
	PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL =>
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL,
	PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL =>
		PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL
	);


END;
