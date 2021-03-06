-- VHDL for IBM SMS ALD page 13.14.03.1
-- Title: OP CODE GROUPING
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/25/2020 11:23:33 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_14_03_1_OP_CODE_GROUPING is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_EDIT_OP_CODE:	 in STD_LOGIC;
		MS_MOVE_ZERO_SUP_OP_CODE:	 in STD_LOGIC;
		MS_COMPARE_OP_CODE:	 in STD_LOGIC;
		MS_TABLE_SEARCH_OP_CODE:	 in STD_LOGIC;
		MS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_W_OR_V_OP_CODES:	 in STD_LOGIC;
		MS_CLEAR_OP_CODE:	 in STD_LOGIC;
		MS_E_OR_Z_OP_CODES:	 out STD_LOGIC;
		PS_E_OR_Z_OP_CODES:	 out STD_LOGIC;
		MS_COMPARE_TYPE_OP_CODES:	 out STD_LOGIC;
		PS_COMPARE_TYPE_OP_CODES:	 out STD_LOGIC;
		MS_W_OR_V_OR_CLEAR_OP_CODES:	 out STD_LOGIC);
end ALD_13_14_03_1_OP_CODE_GROUPING;

architecture behavioral of ALD_13_14_03_1_OP_CODE_GROUPING is 

	signal OUT_5B_H: STD_LOGIC;
	signal OUT_3B_A: STD_LOGIC;
	signal OUT_2C_K: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_2E_F: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;

begin

	OUT_5B_H <= NOT(MS_EDIT_OP_CODE AND MS_MOVE_ZERO_SUP_OP_CODE );
	OUT_3B_A <= NOT OUT_5B_H;
	OUT_2C_K <= NOT(OUT_3B_A );
	OUT_5D_NoPin <= NOT(MS_COMPARE_OP_CODE AND MS_TABLE_SEARCH_OP_CODE AND MS_CHAR_TEST_BRANCH_OP_CODE );
	OUT_3D_R <= NOT OUT_5D_NoPin;
	OUT_2E_F <= NOT OUT_3D_R;
	OUT_5F_NoPin <= NOT(MS_W_OR_V_OP_CODES AND MS_CLEAR_OP_CODE );
	OUT_4F_D <= NOT OUT_5F_NoPin;

	MS_E_OR_Z_OP_CODES <= OUT_3B_A;
	PS_E_OR_Z_OP_CODES <= OUT_2C_K;
	MS_COMPARE_TYPE_OP_CODES <= OUT_3D_R;
	PS_COMPARE_TYPE_OP_CODES <= OUT_2E_F;
	MS_W_OR_V_OR_CLEAR_OP_CODES <= OUT_4F_D;


end;
