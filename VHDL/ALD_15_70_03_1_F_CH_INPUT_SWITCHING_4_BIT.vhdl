-- VHDL for IBM SMS ALD page 15.70.03.1
-- Title: F CH INPUT SWITCHING 4 BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/27/2020 5:15:47 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_70_03_1_F_CH_INPUT_SWITCHING_4_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ASSEMBLY_CH_4_BIT:	 in STD_LOGIC;
		PS_ASSEMBLY_TO_F_CH:	 in STD_LOGIC;
		PS_F1_INPUT_4_BIT_STAR_SIF:	 in STD_LOGIC;
		PS_F1_INPUT_4_BIT_STAR_1414_STAR:	 in STD_LOGIC;
		PS_F1_INPUT_4_BIT_STAR_1412_19:	 in STD_LOGIC;
		MC_F_CH_1301_TO_CPU_4_BIT:	 in STD_LOGIC;
		MC_F_CH_1405_TO_CPU_4_BIT:	 in STD_LOGIC;
		MS_FILE_TO_F_CH:	 in STD_LOGIC;
		MC_F_CH_TAU_TO_CPU_4_BIT:	 in STD_LOGIC;
		MS_TAPE_TO_F_CH:	 in STD_LOGIC;
		PS_F1_INPUT_4_BIT:	 out STD_LOGIC;
		MS_F1_INPUT_4_BIT:	 out STD_LOGIC);
end ALD_15_70_03_1_F_CH_INPUT_SWITCHING_4_BIT;

architecture behavioral of ALD_15_70_03_1_F_CH_INPUT_SWITCHING_4_BIT is 

	signal OUT_4C_F: STD_LOGIC;
	signal OUT_2C_F: STD_LOGIC;
	signal OUT_1C_B: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_4C_F <= NOT(PS_ASSEMBLY_CH_4_BIT AND PS_ASSEMBLY_TO_F_CH );
	OUT_2C_F <= NOT(OUT_4C_F );
	OUT_1C_B <= NOT OUT_1E_D;
	OUT_2E_C <= NOT(OUT_DOT_5E OR MS_FILE_TO_F_CH );
	OUT_1E_D <= NOT OUT_DOT_2E;
	OUT_2G_C <= NOT(MC_F_CH_TAU_TO_CPU_4_BIT OR MS_TAPE_TO_F_CH );
	OUT_DOT_5E <= MC_F_CH_1301_TO_CPU_4_BIT AND MC_F_CH_1405_TO_CPU_4_BIT;
	OUT_DOT_2E <= OUT_2C_F OR OUT_2E_C OR PS_F1_INPUT_4_BIT_STAR_SIF OR PS_F1_INPUT_4_BIT_STAR_1414_STAR OR PS_F1_INPUT_4_BIT_STAR_1412_19 OR OUT_2G_C;

	PS_F1_INPUT_4_BIT <= OUT_1C_B;
	MS_F1_INPUT_4_BIT <= OUT_1E_D;


end;
