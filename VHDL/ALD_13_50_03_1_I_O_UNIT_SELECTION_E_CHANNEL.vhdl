-- VHDL for IBM SMS ALD page 13.50.03.1
-- Title: I-O UNIT SELECTION E CHANNEL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/29/2020 3:51:50 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_50_03_1_I_O_UNIT_SELECTION_E_CHANNEL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_C_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_B_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_2_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_A_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_4_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_2_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_NOT_1_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_1_BIT:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_4_BIT:	 in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_E_CH_U_SEL_REG_A_BIT:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_1:	 out STD_LOGIC;
		MC_UNIT_1_SELECT_TO_I_O:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_1:	 out STD_LOGIC;
		PS_E_CH_SELECT_UNIT_2:	 out STD_LOGIC;
		MC_UNIT_2_SELECT_TO_I_O:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_2:	 out STD_LOGIC;
		MC_UNIT_4_SELECT_TO_I_O:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_4:	 out STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_OUTPUT:	 out STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T:	 out STD_LOGIC;
		PS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 out STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T_DOT_INPUT:	 out STD_LOGIC);
end ALD_13_50_03_1_I_O_UNIT_SELECTION_E_CHANNEL;

architecture behavioral of ALD_13_50_03_1_I_O_UNIT_SELECTION_E_CHANNEL is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_1A_F: STD_LOGIC;
	signal OUT_5B_R: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_2B_B: STD_LOGIC;
	signal OUT_1B_H: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_1D_E: STD_LOGIC;
	signal OUT_5E_G: STD_LOGIC;
	signal OUT_4F_G: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_1F_G: STD_LOGIC;
	signal OUT_5G_G: STD_LOGIC;
	signal OUT_2G_NoPin: STD_LOGIC;
	signal OUT_1G_R: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_5I_G: STD_LOGIC;
	signal OUT_3I_H: STD_LOGIC;
	signal OUT_2I_A: STD_LOGIC;
	signal OUT_1I_D: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_E_CH_U_SEL_REG_NOT_B_BIT AND PS_E_CH_U_SEL_REG_NOT_8_BIT AND PS_E_CH_U_SEL_REG_NOT_C_BIT );
	OUT_1A_F <= NOT OUT_2B_B;
	OUT_5B_R <= NOT OUT_5A_NoPin;
	OUT_4B_G <= NOT(OUT_5B_R AND PS_E_CH_U_SEL_REG_NOT_A_BIT AND PS_E_CH_U_SEL_REG_NOT_4_BIT );
	OUT_3B_C <= NOT(OUT_DOT_4B );
	OUT_2B_B <= NOT OUT_3B_C;
	OUT_1B_H <= OUT_2B_B;
	OUT_5C_G <= NOT(PS_E_CH_U_SEL_REG_NOT_2_BIT AND PS_E_CH_U_SEL_REG_1_BIT );
	OUT_1C_D <= NOT OUT_2D_C;
	OUT_4D_G <= NOT(OUT_5B_R AND PS_E_CH_U_SEL_REG_NOT_4_BIT AND PS_E_CH_U_SEL_REG_NOT_A_BIT );
	OUT_3D_C <= NOT(OUT_DOT_4D );
	OUT_2D_C <= NOT OUT_3D_C;
	OUT_1D_E <= OUT_2D_C;
	OUT_5E_G <= NOT(PS_E_CH_U_SEL_REG_2_BIT AND PS_E_CH_U_SEL_REG_NOT_1_BIT );
	OUT_4F_G <= NOT(OUT_5B_R AND PS_E_CH_U_SEL_REG_NOT_A_BIT AND PS_E_CH_U_SEL_REG_4_BIT );
	OUT_3F_C <= NOT(OUT_DOT_4F );
	OUT_2F_R <= NOT OUT_3F_C;
	OUT_1F_G <= OUT_2F_R;
	OUT_5G_G <= NOT(PS_E_CH_U_SEL_REG_NOT_2_BIT AND PS_E_CH_U_SEL_REG_NOT_1_BIT );
	OUT_2G_NoPin <= NOT(PS_E_CH_OUTPUT_MODE AND OUT_2H_B );
	OUT_1G_R <= NOT OUT_2G_NoPin;
	OUT_4H_C <= NOT(OUT_5B_R AND PS_E_CH_U_SEL_REG_A_BIT AND PS_E_CH_U_SEL_REG_NOT_4_BIT );
	OUT_2H_B <= NOT OUT_DOT_4H;
	OUT_5I_G <= NOT(PS_E_CH_U_SEL_REG_1_BIT AND PS_E_CH_U_SEL_REG_2_BIT );
	OUT_3I_H <= NOT(OUT_2H_B AND PS_E_CH_INPUT_MODE );
	OUT_2I_A <= NOT OUT_3I_H;
	OUT_1I_D <= NOT OUT_2H_B;
	OUT_DOT_4B <= OUT_4B_G OR OUT_5C_G;
	OUT_DOT_4D <= OUT_4D_G OR OUT_5E_G;
	OUT_DOT_4F <= OUT_4F_G OR OUT_5G_G;
	OUT_DOT_4H <= OUT_4H_C OR OUT_5I_G;

	PS_E_CH_SELECT_UNIT_1 <= OUT_1A_F;
	MS_E_CH_SELECT_UNIT_1 <= OUT_2B_B;
	MC_UNIT_1_SELECT_TO_I_O <= OUT_1B_H;
	PS_E_CH_SELECT_UNIT_2 <= OUT_1C_D;
	MS_E_CH_SELECT_UNIT_2 <= OUT_2D_C;
	MC_UNIT_2_SELECT_TO_I_O <= OUT_1D_E;
	MS_E_CH_SELECT_UNIT_4 <= OUT_2F_R;
	MC_UNIT_4_SELECT_TO_I_O <= OUT_1F_G;
	PS_E_CH_SELECT_UNIT_T_DOT_OUTPUT <= OUT_1G_R;
	PS_E_CH_SELECT_UNIT_T <= OUT_2H_B;
	MS_E_CH_SELECT_UNIT_T_DOT_INPUT <= OUT_3I_H;
	PS_E_CH_SELECT_UNIT_T_DOT_INPUT <= OUT_2I_A;
	MS_E_CH_SELECT_UNIT_T <= OUT_1I_D;


end;