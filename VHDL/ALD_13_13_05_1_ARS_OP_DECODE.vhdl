-- VHDL for IBM SMS ALD page 13.13.05.1
-- Title: ARS OP DECODE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/23/2020 4:39:07 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_13_05_1_ARS_OP_DECODE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B:	 in STD_LOGIC;
		PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B:	 in STD_LOGIC;
		MS_1401_DATA_MOVE_OP:	 in STD_LOGIC;
		PS_OP_REG_ARS_NOT_C_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B:	 in STD_LOGIC;
		MS_1401_CHAR_TEST_OP_CODE:	 in STD_LOGIC;
		PS_OP_REG_ARS_C_BIT:	 in STD_LOGIC;
		PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B:	 in STD_LOGIC;
		PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B:	 in STD_LOGIC;
		MS_1401_COND_TEST_OP_CODE:	 in STD_LOGIC;
		MS_DATA_MOVE_OP_CODE:	 out STD_LOGIC;
		PS_DATA_MOVE_OP_CODE:	 out STD_LOGIC;
		PS_CHAR_TEST_BRANCH_OP_CODE:	 out STD_LOGIC;
		MS_CHAR_TEST_BRANCH_OP_CODE:	 out STD_LOGIC;
		MS_COND_TEST_BRANCH_OP_CODE:	 out STD_LOGIC;
		PS_COND_TEST_BRANCH_OP_CODE:	 out STD_LOGIC);
end ALD_13_13_05_1_ARS_OP_DECODE;

architecture behavioral of ALD_13_13_05_1_ARS_OP_DECODE is 

	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3A_R: STD_LOGIC;
	signal OUT_1A_F: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_1E_R: STD_LOGIC;
	signal OUT_3F_R: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_1H_B: STD_LOGIC;
	signal OUT_3I_B: STD_LOGIC;
	signal OUT_1I_H: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;

begin

	OUT_4A_NoPin <= NOT(PS_OP_DCDR_4_DOT_NOT_2_DOT_NOT_1_B AND PS_OP_REG_ARS_NOT_C_BIT AND PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B );
	OUT_3A_R <= NOT OUT_4A_NoPin;
	OUT_1A_F <= NOT OUT_DOT_3A;
	OUT_3B_F <= NOT MS_1401_DATA_MOVE_OP;
	OUT_1B_C <= OUT_DOT_3A;
	OUT_4E_NoPin <= NOT(PS_OP_DCDR_B_DOT_A_DOT_NOT_8_B AND PS_OP_REG_ARS_NOT_C_BIT AND PS_OP_DCDR_NOT_4_DOT_2_DOT_NOT_1_B );
	OUT_3E_D <= NOT OUT_4E_NoPin;
	OUT_1E_R <= NOT OUT_DOT_3E;
	OUT_3F_R <= NOT MS_1401_CHAR_TEST_OP_CODE;
	OUT_4H_NoPin <= NOT(PS_OP_REG_ARS_C_BIT AND PS_OP_DCDR_B_DOT_NOT_A_DOT_NOT_8_B AND PS_OP_DCDR_NOT_4_DOT_NOT_2_DOT_1_B );
	OUT_3H_D <= NOT OUT_4H_NoPin;
	OUT_1H_B <= NOT OUT_DOT_3H;
	OUT_3I_B <= NOT MS_1401_COND_TEST_OP_CODE;
	OUT_1I_H <= OUT_DOT_3H;
	OUT_DOT_3A <= OUT_3A_R OR OUT_3B_F;
	OUT_DOT_3E <= OUT_3E_D OR OUT_3F_R;
	OUT_DOT_3H <= OUT_3H_D OR OUT_3I_B;

	MS_DATA_MOVE_OP_CODE <= OUT_1A_F;
	PS_DATA_MOVE_OP_CODE <= OUT_1B_C;
	MS_CHAR_TEST_BRANCH_OP_CODE <= OUT_1E_R;
	MS_COND_TEST_BRANCH_OP_CODE <= OUT_1H_B;
	PS_COND_TEST_BRANCH_OP_CODE <= OUT_1I_H;
	PS_CHAR_TEST_BRANCH_OP_CODE <= OUT_DOT_3E;


end;