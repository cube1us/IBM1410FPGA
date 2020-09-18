-- VHDL for IBM SMS ALD page 15.60.03.1
-- Title: E CH INPUT SWITCHING 4 BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/18/2020 10:36:54 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_60_03_1_E_CH_INPUT_SWITCHING_4_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ASSEMBLY_CH_4_BIT:	 in STD_LOGIC;
		PS_GATE_ASM_CH_TO_E1_INPUT:	 in STD_LOGIC;
		PS_E1_INPUT_4_BIT_STAR_SIF:	 in STD_LOGIC;
		PS_E1_INPUT_4_BIT_STAR_1412_19:	 in STD_LOGIC;
		MC_E_CH_TAU_TO_CPU_4_BIT:	 in STD_LOGIC;
		MS_GATE_TAPE_TO_E1_INPUT:	 in STD_LOGIC;
		MC_I_O_SYNC_TO_CPU_4_BIT:	 in STD_LOGIC;
		MS_GATE_I_O_SYNC_TO_E1_IN:	 in STD_LOGIC;
		MC_E_CH_1301_TO_CPU_4_BIT:	 in STD_LOGIC;
		MC_E_CH_1405_TO_CPU_4_BIT:	 in STD_LOGIC;
		MS_GATE_E_CH_FILE_TO_E1_IN:	 in STD_LOGIC;
		MV_CONS_PRTR_TO_CPU_4_BIT_STAR_R2OP:	 in STD_LOGIC;
		MS_GATE_CONSOLE_PRTR_TO_E1_IN:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		MS_GATE_BIT_SENSE_SWITCH:	 in STD_LOGIC;
		SWITCH_TOG_SENSE_SW_4:	 in STD_LOGIC;
		MS_E1_INPUT_4_BIT:	 out STD_LOGIC;
		PS_E1_INPUT_4_BIT:	 out STD_LOGIC);
end ALD_15_60_03_1_E_CH_INPUT_SWITCHING_4_BIT_ACC;

architecture behavioral of ALD_15_60_03_1_E_CH_INPUT_SWITCHING_4_BIT_ACC is 

	signal OUT_1B_B: STD_LOGIC;
	signal OUT_4D_F: STD_LOGIC;
	signal OUT_2D_K: STD_LOGIC;
	signal OUT_1D_D: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_4H_X: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_5I_T: STD_LOGIC;
	signal OUT_4I_X: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_1B_B <= NOT OUT_DOT_2D;
	OUT_4D_F <= NOT(PS_ASSEMBLY_CH_4_BIT AND PS_GATE_ASM_CH_TO_E1_INPUT );
	OUT_2D_K <= NOT(OUT_4D_F );
	OUT_1D_D <= NOT OUT_1B_B;
	OUT_2E_C <= NOT(MC_E_CH_TAU_TO_CPU_4_BIT OR MS_GATE_TAPE_TO_E1_INPUT );
	OUT_2F_C <= NOT(MC_I_O_SYNC_TO_CPU_4_BIT OR MS_GATE_I_O_SYNC_TO_E1_IN );
	OUT_2G_C <= NOT(OUT_DOT_5G OR MS_GATE_E_CH_FILE_TO_E1_IN );
	OUT_4H_X <= MV_CONS_PRTR_TO_CPU_4_BIT_STAR_R2OP;
	OUT_2H_C <= NOT(OUT_4H_X OR MS_GATE_CONSOLE_PRTR_TO_E1_IN );
	OUT_5I_T <=  NOT SWITCH_TOG_SENSE_SW_4;
	OUT_4I_X <= OUT_5I_T;
	OUT_2I_C <= NOT(OUT_4I_X OR MS_GATE_BIT_SENSE_SWITCH );
	OUT_DOT_2D <= OUT_2D_K OR PS_E1_INPUT_4_BIT_STAR_SIF OR PS_E1_INPUT_4_BIT_STAR_1412_19 OR OUT_2E_C OR OUT_2F_C OR OUT_2G_C OR OUT_2H_C OR OUT_2I_C;
	OUT_DOT_5G <= MC_E_CH_1301_TO_CPU_4_BIT AND MC_E_CH_1405_TO_CPU_4_BIT;

	MS_E1_INPUT_4_BIT <= OUT_1B_B;
	PS_E1_INPUT_4_BIT <= OUT_1D_D;


end;
