-- VHDL for IBM SMS ALD group FChTapeControls
-- Title: FChTapeControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/9/2020 1:43:04 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChTapeControls is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LOGIC_GATE_F_1: in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE: in STD_LOGIC;
		MS_PROGRAM_RESET_2: in STD_LOGIC;
		MS_E_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		MS_Q_OR_V_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_UNIT_CTRL_OP_CODE: in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK: in STD_LOGIC;
		PS_F_CH_SELECT_TAPE: in STD_LOGIC;
		MS_F_CH_NOT_READY: in STD_LOGIC;
		MS_F_CH_BUSY: in STD_LOGIC;
		MS_F_CH_BUSY_BUS: in STD_LOGIC;
		MC_SELECT_AT_LOAD_POINT_STAR_F_CH: in STD_LOGIC;
		PS_B_OR_R_OR_U_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_U_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_B_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_E_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_R_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_M_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_A_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD: in STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_M_OR_L_OP_CODES: in STD_LOGIC;
		PS_LOGIC_GATE_C_1: in STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME: in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		MS_RESET_END_OF_REEL_IND: in STD_LOGIC;
		PS_F_CH_TAPE_INDICATOR: in STD_LOGIC;
		MC_WRITE_CONDITION_STAR_F_CH: in STD_LOGIC;
		PS_F_CH_DISCON_LATCH: in STD_LOGIC;
		PS_F_CH_SECOND_SAMPLE_B: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F: in STD_LOGIC;
		PS_F_CH_INPUT_MODE: in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE: in STD_LOGIC;
		PS_ASSEMBLY_TO_F_CH_STAR_1414_STAR: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		MS_F_CH_TAPE_CALL: out STD_LOGIC;
		MC_READ_TAPE_CALL_STAR_F_CH: out STD_LOGIC;
		MC_WRITE_TAPE_CALL_STAR_F_CH: out STD_LOGIC;
		MC_WRITE_TAPE_MK_CALL_STAR_F_CH: out STD_LOGIC;
		MC_ERASE_CALL_STAR_F_CH: out STD_LOGIC;
		MC_REWIND_UNLOAD_STAR_F_CH: out STD_LOGIC;
		MC_REWIND_CALL_STAR_F_CH: out STD_LOGIC;
		MC_BACKSPACE_CALL_STAR_F_CH: out STD_LOGIC;
		MC_DISCONNECT_CALL_STAR_F_CH: out STD_LOGIC;
		MC_TURN_OFF_TI_STAR_F_CH: out STD_LOGIC;
		MC_RESET_TAPE_SEL_REG_STAR_CH_F: out STD_LOGIC;
		MC_SET_TAPE_SEL_REG_STAR_CH_F: out STD_LOGIC;
		MS_FILE_TO_F_CH: out STD_LOGIC;
		PS_ASSEMBLY_TO_F_CH: out STD_LOGIC;
		MS_TAPE_TO_F_CH: out STD_LOGIC);
end FChTapeControls;


ARCHITECTURE structural of FChTapeControls is

	 signal PS_F_CH_TAPE_CALL: STD_LOGIC;

BEGIN

Page_13_66_07_1: ENTITY ALD_13_66_07_1_F_CH_TAPE_CONTROLS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_PROGRAM_RESET_2 =>
		MS_PROGRAM_RESET_2,
	MS_F_CH_BUSY_BUS =>
		MS_F_CH_BUSY_BUS,
	MS_E_SYMBOL_OP_MODIFIER =>
		MS_E_SYMBOL_OP_MODIFIER,
	PS_F_CH_SELECT_TAPE =>
		PS_F_CH_SELECT_TAPE,
	PS_LOGIC_GATE_F_1 =>
		PS_LOGIC_GATE_F_1,
	PS_LAST_INSN_RO_CYCLE =>
		PS_LAST_INSN_RO_CYCLE,
	PS_LOZENGE_OR_ASTERISK =>
		PS_LOZENGE_OR_ASTERISK,
	PS_UNIT_CTRL_OP_CODE =>
		PS_UNIT_CTRL_OP_CODE,
	MC_SELECT_AT_LOAD_POINT_STAR_F_CH =>
		MC_SELECT_AT_LOAD_POINT_STAR_F_CH,
	PS_B_OR_R_OR_U_SYMBOL_OP_MODIFIER =>
		PS_B_OR_R_OR_U_SYMBOL_OP_MODIFIER,
	MS_F_CH_BUSY =>
		MS_F_CH_BUSY,
	MS_F_CH_NOT_READY =>
		MS_F_CH_NOT_READY,
	MS_Q_OR_V_SYMBOL_OP_MODIFIER =>
		MS_Q_OR_V_SYMBOL_OP_MODIFIER,
	PS_F_CH_TAPE_CALL =>
		PS_F_CH_TAPE_CALL,
	MS_F_CH_TAPE_CALL =>
		MS_F_CH_TAPE_CALL
	);

Page_13_66_08_1: ENTITY ALD_13_66_08_1_F_CH_TAPE_CONTROLS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD =>
		PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD,
	PS_M_OR_L_OP_CODES =>
		PS_M_OR_L_OP_CODES,
	PS_A_SYMBOL_OP_MODIFIER =>
		PS_A_SYMBOL_OP_MODIFIER,
	PS_W_OR_X_SYMBOL_OP_MODIFIER =>
		PS_W_OR_X_SYMBOL_OP_MODIFIER,
	PS_M_SYMBOL_OP_MODIFIER =>
		PS_M_SYMBOL_OP_MODIFIER,
	MS_F_CH_BUSY_BUS =>
		MS_F_CH_BUSY_BUS,
	PS_I_RING_7_TIME =>
		PS_I_RING_HDL_BUS(7),
	PS_E_SYMBOL_OP_MODIFIER =>
		PS_E_SYMBOL_OP_MODIFIER,
	PS_F_CH_TAPE_CALL =>
		PS_F_CH_TAPE_CALL,
	PS_LOZENGE_OR_ASTERISK =>
		PS_LOZENGE_OR_ASTERISK,
	PS_U_SYMBOL_OP_MODIFIER =>
		PS_U_SYMBOL_OP_MODIFIER,
	PS_UNIT_CTRL_OP_CODE =>
		PS_UNIT_CTRL_OP_CODE,
	PS_R_SYMBOL_OP_MODIFIER =>
		PS_R_SYMBOL_OP_MODIFIER,
	PS_B_SYMBOL_OP_MODIFIER =>
		PS_B_SYMBOL_OP_MODIFIER,
	MC_READ_TAPE_CALL_STAR_F_CH =>
		MC_READ_TAPE_CALL_STAR_F_CH,
	MC_WRITE_TAPE_CALL_STAR_F_CH =>
		MC_WRITE_TAPE_CALL_STAR_F_CH,
	MC_WRITE_TAPE_MK_CALL_STAR_F_CH =>
		MC_WRITE_TAPE_MK_CALL_STAR_F_CH,
	MC_ERASE_CALL_STAR_F_CH =>
		MC_ERASE_CALL_STAR_F_CH,
	MC_REWIND_UNLOAD_STAR_F_CH =>
		MC_REWIND_UNLOAD_STAR_F_CH,
	MC_REWIND_CALL_STAR_F_CH =>
		MC_REWIND_CALL_STAR_F_CH,
	MC_BACKSPACE_CALL_STAR_F_CH =>
		MC_BACKSPACE_CALL_STAR_F_CH
	);

Page_13_66_09_1: ENTITY ALD_13_66_09_1_F_CH_TAPE_CONTROLS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MC_WRITE_CONDITION_STAR_F_CH =>
		MC_WRITE_CONDITION_STAR_F_CH,
	PS_F_CH_DISCON_LATCH =>
		PS_F_CH_DISCON_LATCH,
	PS_F_CH_SELECT_TAPE =>
		PS_F_CH_SELECT_TAPE,
	PS_F_CH_SECOND_SAMPLE_B =>
		PS_F_CH_SECOND_SAMPLE_B,
	PS_F_CH_TAPE_INDICATOR =>
		PS_F_CH_TAPE_INDICATOR,
	MS_RESET_END_OF_REEL_IND =>
		MS_RESET_END_OF_REEL_IND,
	PS_LOGIC_GATE_C_1 =>
		PS_LOGIC_GATE_C_1,
	PS_LOZENGE_OR_ASTERISK =>
		PS_LOZENGE_OR_ASTERISK,
	MS_F_CH_BUSY =>
		MS_F_CH_BUSY,
	PS_I_RING_6_OR_1401_AND_8_TIME =>
		PS_I_RING_6_OR_1401_AND_8_TIME,
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	MC_DISCONNECT_CALL_STAR_F_CH =>
		MC_DISCONNECT_CALL_STAR_F_CH,
	MC_TURN_OFF_TI_STAR_F_CH =>
		MC_TURN_OFF_TI_STAR_F_CH,
	MC_RESET_TAPE_SEL_REG_STAR_CH_F =>
		MC_RESET_TAPE_SEL_REG_STAR_CH_F,
	MC_SET_TAPE_SEL_REG_STAR_CH_F =>
		MC_SET_TAPE_SEL_REG_STAR_CH_F
	);

Page_13_66_10_1: ENTITY ALD_13_66_10_1_F_CH_INPUT_GATE_CONTROL
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_F_CH_SELECT_UNIT_F =>
		PS_F_CH_SELECT_UNIT_F,
	PS_F_CH_INPUT_MODE =>
		PS_F_CH_INPUT_MODE,
	PS_F_CH_OUTPUT_MODE =>
		PS_F_CH_OUTPUT_MODE,
	MS_CONTROL_REG_DISABLE =>
		MS_CONTROL_REG_DISABLE,
	PS_ASSEMBLY_TO_F_CH_STAR_1414_STAR =>
		PS_ASSEMBLY_TO_F_CH_STAR_1414_STAR,
	PS_F_CH_SELECT_TAPE =>
		PS_F_CH_SELECT_TAPE,
	MS_FILE_TO_F_CH =>
		MS_FILE_TO_F_CH,
	PS_ASSEMBLY_TO_F_CH =>
		PS_ASSEMBLY_TO_F_CH,
	MS_TAPE_TO_F_CH =>
		MS_TAPE_TO_F_CH
	);


END;
