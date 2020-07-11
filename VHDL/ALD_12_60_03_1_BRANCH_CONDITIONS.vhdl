-- VHDL for IBM SMS ALD page 12.60.03.1
-- Title: BRANCH CONDITIONS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/11/2020 1:15:38 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_60_03_1_BRANCH_CONDITIONS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_MOD_REG_1_BIT:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_ZN_OR_WM_TST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_OP_MOD_REG_2_BIT:	 in STD_LOGIC;
		PS_CMP_ZONE_EQUAL:	 in STD_LOGIC;
		PS_CMP_EQUAL:	 in STD_LOGIC;
		PS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_A_CH_B_BIT:	 in STD_LOGIC;
		PS_BIT_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_A_CH_A_BIT:	 in STD_LOGIC;
		PS_B_CH_8_BIT:	 in STD_LOGIC;
		PS_A_CH_8_BIT:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_A_CH_4_BIT:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_B_CH_2_BIT:	 in STD_LOGIC;
		PS_A_CH_2_BIT:	 in STD_LOGIC;
		PS_B_CH_1_BIT:	 in STD_LOGIC;
		PS_A_CH_1_BIT:	 in STD_LOGIC;
		PS_B_OR_W_OR_V_BRANCH_CND:	 out STD_LOGIC;
		MS_W_TYPE_BRANCH_COND:	 out STD_LOGIC);
end ALD_12_60_03_1_BRANCH_CONDITIONS;

architecture behavioral of ALD_12_60_03_1_BRANCH_CONDITIONS is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_2G_F: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_OP_MOD_REG_1_BIT AND PS_B_CH_WM_BIT_1 AND PS_ZN_OR_WM_TST_BRANCH_OP_CODE );
	OUT_5B_NoPin <= NOT(PS_ZN_OR_WM_TST_BRANCH_OP_CODE AND PS_OP_MOD_REG_2_BIT AND PS_CMP_ZONE_EQUAL );
	OUT_3B_D <= NOT(OUT_5A_NoPin AND OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_5C_NoPin <= NOT(PS_CMP_EQUAL AND PS_CHAR_TEST_BRANCH_OP_CODE );
	OUT_5D_NoPin <= NOT(PS_B_CH_B_BIT AND PS_A_CH_B_BIT AND PS_BIT_TEST_BRANCH_OP_CODE );
	OUT_5E_NoPin <= NOT(PS_B_CH_A_BIT AND PS_A_CH_A_BIT AND PS_BIT_TEST_BRANCH_OP_CODE );
	OUT_3E_D <= NOT(OUT_5D_NoPin AND OUT_5E_NoPin AND OUT_5F_NoPin );
	OUT_5F_NoPin <= NOT(PS_B_CH_8_BIT AND PS_A_CH_8_BIT AND PS_BIT_TEST_BRANCH_OP_CODE );
	OUT_5G_NoPin <= NOT(PS_B_CH_4_BIT AND PS_A_CH_4_BIT AND PS_BIT_TEST_BRANCH_OP_CODE );
	OUT_2G_F <= NOT OUT_DOT_3B;
	OUT_5H_NoPin <= NOT(PS_B_CH_2_BIT AND PS_A_CH_2_BIT AND PS_BIT_TEST_BRANCH_OP_CODE );
	OUT_3H_D <= NOT(OUT_5G_NoPin AND OUT_5I_NoPin AND OUT_5H_NoPin );
	OUT_2H_C <= NOT(PS_B_CYCLE AND PS_1ST_SCAN );
	OUT_5I_NoPin <= NOT(PS_B_CH_1_BIT AND PS_A_CH_1_BIT AND PS_BIT_TEST_BRANCH_OP_CODE );
	OUT_DOT_3B <= OUT_3B_D OR OUT_3E_D OR OUT_3H_D;
	OUT_DOT_1G <= OUT_2G_F OR OUT_2H_C;

	PS_B_OR_W_OR_V_BRANCH_CND <= OUT_DOT_3B;
	MS_W_TYPE_BRANCH_COND <= OUT_DOT_1G;


end;
