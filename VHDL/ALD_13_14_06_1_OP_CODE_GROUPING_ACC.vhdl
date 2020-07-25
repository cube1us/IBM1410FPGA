-- VHDL for IBM SMS ALD page 13.14.06.1
-- Title: OP CODE GROUPING-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/25/2020 11:23:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_14_06_1_OP_CODE_GROUPING_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_ADD_TYPE_OR_MLP_OR_DIV_OR_E_OR_Z_OR_C_OPS:	 in STD_LOGIC;
		MS_WORD_MARK_OP_CODES:	 in STD_LOGIC;
		MS_W_OR_V_OR_CLEAR_OP_CODES:	 in STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		MS_TABLE_SEARCH_OP_CODE:	 in STD_LOGIC;
		MS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		MS_1401_POUND_SIGN_OP_CODE:	 in STD_LOGIC;
		MS_ARS_D_OR_T_OP_CODES:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		MS_COMMON_OP_CODE_GROUPING:	 out STD_LOGIC;
		PS_1ST_SCAN_FIRST_OP_CODES:	 out STD_LOGIC;
		MS_1401_LB_OR_H_OR_Q_OP_CODES:	 out STD_LOGIC;
		PS_A_CY_FIRST_OP_CODES:	 out STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE:	 out STD_LOGIC);
end ALD_13_14_06_1_OP_CODE_GROUPING_ACC;

architecture behavioral of ALD_13_14_06_1_OP_CODE_GROUPING_ACC is 

	signal OUT_5A_H: STD_LOGIC;
	signal OUT_4A_A: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;

begin

	OUT_5A_H <= NOT(MS_ADD_TYPE_OR_MLP_OR_DIV_OR_E_OR_Z_OR_C_OPS AND MS_WORD_MARK_OP_CODES );
	OUT_4A_A <= NOT OUT_5A_H;
	OUT_4B_G <= NOT(OUT_4A_A AND MS_W_OR_V_OR_CLEAR_OP_CODES AND OUT_3E_D );
	OUT_4D_G <= NOT(MS_STORE_ADDR_REGS_OP_CODE AND MS_TABLE_SEARCH_OP_CODE AND MS_CHAR_TEST_BRANCH_OP_CODE );
	OUT_4E_NoPin <= NOT(MS_1401_POUND_SIGN_OP_CODE AND MS_1401_STORE_AR_OP_CODES );
	OUT_3E_D <= NOT OUT_4E_NoPin;
	OUT_5G_E <= NOT(OUT_4A_A AND MS_ARS_D_OR_T_OP_CODES AND MS_1401_POUND_SIGN_OP_CODE );
	OUT_5H_NoPin <= NOT(MS_ADD_TYPE_OR_MLP_OR_DIV_OR_E_OR_Z_OR_C_OPS AND MS_1401_POUND_SIGN_OP_CODE AND MS_ARS_D_OR_T_OP_CODES );
	OUT_4H_D <= NOT(OUT_5H_NoPin AND PS_A_CYCLE );
	OUT_3H_G <= OUT_4H_D;
	OUT_DOT_1B <= OUT_4B_G OR OUT_4D_G;

	MS_COMMON_OP_CODE_GROUPING <= OUT_4A_A;
	MS_1401_LB_OR_H_OR_Q_OP_CODES <= OUT_3E_D;
	PS_A_CY_FIRST_OP_CODES <= OUT_5G_E;
	MS_STD_A_CYCLE_OPS_DOT_A_CYCLE <= OUT_3H_G;
	PS_1ST_SCAN_FIRST_OP_CODES <= OUT_DOT_1B;


end;
