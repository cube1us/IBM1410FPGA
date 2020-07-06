-- VHDL for IBM SMS ALD page 12.15.03.1
-- Title: 1* SINGLE CYCLE CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/4/2020 10:18:54 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_15_03_1_1_SINGLE_CYCLE_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		MS_START_KEY:	 in STD_LOGIC;
		PS_START_KEY_2:	 in STD_LOGIC;
		MS_STORAGE_SCAN_MODE:	 in STD_LOGIC;
		MS_ERROR_RESTART:	 in STD_LOGIC;
		PS_CONS_CLOCK_1_POS:	 in STD_LOGIC;
		MV_CONS_MODE_SW_I_E_CYCLE_MODE:	 in STD_LOGIC;
		MV_CONS_MODE_SW_RUN_MODE:	 in STD_LOGIC;
		PS_CONS_STOP_PRINT_COMPLETE:	 in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		MS_CONSOLE_CYCLE_START:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		MS_ONLY_PROGRAM_RESET:	 in STD_LOGIC;
		MS_COMP_OR_POWER_ON_RESET:	 in STD_LOGIC;
		MS_START_KEY_LATCH_1:	 in STD_LOGIC;
		MS_DISPLAY_END_OF_MEMORY:	 in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS_1:	 in STD_LOGIC;
		MV_CONSOLE_MODE_SW_STOP_POS:	 in STD_LOGIC;
		PS_RESET_STOP_KEY_LATCH_STAR_AUTS_STAR:	 in STD_LOGIC;
		MS_START_KEY_LATCH_2:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		SWITCH_MOM_CONS_STOP:	 in STD_LOGIC;
		SWITCH_MOM_CE_STOP_SW:	 in STD_LOGIC;
		MS_CONSOLE_SET_START_CND:	 out STD_LOGIC;
		MS_START_KEY_PULSE:	 out STD_LOGIC;
		PS_RUN_OR_IE_MODE_STAR_AUTS_STAR:	 out STD_LOGIC;
		PS_PROCESS_ROUTINE:	 out STD_LOGIC;
		MS_PROCESS_ROUTINE:	 out STD_LOGIC;
		MS_STOP_KEY_LATCH:	 out STD_LOGIC;
		PS_STOP_KEY_LATCH:	 out STD_LOGIC);
end ALD_12_15_03_1_1_SINGLE_CYCLE_CONTROL_ACC;

architecture behavioral of ALD_12_15_03_1_1_SINGLE_CYCLE_CONTROL_ACC is 

	signal OUT_5A_R: STD_LOGIC;
	signal OUT_4A_K: STD_LOGIC;
	signal OUT_4A_K_Latch: STD_LOGIC;
	signal OUT_3A_G: STD_LOGIC;
	signal OUT_3A_G_Latch: STD_LOGIC;
	signal OUT_2A_F: STD_LOGIC;
	signal OUT_1A_B: STD_LOGIC;
	signal OUT_5B_D: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_1B_D: STD_LOGIC;
	signal OUT_5C_K: STD_LOGIC;
	signal OUT_4C_G: STD_LOGIC;
	signal OUT_4C_G_Latch: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_2C_C_Latch: STD_LOGIC;
	signal OUT_1C_P: STD_LOGIC;
	signal OUT_1C_P_Latch: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_2D_K: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_5F_C_Latch: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_4F_E_Latch: STD_LOGIC;
	signal OUT_3F_R: STD_LOGIC;
	signal OUT_3F_R_Latch: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2F_C_Latch: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_5G_T: STD_LOGIC;
	signal OUT_4G_X: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_2G_C_Latch: STD_LOGIC;
	signal OUT_1G_G: STD_LOGIC;
	signal OUT_1G_G_Latch: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_5I_T: STD_LOGIC;
	signal OUT_4I_X: STD_LOGIC;
	signal OUT_2I_NoPin: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_2A: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;

begin

	OUT_5A_R <= NOT PS_2ND_CLOCK_PULSE_2;
	OUT_4A_K_Latch <= NOT(OUT_DOT_5A AND OUT_3A_G );
	OUT_3A_G_Latch <= NOT(OUT_4A_K AND OUT_4B_G );
	OUT_2A_F <= NOT OUT_4A_K;
	OUT_1A_B <= OUT_2C_C;
	OUT_5B_D <= NOT PS_START_KEY_2;
	OUT_4B_G <= NOT(MS_START_KEY AND PS_1ST_CLOCK_PULSE_1 );
	OUT_3B_G <= NOT(OUT_DOT_2A AND OUT_5C_K AND MS_STORAGE_SCAN_MODE );
	OUT_2B_C <= NOT MS_ERROR_RESTART;
	OUT_1B_D <= NOT(PS_START_KEY_2 AND PS_1ST_CLOCK_PULSE_1 AND OUT_DOT_2A );
	OUT_5C_K <= NOT(MV_CONS_MODE_SW_I_E_CYCLE_MODE AND MV_CONS_MODE_SW_RUN_MODE );
	OUT_4C_G_Latch <= NOT(PS_CONS_CLOCK_1_POS AND OUT_2F_C AND PS_START_KEY_2 );
	OUT_2C_C_Latch <= NOT(OUT_2F_C AND OUT_1C_P AND MS_PROGRAM_RESET_3 );
	OUT_1C_P_Latch <= NOT(OUT_2C_C AND OUT_DOT_3C );
	OUT_5D_C <= NOT(PS_STORAGE_SCAN_ROUTINE AND MS_ADDRESS_SET_ROUTINE AND MS_CONSOLE_CYCLE_START );
	OUT_3D_G <= NOT(OUT_5C_K AND OUT_3E_C );
	OUT_2D_K <= NOT(OUT_5D_C AND OUT_3D_G );
	OUT_1D_C <= NOT(OUT_2D_K AND PS_CONS_STOP_PRINT_COMPLETE );
	OUT_3E_C <= NOT OUT_4F_E;
	OUT_5F_C_Latch <= NOT(OUT_1C_P AND PS_CONS_CLOCK_3_POS_1 );
	OUT_4F_E_Latch <= NOT(OUT_3F_R AND MS_PROGRAM_RESET_3 AND MS_CONS_RESET_START_CONDITION );
	OUT_3F_R_Latch <= NOT(OUT_5F_C AND OUT_4F_E );
	OUT_2F_C_Latch <= NOT OUT_3F_R;
	OUT_1F_C <= NOT(MS_DISPLAY_END_OF_MEMORY AND MS_ONLY_PROGRAM_RESET AND MS_COMP_OR_POWER_ON_RESET );
	OUT_5G_T <=  NOT SWITCH_MOM_CONS_STOP;
	OUT_4G_X <= OUT_5G_T;
	OUT_3G_C <= NOT(MV_CONSOLE_MODE_SW_STOP_POS AND OUT_DOT_4G );
	OUT_2G_C_Latch <= NOT(MS_START_KEY_LATCH_1 AND MS_START_KEY_LATCH_2 AND OUT_DOT_1G );
	OUT_1G_G_Latch <= NOT(OUT_2I_NoPin AND OUT_DOT_2G );
	OUT_2H_C <= OUT_DOT_1G;
	OUT_1H_C <= NOT OUT_2H_C;
	OUT_5I_T <=  NOT SWITCH_MOM_CE_STOP_SW;
	OUT_4I_X <= OUT_5I_T;
	OUT_2I_NoPin <= NOT(OUT_3G_C );
	OUT_DOT_1B <= OUT_1B_D OR OUT_1D_C;
	OUT_DOT_3C <= OUT_3B_G OR OUT_4C_G;
	OUT_DOT_5A <= OUT_5A_R OR OUT_5B_D;
	OUT_DOT_2A <= OUT_2A_F OR OUT_2B_C;
	OUT_DOT_1G <= OUT_1F_C OR OUT_1G_G;
	OUT_DOT_4G <= OUT_4G_X OR OUT_4I_X;
	OUT_DOT_2G <= OUT_2G_C OR PS_RESET_STOP_KEY_LATCH_STAR_AUTS_STAR;

	MS_CONSOLE_SET_START_CND <= OUT_1A_B;
	PS_RUN_OR_IE_MODE_STAR_AUTS_STAR <= OUT_5C_K;
	PS_PROCESS_ROUTINE <= OUT_3E_C;
	MS_PROCESS_ROUTINE <= OUT_2F_C;
	PS_STOP_KEY_LATCH <= OUT_2H_C;
	MS_STOP_KEY_LATCH <= OUT_1H_C;
	MS_START_KEY_PULSE <= OUT_DOT_1B;

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_K_Latch,
		Q => OUT_4A_K,
		QBar => OPEN );

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_G_Latch,
		Q => OUT_3A_G,
		QBar => OPEN );

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_G_Latch,
		Q => OUT_4C_G,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_C_Latch,
		Q => OUT_2C_C,
		QBar => OPEN );

	Latch_1C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1C_P_Latch,
		Q => OUT_1C_P,
		QBar => OPEN );

	Latch_5F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5F_C_Latch,
		Q => OUT_5F_C,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_E_Latch,
		Q => OUT_4F_E,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_R_Latch,
		Q => OUT_3F_R,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_C_Latch,
		Q => OUT_2F_C,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_C_Latch,
		Q => OUT_2G_C,
		QBar => OPEN );

	Latch_1G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1G_G_Latch,
		Q => OUT_1G_G,
		QBar => OPEN );


end;
