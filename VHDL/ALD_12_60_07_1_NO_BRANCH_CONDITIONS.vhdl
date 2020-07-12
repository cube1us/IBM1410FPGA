-- VHDL for IBM SMS ALD page 12.60.07.1
-- Title: NO BRANCH CONDITIONS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/12/2020 10:41:16 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_60_07_1_NO_BRANCH_CONDITIONS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_CMP_LOW:	 in STD_LOGIC;
		MS_CMP_HIGH:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_A_CH_B_BIT:	 in STD_LOGIC;
		PS_BIT_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_A_CH_A_BIT:	 in STD_LOGIC;
		PS_B_CH_8_BIT:	 in STD_LOGIC;
		PS_A_CH_8_BIT:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_A_CH_4_BIT:	 in STD_LOGIC;
		PS_B_CH_2_BIT:	 in STD_LOGIC;
		PS_A_CH_2_BIT:	 in STD_LOGIC;
		PS_B_CH_1_BIT:	 in STD_LOGIC;
		PS_A_CH_1_BIT:	 in STD_LOGIC;
		MS_CHAR_TEST_NO_BRANCH:	 out STD_LOGIC;
		MS_BIT_TEST_NO_BRANCH:	 out STD_LOGIC);
end ALD_12_60_07_1_NO_BRANCH_CONDITIONS;

architecture behavioral of ALD_12_60_07_1_NO_BRANCH_CONDITIONS is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_4A_G: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_2D_F: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_4F_NoPin: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_2G_F: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;

begin

	OUT_5A_C <= NOT(MS_CMP_LOW AND MS_CMP_HIGH );
	OUT_4A_G <= NOT(OUT_5A_C AND PS_CHAR_TEST_BRANCH_OP_CODE );
	OUT_4B_D <= NOT(PS_B_CYCLE AND PS_1ST_SCAN );
	OUT_4C_NoPin <= NOT(PS_B_CH_B_BIT AND PS_A_CH_B_BIT );
	OUT_2C_D <= NOT(PS_1ST_SCAN AND PS_BIT_TEST_BRANCH_OP_CODE AND PS_B_CYCLE );
	OUT_4D_NoPin <= NOT(PS_B_CH_A_BIT AND PS_A_CH_A_BIT );
	OUT_2D_F <= NOT(OUT_4C_NoPin AND OUT_4D_NoPin AND OUT_4E_NoPin );
	OUT_4E_NoPin <= NOT(PS_B_CH_8_BIT AND PS_A_CH_8_BIT );
	OUT_4F_NoPin <= NOT(PS_B_CH_4_BIT AND PS_A_CH_4_BIT );
	OUT_4G_NoPin <= NOT(PS_B_CH_2_BIT AND PS_A_CH_2_BIT );
	OUT_2G_F <= NOT(OUT_4F_NoPin AND OUT_4G_NoPin AND OUT_4H_NoPin );
	OUT_4H_NoPin <= NOT(PS_B_CH_1_BIT AND PS_A_CH_1_BIT );
	OUT_DOT_1A <= OUT_4A_G OR OUT_4B_D;
	OUT_DOT_1C <= OUT_2C_D OR OUT_2D_F OR OUT_2G_F;

	MS_CHAR_TEST_NO_BRANCH <= OUT_DOT_1A;
	MS_BIT_TEST_NO_BRANCH <= OUT_DOT_1C;


end;
