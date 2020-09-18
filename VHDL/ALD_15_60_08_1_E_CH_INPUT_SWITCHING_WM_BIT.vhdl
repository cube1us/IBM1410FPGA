-- VHDL for IBM SMS ALD page 15.60.08.1
-- Title: E CH INPUT SWITCHING WM BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/18/2020 10:37:07 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_60_08_1_E_CH_INPUT_SWITCHING_WM_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ASSEMBLY_CH_WM_BIT:	 in STD_LOGIC;
		PS_GATE_ASM_CH_TO_E1_INPUT:	 in STD_LOGIC;
		PS_E1_INPUT_WM_BIT_STAR_SIF:	 in STD_LOGIC;
		PS_E1_INPUT_WM_BIT_STAR_1412_19:	 in STD_LOGIC;
		PS_CONSOLE_WM_CHARACTER:	 in STD_LOGIC;
		PS_GATE_CONSOLE_PRTR_TO_E1_IN:	 in STD_LOGIC;
		MC_E_CH_1301_TO_CPU_WM_BIT:	 in STD_LOGIC;
		MC_E_CH_1405_TO_CPU_WM_BIT:	 in STD_LOGIC;
		MS_GATE_E_CH_FILE_TO_E1_IN:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		MS_GATE_BIT_SENSE_SWITCH:	 in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_W:	 in STD_LOGIC;
		MS_E1_INPUT_WM_BIT:	 out STD_LOGIC;
		PS_E1_INPUT_WM_BIT:	 out STD_LOGIC);
end ALD_15_60_08_1_E_CH_INPUT_SWITCHING_WM_BIT;

architecture behavioral of ALD_15_60_08_1_E_CH_INPUT_SWITCHING_WM_BIT is 

	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_2C_A: STD_LOGIC;
	signal OUT_1C_F: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_2E_L: STD_LOGIC;
	signal OUT_1E_R: STD_LOGIC;
	signal OUT_5F_T: STD_LOGIC;
	signal OUT_4F_X: STD_LOGIC;
	signal OUT_2F_L: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;

begin

	OUT_4C_NoPin <= NOT(PS_ASSEMBLY_CH_WM_BIT AND PS_GATE_ASM_CH_TO_E1_INPUT );
	OUT_2C_A <= NOT(OUT_4C_NoPin AND OUT_4D_NoPin );
	OUT_1C_F <= NOT OUT_DOT_2C;
	OUT_4D_NoPin <= NOT(PS_CONSOLE_WM_CHARACTER AND PS_GATE_CONSOLE_PRTR_TO_E1_IN );
	OUT_2E_L <= NOT(OUT_DOT_5E OR MS_GATE_E_CH_FILE_TO_E1_IN );
	OUT_1E_R <= NOT OUT_1C_F;
	OUT_5F_T <=  NOT SWITCH_TOG_SENSE_SW_W;
	OUT_4F_X <= OUT_5F_T;
	OUT_2F_L <= NOT(OUT_4F_X OR MS_GATE_BIT_SENSE_SWITCH );
	OUT_DOT_2C <= OUT_2C_A OR PS_E1_INPUT_WM_BIT_STAR_SIF OR PS_E1_INPUT_WM_BIT_STAR_1412_19 OR OUT_2E_L OR OUT_2F_L;
	OUT_DOT_5E <= MC_E_CH_1301_TO_CPU_WM_BIT AND MC_E_CH_1405_TO_CPU_WM_BIT;

	MS_E1_INPUT_WM_BIT <= OUT_1C_F;
	PS_E1_INPUT_WM_BIT <= OUT_1E_R;


end;
