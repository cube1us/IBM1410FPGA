-- VHDL for IBM SMS ALD page 13.50.05.1
-- Title: I-O UNIT SELECTION OPTIONAL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/29/2020 3:52:03 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_50_05_1_I_O_UNIT_SELECTION_OPTIONAL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_8_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_C_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_4_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_2_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_1_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_C_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_2_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_1_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_4_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_A_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_B_BIT:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_R:	 out STD_LOGIC;
		MC_E_CH_SELECT_UNIT_R:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_L:	 out STD_LOGIC;
		MC_SELECT_UNIT_L:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_M:	 out STD_LOGIC;
		MC_E_CH_SELECT_UNIT_M:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_N:	 out STD_LOGIC;
		MC_SELECT_UNIT_N:	 out STD_LOGIC;
		PS_E_CH_U_SEL_REG_B_DOT_NOT_A_BIT:	 out STD_LOGIC);
end ALD_13_50_05_1_I_O_UNIT_SELECTION_OPTIONAL;

architecture behavioral of ALD_13_50_05_1_I_O_UNIT_SELECTION_OPTIONAL is 

	signal OUT_3A_E: STD_LOGIC;
	signal OUT_1A_G: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_1C_H: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_1E_G: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_1G_E: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_4I_R: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_3A_E <= NOT(PS_E_CH_U_SEL_REG_8_BIT AND OUT_4I_R AND PS_E_CH_U_SEL_REG_NOT_C_BIT );
	OUT_1A_G <= OUT_DOT_3A;
	OUT_3B_C <= NOT(PS_E_CH_U_SEL_REG_NOT_2_BIT AND PS_E_CH_U_SEL_REG_1_BIT AND PS_E_CH_U_SEL_REG_NOT_4_BIT );
	OUT_3C_D <= NOT(PS_E_CH_U_SEL_REG_NOT_C_BIT AND OUT_4I_R AND PS_E_CH_U_SEL_REG_NOT_8_BIT );
	OUT_1C_H <= OUT_DOT_3C;
	OUT_3D_D <= NOT(PS_E_CH_U_SEL_REG_NOT_4_BIT AND PS_E_CH_U_SEL_REG_2_BIT AND PS_E_CH_U_SEL_REG_1_BIT );
	OUT_3E_E <= NOT(PS_E_CH_U_SEL_REG_C_BIT AND OUT_4I_R AND PS_E_CH_U_SEL_REG_NOT_8_BIT );
	OUT_1E_G <= OUT_DOT_3E;
	OUT_3F_E <= NOT(PS_E_CH_U_SEL_REG_4_BIT AND PS_E_CH_U_SEL_REG_NOT_2_BIT AND PS_E_CH_U_SEL_REG_NOT_1_BIT );
	OUT_3G_E <= NOT(PS_E_CH_U_SEL_REG_NOT_C_BIT AND OUT_4I_R AND PS_E_CH_U_SEL_REG_NOT_8_BIT );
	OUT_1G_E <= OUT_DOT_3G;
	OUT_3H_C <= NOT(PS_E_CH_U_SEL_REG_4_BIT AND PS_E_CH_U_SEL_REG_NOT_2_BIT AND PS_E_CH_U_SEL_REG_1_BIT );
	OUT_5I_NoPin <= NOT(PS_E_CH_U_SEL_REG_NOT_A_BIT AND PS_E_CH_U_SEL_REG_B_BIT );
	OUT_4I_R <= NOT OUT_5I_NoPin;
	OUT_DOT_3A <= OUT_3A_E OR OUT_3B_C;
	OUT_DOT_3C <= OUT_3C_D OR OUT_3D_D;
	OUT_DOT_3E <= OUT_3E_E OR OUT_3F_E;
	OUT_DOT_3G <= OUT_3G_E OR OUT_3H_C;

	MC_E_CH_SELECT_UNIT_R <= OUT_1A_G;
	MC_SELECT_UNIT_L <= OUT_1C_H;
	MC_E_CH_SELECT_UNIT_M <= OUT_1E_G;
	MC_SELECT_UNIT_N <= OUT_1G_E;
	PS_E_CH_U_SEL_REG_B_DOT_NOT_A_BIT <= OUT_4I_R;
	MS_E_CH_SELECT_UNIT_R <= OUT_DOT_3A;
	MS_E_CH_SELECT_UNIT_L <= OUT_DOT_3C;
	MS_E_CH_SELECT_UNIT_M <= OUT_DOT_3E;
	MS_E_CH_SELECT_UNIT_N <= OUT_DOT_3G;


end;
