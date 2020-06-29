-- VHDL for IBM SMS ALD page 12.12.64.1
-- Title: F CYCLE REQUIRED
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/29/2020 2:09:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_64_1_F_CYCLE_REQUIRED is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 in STD_LOGIC;
		PS_F_CYCLE:	 in STD_LOGIC;
		PS_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		MS_F_CH_INT_END_OF_TRANSFER:	 in STD_LOGIC;
		MS_F1_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_F1_REG_FULL:	 in STD_LOGIC;
		MS_F_CH_OUTPUT_DOT_NOT_F2_REG_FULL:	 out STD_LOGIC;
		MS_F_CYCLE_DOT_ANY_LAST_GATE:	 out STD_LOGIC;
		MS_F_CH_INPUT_DOT_F2_REG_FULL:	 out STD_LOGIC);
end ALD_12_12_64_1_F_CYCLE_REQUIRED;

architecture behavioral of ALD_12_12_64_1_F_CYCLE_REQUIRED is 

	signal OUT_2B_C: STD_LOGIC;
	signal OUT_5C_F: STD_LOGIC;
	signal OUT_2C_R: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_2D_R: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_2H_E: STD_LOGIC;
	signal OUT_2I_R: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_5C: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;

begin

	OUT_2B_C <= NOT(PS_F_CH_OUTPUT_MODE AND PS_F_CH_IN_PROCESS AND MS_F_CH_INT_END_OF_TRANSFER );
	OUT_5C_F <= NOT PS_F_CYCLE;
	OUT_2C_R <= NOT MS_F2_REG_FULL;
	OUT_5D_C <= NOT PS_ANY_LAST_GATE;
	OUT_2D_R <= NOT MS_F1_REG_WORD_SEPARATOR;
	OUT_2G_B <= NOT MS_F1_REG_WORD_SEPARATOR;
	OUT_2H_E <= NOT(PS_F_CH_INPUT_MODE AND PS_F_CH_IN_PROCESS AND MS_F_CH_INT_END_OF_TRANSFER );
	OUT_2I_R <= NOT PS_F1_REG_FULL;
	OUT_DOT_2B <= OUT_2B_C OR OUT_2C_R OR OUT_2D_R;
	OUT_DOT_5C <= OUT_5C_F OR OUT_5D_C;
	OUT_DOT_2G <= OUT_2G_B OR OUT_2H_E OR OUT_2I_R;

	MS_F_CH_OUTPUT_DOT_NOT_F2_REG_FULL <= OUT_DOT_2B;
	MS_F_CYCLE_DOT_ANY_LAST_GATE <= OUT_DOT_5C;
	MS_F_CH_INPUT_DOT_F2_REG_FULL <= OUT_DOT_2G;


end;
