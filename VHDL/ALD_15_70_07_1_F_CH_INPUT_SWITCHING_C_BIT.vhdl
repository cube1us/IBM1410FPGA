-- VHDL for IBM SMS ALD page 15.70.07.1
-- Title: F CH INPUT SWITCHING C BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/27/2020 5:15:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_70_07_1_F_CH_INPUT_SWITCHING_C_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_U:	 in STD_LOGIC;
		MC_F_CH_TAU_TO_CPU_C_BIT:	 in STD_LOGIC;
		MS_TAPE_TO_F_CH:	 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_B:	 in STD_LOGIC;
		PS_F1_INPUT_C_BIT_STAR_SIF:	 in STD_LOGIC;
		PS_F1_INPUT_C_BIT_STAR_1414_STAR:	 in STD_LOGIC;
		PS_F1_INPUT_C_BIT_STAR_1412_19:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_C_CHAR_BIT:	 in STD_LOGIC;
		PS_ASSEMBLY_TO_F_CH:	 in STD_LOGIC;
		MC_F_CH_1301_TO_CPU_C_BIT:	 in STD_LOGIC;
		MC_F_CH_1405_TO_CPU_C_BIT:	 in STD_LOGIC;
		MS_FILE_TO_F_CH:	 in STD_LOGIC;
		PS_F1_INPUT_C_BIT:	 out STD_LOGIC;
		MS_F1_INPUT_C_BIT:	 out STD_LOGIC);
end ALD_15_70_07_1_F_CH_INPUT_SWITCHING_C_BIT;

architecture behavioral of ALD_15_70_07_1_F_CH_INPUT_SWITCHING_C_BIT is 

	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_5D_G: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_5E_B: STD_LOGIC;
	signal OUT_3E_A: STD_LOGIC;
	signal OUT_2E_H: STD_LOGIC;
	signal OUT_1E_A: STD_LOGIC;
	signal OUT_3F_G: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_3C_C <= NOT(OUT_5D_G AND PS_F_CH_SELECT_UNIT_U AND OUT_4D_C );
	OUT_1C_C <= NOT OUT_1E_A;
	OUT_5D_G <= NOT(MS_TAPE_TO_F_CH );
	OUT_4D_C <= NOT(OUT_5E_B );
	OUT_5E_B <= NOT(MC_F_CH_TAU_TO_CPU_C_BIT OR MS_TAPE_TO_F_CH );
	OUT_3E_A <= NOT(OUT_5E_B AND PS_F_CH_SELECT_UNIT_B );
	OUT_2E_H <= NOT(OUT_3C_C AND OUT_3E_A AND OUT_3F_G );
	OUT_1E_A <= NOT OUT_DOT_2E;
	OUT_3F_G <= NOT(PS_ASSEMBLY_CH_C_CHAR_BIT AND PS_ASSEMBLY_TO_F_CH );
	OUT_2G_C <= NOT(OUT_DOT_5G OR MS_FILE_TO_F_CH );
	OUT_DOT_2E <= OUT_2E_H OR PS_F1_INPUT_C_BIT_STAR_SIF OR PS_F1_INPUT_C_BIT_STAR_1414_STAR OR PS_F1_INPUT_C_BIT_STAR_1412_19 OR OUT_2G_C;
	OUT_DOT_5G <= MC_F_CH_1301_TO_CPU_C_BIT AND MC_F_CH_1405_TO_CPU_C_BIT;

	PS_F1_INPUT_C_BIT <= OUT_1C_C;
	MS_F1_INPUT_C_BIT <= OUT_1E_A;


end;
