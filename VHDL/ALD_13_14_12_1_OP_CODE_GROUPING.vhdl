-- VHDL for IBM SMS ALD page 13.14.12.1
-- Title: OP CODE GROUPING
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/25/2020 11:23:53 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_14_12_1_OP_CODE_GROUPING is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_W_OR_V_OR_CLEAR_OP_CODES:	 in STD_LOGIC;
		MS_ARS_L_OR_M_OR_T_OP_CODES:	 in STD_LOGIC;
		MS_COMMON_OP_CODE_GROUPING:	 in STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		MS_PERCENT_TYPE_OP_CODES:	 in STD_LOGIC;
		MS_NOT_PERCENT_TYPE_OP_CODES:	 in STD_LOGIC;
		MS_E_CH_2_CHAR_OP_CODES_STAR_1414_STAR:	 in STD_LOGIC;
		PS_P_OR_Q_2_CHAR_OP_1412_19:	 in STD_LOGIC;
		MS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		MS_E_CH_STACKER_SEL_OP_CODE:	 in STD_LOGIC;
		MS_E_CH_FORMS_CTRL_OP_CODE:	 in STD_LOGIC;
		MS_TABLE_SEARCH_OP_CODE:	 in STD_LOGIC;
		MS_MPLY_OR_DIV_OP_CODES:	 in STD_LOGIC;
		MS_COND_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_INTERRUPT_TEST_OP_CODE:	 in STD_LOGIC;
		MS_WM_OR_E_OR_Z_OR_W_OR_V_OR_C_OR_CLEAR_OR_DOT_OPS:	 in STD_LOGIC;
		PS_TWO_ADDRESS_OP_CODES:	 out STD_LOGIC;
		MS_TWO_ADDRESS_OP_CODES:	 out STD_LOGIC;
		PS_2_CHAR_ONLY_OP_CODES:	 out STD_LOGIC;
		PS_ADDR_TYPE_OP_CODES:	 out STD_LOGIC;
		MS_E_CH_2_CHAR_ONLY_OP_CODES:	 out STD_LOGIC;
		PS_E_CH_2_CHAR_ONLY_OP_CODES:	 out STD_LOGIC;
		PS_C_CYCLE_OP_CODES:	 out STD_LOGIC;
		PS_NO_C_OR_D_CYCLE_OP_CODES:	 out STD_LOGIC);
end ALD_13_14_12_1_OP_CODE_GROUPING;

architecture behavioral of ALD_13_14_12_1_OP_CODE_GROUPING is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_2C_B: STD_LOGIC;
	signal OUT_5D_D: STD_LOGIC;
	signal OUT_3D_H: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_R: STD_LOGIC;
	signal OUT_2F_A: STD_LOGIC;
	signal OUT_5G_K: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_5I_E: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;

begin

	OUT_5A_C <= NOT(MS_ARS_L_OR_M_OR_T_OP_CODES AND MS_W_OR_V_OR_CLEAR_OP_CODES AND MS_CHAR_TEST_BRANCH_OP_CODE );
	OUT_5B_C <= NOT(MS_COMMON_OP_CODE_GROUPING AND MS_DATA_MOVE_OP_CODE );
	OUT_4B_D <= NOT(OUT_DOT_5A );
	OUT_2C_B <= OUT_DOT_3D;
	OUT_5D_D <= NOT(MS_NOT_PERCENT_TYPE_OP_CODES AND MS_PERCENT_TYPE_OP_CODES AND MS_STORE_ADDR_REGS_OP_CODE );
	OUT_3D_H <= NOT(OUT_3E_R AND MS_E_CH_2_CHAR_OP_CODES_STAR_1414_STAR );
	OUT_2D_A <= NOT OUT_DOT_3D;
	OUT_5E_NoPin <= NOT(MS_E_CH_STACKER_SEL_OP_CODE AND MS_E_CH_FORMS_CTRL_OP_CODE );
	OUT_3E_R <= NOT OUT_5E_NoPin;

	SMS_AEK_2F: entity SMS_AEK
	    port map (
		IN1 => OUT_3E_R,	-- Pin F
		OUT1 => OUT_2F_A,
		IN2 => OPEN );

	OUT_5G_K <= NOT(MS_MPLY_OR_DIV_OP_CODES AND MS_TABLE_SEARCH_OP_CODE );
	OUT_5H_P <= NOT(MS_CHAR_TEST_BRANCH_OP_CODE AND MS_COND_TEST_BRANCH_OP_CODE );
	OUT_5I_E <= NOT(MS_WM_OR_E_OR_Z_OR_W_OR_V_OR_C_OR_CLEAR_OR_DOT_OPS AND MS_INTERRUPT_TEST_OP_CODE AND MS_DATA_MOVE_OP_CODE );
	OUT_DOT_5A <= OUT_5A_C OR OUT_5B_C;
	OUT_DOT_1H <= OUT_5H_P OR OUT_5I_E;
	OUT_DOT_3D <= OUT_3D_H OR PS_P_OR_Q_2_CHAR_OP_1412_19;

	MS_TWO_ADDRESS_OP_CODES <= OUT_4B_D;
	PS_2_CHAR_ONLY_OP_CODES <= OUT_2C_B;
	PS_ADDR_TYPE_OP_CODES <= OUT_5D_D;
	MS_E_CH_2_CHAR_ONLY_OP_CODES <= OUT_2D_A;
	PS_E_CH_2_CHAR_ONLY_OP_CODES <= OUT_2F_A;
	PS_C_CYCLE_OP_CODES <= OUT_5G_K;
	PS_TWO_ADDRESS_OP_CODES <= OUT_DOT_5A;
	PS_NO_C_OR_D_CYCLE_OP_CODES <= OUT_DOT_1H;


end;