-- VHDL for IBM SMS ALD group I1401BranchConditions
-- Title: I1401BranchConditions
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/14/2020 1:10:38 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity I1401BranchConditions is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_1401_I_O_CK_STOP_SW: in STD_LOGIC;
		PS_FILE_INVALID_ADDRESS: in STD_LOGIC;
		PS_N_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_E_CH_CONDITION_BUS: in STD_LOGIC;
		PS_EXCLAM_MARK_OR_REC_MARK_OP_MOD: in STD_LOGIC;
		PS_E_CH_TAPE_ERROR: in STD_LOGIC;
		PS_L_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_SELECTED_CARRIAGE_CH: in STD_LOGIC;
		PS_COML_AT_OR_9_SYMBOL_OP_MOD: in STD_LOGIC;
		PS_1401_FILE_VALIDITY_CK: in STD_LOGIC;
		PS_V_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_1401_FILE_WRONG_LENG_REC: in STD_LOGIC;
		PS_W_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_1401_FILE_ADDR_COMPARE: in STD_LOGIC;
		PS_X_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_1401_ANY_FILE_CHECK: in STD_LOGIC;
		PS_Y_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_1401_INQUIRY_ERROR: in STD_LOGIC;
		PS_ASTERISK_OP_MODIFIER: in STD_LOGIC;
		PS_1401_PROCESS_CHECK: in STD_LOGIC;
		PS_PERCENT_SIGN_OP_MODIFIER: in STD_LOGIC;
		PS_A_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_B_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_NOT_B_DOT_A_DOT_8_OP_MOD: in STD_LOGIC;
		PS_4_DOT_2_DOT_NOT_1_OP_MOD: in STD_LOGIC;
		PS_FILE_BUSY_LATCH: in STD_LOGIC;
		PS_C_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_D_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_E_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_F_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_G_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_1401_READ_ERROR: in STD_LOGIC;
		PS_QUESTION_MK_OP_MODIFIER: in STD_LOGIC;
		PS_E1_INPUT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_1401_BRANCH_CONDITION: out STD_LOGIC;
		PS_1401_BRANCH_CONDITION_JRJ: out STD_LOGIC);
end I1401BranchConditions;


ARCHITECTURE structural of I1401BranchConditions is

BEGIN

Page_12_60_17_1: ENTITY ALD_12_60_17_1_1401_BRANCHES
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_FILE_INVALID_ADDRESS =>
		PS_FILE_INVALID_ADDRESS,
	PS_N_SYMBOL_OP_MODIFIER =>
		PS_N_SYMBOL_OP_MODIFIER,
	MS_1401_I_O_CK_STOP_SW =>
		MS_1401_I_O_CK_STOP_SW,
	PS_E_CH_CONDITION_BUS =>
		PS_E_CH_CONDITION_BUS,
	PS_EXCLAM_MARK_OR_REC_MARK_OP_MOD =>
		PS_EXCLAM_MARK_OR_REC_MARK_OP_MOD,
	PS_E_CH_TAPE_ERROR =>
		PS_E_CH_TAPE_ERROR,
	PS_L_SYMBOL_OP_MODIFIER =>
		PS_L_SYMBOL_OP_MODIFIER,
	PS_SELECTED_CARRIAGE_CH =>
		PS_SELECTED_CARRIAGE_CH,
	PS_COML_AT_OR_9_SYMBOL_OP_MOD =>
		PS_COML_AT_OR_9_SYMBOL_OP_MOD,
	PS_1401_FILE_VALIDITY_CK =>
		PS_1401_FILE_VALIDITY_CK,
	PS_V_SYMBOL_OP_MODIFIER =>
		PS_V_SYMBOL_OP_MODIFIER,
	PS_1401_FILE_WRONG_LENG_REC =>
		PS_1401_FILE_WRONG_LENG_REC,
	PS_W_SYMBOL_OP_MODIFIER =>
		PS_W_SYMBOL_OP_MODIFIER,
	PS_1401_FILE_ADDR_COMPARE =>
		PS_1401_FILE_ADDR_COMPARE,
	PS_X_SYMBOL_OP_MODIFIER =>
		PS_X_SYMBOL_OP_MODIFIER,
	PS_1401_ANY_FILE_CHECK =>
		PS_1401_ANY_FILE_CHECK,
	PS_Y_SYMBOL_OP_MODIFIER =>
		PS_Y_SYMBOL_OP_MODIFIER,
	PS_1401_INQUIRY_ERROR =>
		PS_1401_INQUIRY_ERROR,
	PS_ASTERISK_OP_MODIFIER =>
		PS_ASTERISK_OP_MODIFIER,
	PS_1401_BRANCH_CONDITION =>
		PS_1401_BRANCH_CONDITION
	);

Page_12_60_18_1: ENTITY ALD_12_60_18_1_1401_BRANCHES
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_1401_PROCESS_CHECK =>
		PS_1401_PROCESS_CHECK,
	PS_PERCENT_SIGN_OP_MODIFIER =>
		PS_PERCENT_SIGN_OP_MODIFIER,
	PS_E1_INPUT_C_BIT =>
		PS_E1_INPUT_BUS(7),
	PS_E_CH_CONDITION_BUS =>
		PS_E_CH_CONDITION_BUS,
	PS_A_SYMBOL_OP_MODIFIER =>
		PS_A_SYMBOL_OP_MODIFIER,
	PS_E1_INPUT_B_BIT =>
		PS_E1_INPUT_BUS(5),
	PS_B_SYMBOL_OP_MODIFIER =>
		PS_B_SYMBOL_OP_MODIFIER,
	PS_NOT_B_DOT_A_DOT_8_OP_MOD =>
		PS_NOT_B_DOT_A_DOT_8_OP_MOD,
	PS_4_DOT_2_DOT_NOT_1_OP_MOD =>
		PS_4_DOT_2_DOT_NOT_1_OP_MOD,
	PS_FILE_BUSY_LATCH =>
		PS_FILE_BUSY_LATCH,
	PS_C_SYMBOL_OP_MODIFIER =>
		PS_C_SYMBOL_OP_MODIFIER,
	PS_E1_INPUT_A_BIT =>
		PS_E1_INPUT_BUS(4),
	PS_E1_INPUT_8_BIT =>
		PS_E1_INPUT_BUS(3),
	PS_D_SYMBOL_OP_MODIFIER =>
		PS_D_SYMBOL_OP_MODIFIER,
	PS_E_SYMBOL_OP_MODIFIER =>
		PS_E_SYMBOL_OP_MODIFIER,
	PS_E1_INPUT_4_BIT =>
		PS_E1_INPUT_BUS(2),
	PS_E1_INPUT_2_BIT =>
		PS_E1_INPUT_BUS(1),
	PS_F_SYMBOL_OP_MODIFIER =>
		PS_F_SYMBOL_OP_MODIFIER,
	PS_G_SYMBOL_OP_MODIFIER =>
		PS_G_SYMBOL_OP_MODIFIER,
	PS_E1_INPUT_1_BIT =>
		PS_E1_INPUT_BUS(0),
	PS_1401_READ_ERROR =>
		PS_1401_READ_ERROR,
	PS_QUESTION_MK_OP_MODIFIER =>
		PS_QUESTION_MK_OP_MODIFIER,
	PS_1401_BRANCH_CONDITION_JRJ =>
		PS_1401_BRANCH_CONDITION_JRJ
	);


END;
