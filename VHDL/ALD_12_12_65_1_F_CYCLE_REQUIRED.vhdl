-- VHDL for IBM SMS ALD page 12.12.65.1
-- Title: F CYCLE REQUIRED
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/29/2020 2:09:27 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_65_1_F_CYCLE_REQUIRED is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CH_EXT_END_OF_TRANSFER:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		MS_F1_REG_FULL:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 in STD_LOGIC;
		MS_F_CYCLE_DOT_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		MS_F_CH_OUTPUT_DOT_NOT_F2_REG_FULL:	 in STD_LOGIC;
		MS_F_CH_INPUT_DOT_F2_REG_FULL:	 in STD_LOGIC;
		MS_F_CH_INT_END_OF_TRANSFER:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_F2_REG_FULL:	 in STD_LOGIC;
		PS_F_CYCLE_REQUIRED:	 out STD_LOGIC;
		MS_F_CYCLE_REQUIRED:	 out STD_LOGIC);
end ALD_12_12_65_1_F_CYCLE_REQUIRED;

architecture behavioral of ALD_12_12_65_1_F_CYCLE_REQUIRED is 

	signal OUT_3A_C: STD_LOGIC;
	signal OUT_5B_D: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_5C_B: STD_LOGIC;
	signal OUT_3C_R: STD_LOGIC;
	signal OUT_5D_B: STD_LOGIC;
	signal OUT_3D_B: STD_LOGIC;
	signal OUT_3E_R: STD_LOGIC;
	signal OUT_5F_F: STD_LOGIC;
	signal OUT_3F_F: STD_LOGIC;
	signal OUT_3G_R: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_3H_B: STD_LOGIC;
	signal OUT_5I_B: STD_LOGIC;
	signal OUT_3I_C: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_3A_C <= NOT(MS_F_CH_INT_END_OF_TRANSFER AND PS_F_CH_IN_PROCESS AND PS_F_CH_INPUT_MODE );
	OUT_5B_D <= NOT(MS_F_CH_INT_END_OF_TRANSFER AND PS_F_CH_IN_PROCESS AND PS_F_CH_OUTPUT_MODE );
	OUT_3B_F <= NOT PS_F_CH_EXT_END_OF_TRANSFER;
	OUT_5C_B <= NOT MS_F1_REG_FULL;
	OUT_3C_R <= NOT MS_F2_REG_FULL;
	OUT_5D_B <= NOT MS_F_CYCLE_DOT_ANY_LAST_GATE;
	OUT_3D_B <= NOT MS_F1_REG_FULL;
	OUT_3E_R <= NOT OUT_DOT_3D;
	OUT_5F_F <= NOT MS_F_CYCLE_DOT_ANY_LAST_GATE;
	OUT_3F_F <= NOT OUT_DOT_5D;
	OUT_3G_R <= NOT OUT_DOT_5G;
	OUT_1G_C <= NOT OUT_DOT_3E;
	OUT_5H_D <= NOT(MS_F_CH_INT_END_OF_TRANSFER AND PS_F_CH_IN_PROCESS AND PS_F_CH_INPUT_MODE );
	OUT_3H_B <= NOT MS_F_CH_OUTPUT_DOT_NOT_F2_REG_FULL;
	OUT_5I_B <= NOT PS_F2_REG_FULL;
	OUT_3I_C <= NOT MS_F_CH_INPUT_DOT_F2_REG_FULL;
	OUT_DOT_5D <= OUT_5B_D OR OUT_5C_B OR OUT_5D_B;
	OUT_DOT_3D <= OUT_3A_C OR OUT_3B_F OR OUT_3C_R OR OUT_3D_B;
	OUT_DOT_3E <= OUT_3E_R OR OUT_3F_F OR OUT_3G_R OR OUT_3H_B OR OUT_3I_C;
	OUT_DOT_5G <= OUT_5F_F OR OUT_5H_D OR OUT_5I_B;

	MS_F_CYCLE_REQUIRED <= OUT_1G_C;
	PS_F_CYCLE_REQUIRED <= OUT_DOT_3E;


end;