-- VHDL for IBM SMS ALD page 14.50.06.1
-- Title: ADDRESS GENERATOR TENS POSITION
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/1/2020 7:56:36 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_50_06_1_ADDRESS_GENERATOR_TENS_POSITION is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_H_POS_C_INDEX_TAG:	 in STD_LOGIC;
		PS_H_POS_A_INDEX_TAG:	 in STD_LOGIC;
		PS_T_POS_B_INDEX_TAG:	 in STD_LOGIC;
		PS_RO_INDEX_AR:	 in STD_LOGIC;
		PS_H_POS_B_INDEX_TAG:	 in STD_LOGIC;
		MS_T_POS_B_INDEX_TAG:	 in STD_LOGIC;
		MS_H_POS_C_INDEX_TAG:	 in STD_LOGIC;
		MS_H_POS_A_INDEX_TAG:	 in STD_LOGIC;
		MS_ADDR_GEN_TP_18_BIT:	 out STD_LOGIC;
		MS_ADDR_GEN_TP_08_BIT:	 out STD_LOGIC;
		MS_ADDR_GEN_TP_48_BIT:	 out STD_LOGIC;
		MS_ADDR_GEN_TP_24_BIT:	 out STD_LOGIC);
end ALD_14_50_06_1_ADDRESS_GENERATOR_TENS_POSITION;

architecture behavioral of ALD_14_50_06_1_ADDRESS_GENERATOR_TENS_POSITION is 

	signal OUT_4A_C: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_4E_E: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_3H_R: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;

begin

	OUT_4A_C <= NOT(PS_H_POS_C_INDEX_TAG AND PS_RO_INDEX_AR AND PS_H_POS_B_INDEX_TAG );
	OUT_4B_C <= NOT(PS_T_POS_B_INDEX_TAG AND PS_H_POS_A_INDEX_TAG );
	OUT_3C_D <= NOT(MS_T_POS_B_INDEX_TAG AND PS_H_POS_C_INDEX_TAG AND PS_H_POS_A_INDEX_TAG );
	OUT_3D_R <= NOT(PS_RO_INDEX_AR AND PS_H_POS_B_INDEX_TAG );
	OUT_4E_E <= NOT(MS_H_POS_C_INDEX_TAG AND PS_RO_INDEX_AR AND MS_H_POS_A_INDEX_TAG );
	OUT_4F_C <= NOT(PS_T_POS_B_INDEX_TAG AND PS_H_POS_B_INDEX_TAG );
	OUT_3G_C <= NOT(MS_T_POS_B_INDEX_TAG AND MS_H_POS_C_INDEX_TAG AND MS_H_POS_A_INDEX_TAG );
	OUT_3H_R <= NOT(PS_RO_INDEX_AR AND PS_H_POS_B_INDEX_TAG );
	OUT_DOT_1A <= OUT_4A_C OR OUT_4B_C;
	OUT_DOT_1C <= OUT_3C_D OR OUT_3D_R;
	OUT_DOT_1E <= OUT_4E_E OR OUT_4F_C;
	OUT_DOT_1G <= OUT_3G_C OR OUT_3H_R;

	MS_ADDR_GEN_TP_18_BIT <= OUT_DOT_1A;
	MS_ADDR_GEN_TP_08_BIT <= OUT_DOT_1C;
	MS_ADDR_GEN_TP_48_BIT <= OUT_DOT_1E;
	MS_ADDR_GEN_TP_24_BIT <= OUT_DOT_1G;


end;
