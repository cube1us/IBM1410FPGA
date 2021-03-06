-- VHDL for IBM SMS ALD page 13.73.01.1
-- Title: F CH FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/17/2020 5:28:32 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_73_01_1_F_CH_FILE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		MS_F_CH_INPUT_MODE_STAR_1301_STAR:	 in STD_LOGIC;
		MS_F_CH_UNIT_NUMBER_9:	 in STD_LOGIC;
		MS_F_CH_INPUT_MODE_STAR_1311_STAR:	 in STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_Q_OR_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		PS_F_CH_NO_STATUS_ON:	 in STD_LOGIC;
		MS_1ST_DATA_STROBE_LATCH_CH_F:	 in STD_LOGIC;
		MS_BLOCK_F_CH_FILE_START_GT:	 in STD_LOGIC;
		PS_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_F_CYCLE:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_OR_S:	 in STD_LOGIC;
		PS_F_CH_END_ADDR_TRF_1301:	 in STD_LOGIC;
		PS_F_CH_INT_END_OF_XFER_DELAYED:	 in STD_LOGIC;
		MS_F_CH_UNIT_NUMBER_4:	 in STD_LOGIC;
		MS_F1_REG_FULL:	 in STD_LOGIC;
		MS_1311_F_CH_END_ADDR_TRF:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V:	 in STD_LOGIC;
		PS_F_CH_2ND_ADDR_TRF:	 out STD_LOGIC;
		MS_COMP_DISABLE_CYCLE_STAR_FILE_F_CH:	 out STD_LOGIC;
		MS_F_CH_2ND_ADDR_TRF:	 out STD_LOGIC;
		MC_1301_START_GATE_STAR_F_CH:	 out STD_LOGIC;
		MC_1405_START_GATE_STAR_F_CH:	 out STD_LOGIC;
		MS_F_CH_1ST_CHAR_2ND_ADDR:	 out STD_LOGIC;
		PS_F_CH_END_OF_2ND_ADDR_TRF:	 out STD_LOGIC;
		MS_F_CH_END_OF_2ND_ADDR_TRF:	 out STD_LOGIC);
end ALD_13_73_01_1_F_CH_FILE_CONTROLS;

architecture behavioral of ALD_13_73_01_1_F_CH_FILE_CONTROLS is 

	signal OUT_5A_G: STD_LOGIC;
	signal OUT_5A_G_Latch: STD_LOGIC;
	signal OUT_4A_C: STD_LOGIC;
	signal OUT_4A_C_Latch: STD_LOGIC;
	signal OUT_2A_C: STD_LOGIC;
	signal OUT_5B_P: STD_LOGIC;
	signal OUT_4B_P: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_3B_C_Latch: STD_LOGIC;
	signal OUT_2B_R: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_5C_C: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_3C_H: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_4D_G_Latch: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_3D_A_Latch: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_4E_D_Latch: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_5F_G: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_4F_C_Latch: STD_LOGIC;
	signal OUT_3F_K: STD_LOGIC;
	signal OUT_3F_K_Latch: STD_LOGIC;
	signal OUT_2F_E: STD_LOGIC;
	signal OUT_2F_E_Latch: STD_LOGIC;
	signal OUT_1F_E: STD_LOGIC;
	signal OUT_1F_E_Latch: STD_LOGIC;
	signal OUT_5G_G: STD_LOGIC;
	signal OUT_4G_R: STD_LOGIC;
	signal OUT_3G_F: STD_LOGIC;
	signal OUT_5H_G: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_3H_B: STD_LOGIC;
	signal OUT_3H_F: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_2I_D: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;
	signal OUT_DOT_5H: STD_LOGIC;
	signal OUT_DOT_5B: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;

begin

	OUT_5A_G_Latch <= NOT(MS_MASTER_ERROR AND OUT_DOT_4A );
	OUT_4A_C_Latch <= NOT(MS_F2_REG_FULL AND OUT_DOT_5A AND OUT_DOT_5B );
	OUT_2A_C <= NOT OUT_4E_D;
	OUT_5B_P <= NOT(PS_F_CH_IN_PROCESS AND PS_F_CH_SELECT_UNIT_F );
	OUT_4B_P <= NOT(MS_F_CH_UNIT_NUMBER_9 AND MS_F_CH_UNIT_NUMBER_4 );
	OUT_3B_C_Latch <= NOT(OUT_4E_D AND OUT_DOT_2D );
	OUT_2B_R <= NOT OUT_3B_C;
	OUT_1B_C <= NOT(OUT_2A_C AND PS_F_CH_IN_PROCESS AND PS_Q_OR_V_SYMBOL_OP_MODIFIER );
	OUT_5C_C <= NOT(MS_1ST_DATA_STROBE_LATCH_CH_F AND MS_BLOCK_F_CH_FILE_START_GT );
	OUT_4C_E <= NOT(PS_F_CH_STATUS_SAMPLE_A_DELAY AND PS_F_CH_SELECT_UNIT_F AND PS_F_CH_NO_STATUS_ON );
	OUT_3C_H <= OUT_DOT_5A;
	OUT_5D_NoPin <= NOT(PS_ANY_LAST_GATE AND PS_F_CYCLE );
	OUT_4D_G_Latch <= NOT(OUT_5D_NoPin AND OUT_3D_A AND MS_F_CH_RESET );
	OUT_3D_A_Latch <= NOT(OUT_4D_G AND OUT_DOT_2D );
	OUT_2D_G <= NOT(MS_F_CH_UNIT_NUMBER_4 );
	OUT_4E_D_Latch <= NOT(OUT_3B_C AND OUT_2I_D AND MS_F_CH_RESET );
	OUT_2E_D <= NOT(OUT_3D_A AND PS_F_CYCLE AND PS_LOGIC_GATE_E_OR_V );
	OUT_5F_G <= NOT(PS_F_CH_END_ADDR_TRF_1301 AND PS_1ST_CLOCK_PULSE_CLAMPED_A );
	OUT_4F_C_Latch <= NOT(MS_F_CH_RESET AND OUT_3F_K );
	OUT_3F_K_Latch <= NOT(OUT_5F_G AND OUT_4F_C );
	OUT_2F_E_Latch <= NOT(OUT_1F_E AND MS_F_CH_RESET AND MS_LOGIC_GATE_B_OR_S );
	OUT_1F_E_Latch <= NOT(OUT_2E_D AND OUT_2F_E );
	OUT_5G_G <= NOT(OUT_2A_C AND OUT_3F_K AND PS_F_CH_INT_END_OF_XFER_DELAYED );
	OUT_4G_R <= NOT OUT_2I_D;
	OUT_3G_F <= NOT OUT_DOT_4G;
	OUT_5H_G <= NOT(MS_F_CH_UNIT_NUMBER_4 AND MS_F1_REG_FULL AND MS_F2_REG_FULL );
	OUT_4H_C <= NOT(OUT_DOT_5H AND MS_1311_F_CH_END_ADDR_TRF );

	SMS_DEY_3H: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEOFF => OUT_2H_C,	-- Pin E
		ACRESET => PS_1ST_CLOCK_PULSE_CLAMPED_A,	-- Pin A
		DCRFORCE => OUT_3G_F,	-- Pin T
		GATEON => OUT_2I_D,	-- Pin K
		ACSET => PS_1ST_CLOCK_PULSE_CLAMPED_A,	-- Pin H
		DCRESET => MS_F_CH_RESET,	-- Pin P
		OUTOFF => OUT_3H_B,
		OUTON => OUT_3H_F,
		GROUND => OPEN,
		DCSFORCE => OPEN );

	OUT_2H_C <= NOT OUT_3H_B;
	OUT_2I_D <= NOT OUT_3H_F;
	OUT_DOT_5A <= OUT_5A_G OR OUT_5B_P OR OUT_5C_C;
	OUT_DOT_4A <= OUT_4A_C OR OUT_4B_P;
	OUT_DOT_4G <= OUT_4G_R OR OUT_4H_C;
	OUT_DOT_5H <= OUT_5G_G OR OUT_5H_G;
	OUT_DOT_5B <= MS_F_CH_INPUT_MODE_STAR_1301_STAR OR MS_F_CH_INPUT_MODE_STAR_1311_STAR;
	OUT_DOT_2D <= OUT_4C_E OR OUT_2D_G;

	PS_F_CH_2ND_ADDR_TRF <= OUT_2A_C;
	MS_F_CH_2ND_ADDR_TRF <= OUT_2B_R;
	MS_COMP_DISABLE_CYCLE_STAR_FILE_F_CH <= OUT_1B_C;
	MC_1301_START_GATE_STAR_F_CH <= OUT_3C_H;
	MC_1405_START_GATE_STAR_F_CH <= OUT_3C_H;
	MS_F_CH_1ST_CHAR_2ND_ADDR <= OUT_2F_E;
	PS_F_CH_END_OF_2ND_ADDR_TRF <= OUT_2H_C;
	MS_F_CH_END_OF_2ND_ADDR_TRF <= OUT_2I_D;

	Latch_5A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5A_G_Latch,
		Q => OUT_5A_G,
		QBar => OPEN );

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_C_Latch,
		Q => OUT_4A_C,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_C_Latch,
		Q => OUT_3B_C,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_G_Latch,
		Q => OUT_4D_G,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_A_Latch,
		Q => OUT_3D_A,
		QBar => OPEN );

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_D_Latch,
		Q => OUT_4E_D,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_C_Latch,
		Q => OUT_4F_C,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_K_Latch,
		Q => OUT_3F_K,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_E_Latch,
		Q => OUT_2F_E,
		QBar => OPEN );

	Latch_1F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1F_E_Latch,
		Q => OUT_1F_E,
		QBar => OPEN );


end;
