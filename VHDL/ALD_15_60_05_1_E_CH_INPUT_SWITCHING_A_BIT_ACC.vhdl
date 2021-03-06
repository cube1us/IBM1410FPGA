-- VHDL for IBM SMS ALD page 15.60.05.1
-- Title: E CH INPUT SWITCHING A BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 10:05:01 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_60_05_1_E_CH_INPUT_SWITCHING_A_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E1_INPUT_A_BIT_STAR_1412_19:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_A_BIT:	 in STD_LOGIC;
		PS_GATE_ASM_CH_TO_E1_INPUT:	 in STD_LOGIC;
		PS_E1_INPUT_A_BIT_STAR_SIF:	 in STD_LOGIC;
		MC_E_CH_TAU_TO_CPU_A_BIT:	 in STD_LOGIC;
		MS_GATE_TAPE_TO_E1_INPUT:	 in STD_LOGIC;
		MC_I_O_SYNC_TO_CPU_A_BIT:	 in STD_LOGIC;
		MS_GATE_I_O_SYNC_TO_E1_IN:	 in STD_LOGIC;
		MC_E_CH_1301_TO_CPU_A_BIT:	 in STD_LOGIC;
		MC_E_CH_1405_TO_CPU_A_BIT:	 in STD_LOGIC;
		MS_GATE_E_CH_FILE_TO_E1_IN:	 in STD_LOGIC;
		MV_CONS_PRTR_TO_CPU_A_BIT_STAR_T10P:	 in STD_LOGIC;
		MS_GATE_CONSOLE_PRTR_TO_E1_IN:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		MS_GATE_BIT_SENSE_SWITCH:	 in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_A_PL1:	 in STD_LOGIC;
		MS_E1_INPUT_A_BIT:	 out STD_LOGIC;
		PS_E1_INPUT_A_BIT:	 out STD_LOGIC);
end ALD_15_60_05_1_E_CH_INPUT_SWITCHING_A_BIT_ACC;

architecture behavioral of ALD_15_60_05_1_E_CH_INPUT_SWITCHING_A_BIT_ACC is 

	signal OUT_4D_E: STD_LOGIC;
	signal OUT_2D_B: STD_LOGIC;
	signal OUT_1D_R: STD_LOGIC;
	signal OUT_2E_B: STD_LOGIC;
	signal OUT_2F_B: STD_LOGIC;
	signal OUT_1F_B: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_4H_X: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_5I_T: STD_LOGIC;
	signal OUT_4I_X: STD_LOGIC;
	signal OUT_2I_B: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_4D_E <= NOT(PS_ASSEMBLY_CH_A_BIT AND PS_GATE_ASM_CH_TO_E1_INPUT );
	OUT_2D_B <= NOT(OUT_4D_E );
	OUT_1D_R <= NOT OUT_DOT_2D;
	OUT_2E_B <= NOT(MC_E_CH_TAU_TO_CPU_A_BIT OR MS_GATE_TAPE_TO_E1_INPUT );
	OUT_2F_B <= NOT(MC_I_O_SYNC_TO_CPU_A_BIT OR MS_GATE_I_O_SYNC_TO_E1_IN );
	OUT_1F_B <= NOT OUT_1D_R;
	OUT_2G_B <= NOT(OUT_DOT_5G OR MS_GATE_E_CH_FILE_TO_E1_IN );
	OUT_4H_X <= MV_CONS_PRTR_TO_CPU_A_BIT_STAR_T10P;
	OUT_2H_B <= NOT(OUT_4H_X OR MS_GATE_CONSOLE_PRTR_TO_E1_IN );
	OUT_5I_T <=  NOT SWITCH_TOG_SENSE_SW_A_PL1;
	OUT_4I_X <= OUT_5I_T;
	OUT_2I_B <= NOT(OUT_4I_X OR MS_GATE_BIT_SENSE_SWITCH );
	OUT_DOT_2D <= OUT_2D_B OR PS_E1_INPUT_A_BIT_STAR_1412_19 OR PS_E1_INPUT_A_BIT_STAR_SIF OR OUT_2E_B OR OUT_2F_B OR OUT_2G_B OR OUT_2H_B OR OUT_2I_B;
	OUT_DOT_5G <= MC_E_CH_1301_TO_CPU_A_BIT AND MC_E_CH_1405_TO_CPU_A_BIT;

	MS_E1_INPUT_A_BIT <= OUT_1D_R;
	PS_E1_INPUT_A_BIT <= OUT_1F_B;


end;
