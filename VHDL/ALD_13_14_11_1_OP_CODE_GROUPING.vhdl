-- VHDL for IBM SMS ALD page 13.14.11.1
-- Title: OP CODE GROUPING
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/25/2020 11:23:51 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_14_11_1_OP_CODE_GROUPING is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_COMMON_OP_CODE_GROUPING:	 in STD_LOGIC;
		MS_CLEAR_OP_CODE:	 in STD_LOGIC;
		MS_BIT_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_ZN_OR_WM_TST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		MS_ARS_L_OR_M_OR_T_OP_CODES:	 in STD_LOGIC;
		MS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_2_ADDR_NO_MOD_OP_CODES:	 out STD_LOGIC;
		MS_W_OR_V_OP_CODES:	 out STD_LOGIC;
		PS_2_ADDR_PLUS_MOD_OP_CODES:	 out STD_LOGIC);
end ALD_13_14_11_1_OP_CODE_GROUPING;

architecture behavioral of ALD_13_14_11_1_OP_CODE_GROUPING is 

	signal OUT_5C_K: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_5F_P: STD_LOGIC;
	signal OUT_5G_D: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;

begin

	OUT_5C_K <= NOT(MS_COMMON_OP_CODE_GROUPING AND MS_CLEAR_OP_CODE );
	OUT_5E_NoPin <= NOT(MS_BIT_TEST_BRANCH_OP_CODE AND MS_ZN_OR_WM_TST_BRANCH_OP_CODE );
	OUT_3E_D <= NOT OUT_5E_NoPin;
	OUT_5F_P <= NOT(OUT_3E_D AND MS_DATA_MOVE_OP_CODE );
	OUT_5G_D <= NOT(MS_ARS_L_OR_M_OR_T_OP_CODES AND MS_CHAR_TEST_BRANCH_OP_CODE );
	OUT_DOT_1F <= OUT_5F_P OR OUT_5G_D;

	PS_2_ADDR_NO_MOD_OP_CODES <= OUT_5C_K;
	MS_W_OR_V_OP_CODES <= OUT_3E_D;
	PS_2_ADDR_PLUS_MOD_OP_CODES <= OUT_DOT_1F;


end;
