-- VHDL for IBM SMS ALD page 13.73.02.1
-- Title: F CH FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/16/2020 9:19:54 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_73_02_1_F_CH_FILE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_FILE_OP:	 in STD_LOGIC;
		PS_Q_OR_V_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_I_RING_12_TIME:	 in STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_C_OR_T:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_F_CH_RESET_1:	 in STD_LOGIC;
		PS_BODY_LATCH:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MC_SEEK_TEST_OP_STAR_F_CH_TO_1405:	 out STD_LOGIC;
		MC_SEEK_TEST_OP_STAR_F_CH_TO_1301:	 out STD_LOGIC;
		MC_FILE_STROBE_1ST_ADDR_STAR_F_CH:	 out STD_LOGIC;
		MC_FILE_STROBE_2ND_ADDR_STAR_F_CH:	 out STD_LOGIC;
		MC_FILE_DIGIT_ADVANCE_STAR_F_CH:	 out STD_LOGIC;
		MC_FILE_ADDR_TRF_GATE_STAR_F_CH:	 out STD_LOGIC;
		MS_F_CH_1ST_ADDR_TRANSFER:	 out STD_LOGIC);
end ALD_13_73_02_1_F_CH_FILE_CONTROLS;

architecture behavioral of ALD_13_73_02_1_F_CH_FILE_CONTROLS is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_4A_E: STD_LOGIC;
	signal OUT_2A_H: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_2B_A: STD_LOGIC;
	signal OUT_5C_E: STD_LOGIC;
	signal OUT_2C_E: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_5D_C_Latch: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_4D_G_Latch: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_2F_G: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_2G_H: STD_LOGIC;
	signal OUT_5H_C: STD_LOGIC;
	signal OUT_5H_C_Latch: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_4H_C_Latch: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;

begin

	OUT_5A_C <= NOT(PS_I_RING_12_TIME );
	OUT_4A_E <= NOT(PS_FILE_OP AND PS_Q_OR_V_SYMBOL_OP_MODIFIER AND PS_LOZENGE_OR_ASTERISK );
	OUT_2A_H <= OUT_DOT_4A;
	OUT_4B_D <= NOT(PS_B_TO_LAST_LOGIC_GATE AND PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN AND PS_LOZENGE_OR_ASTERISK );
	OUT_2B_A <= OUT_4B_D;
	OUT_5C_E <= NOT(PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN AND PS_LOGIC_GATE_F_1 AND PS_LOZENGE_OR_ASTERISK );
	OUT_2C_E <= OUT_5D_C;
	OUT_5D_C_Latch <= NOT(MS_LOGIC_GATE_C_OR_T AND MS_F_CH_RESET_1 AND OUT_4D_G );
	OUT_4D_G_Latch <= NOT(OUT_5C_E AND OUT_5D_C );
	OUT_4F_D <= NOT(PS_BODY_LATCH AND PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN AND PS_LOZENGE_OR_ASTERISK );
	OUT_2F_G <= OUT_4F_D;
	OUT_5G_E <= NOT(PS_LOZENGE_OR_ASTERISK AND PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN AND PS_LOGIC_GATE_D_1 );
	OUT_2G_H <= OUT_3H_D;
	OUT_5H_C_Latch <= NOT(MS_F_CH_RESET_1 AND MS_F_CH_STATUS_SAMPLE_A_DELAY AND OUT_4H_C );
	OUT_4H_C_Latch <= NOT(OUT_5G_E AND OUT_5H_C );
	OUT_3H_D <= NOT OUT_4H_C;
	OUT_DOT_4A <= OUT_5A_C OR OUT_4A_E;

	MC_SEEK_TEST_OP_STAR_F_CH_TO_1301 <= OUT_2A_H;
	MC_SEEK_TEST_OP_STAR_F_CH_TO_1405 <= OUT_2A_H;
	MC_FILE_STROBE_1ST_ADDR_STAR_F_CH <= OUT_2B_A;
	MC_FILE_STROBE_2ND_ADDR_STAR_F_CH <= OUT_2C_E;
	MC_FILE_DIGIT_ADVANCE_STAR_F_CH <= OUT_2F_G;
	MC_FILE_ADDR_TRF_GATE_STAR_F_CH <= OUT_2G_H;
	MS_F_CH_1ST_ADDR_TRANSFER <= OUT_3H_D;

	Latch_5D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5D_C_Latch,
		Q => OUT_5D_C,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_G_Latch,
		Q => OUT_4D_G,
		QBar => OPEN );

	Latch_5H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5H_C_Latch,
		Q => OUT_5H_C,
		QBar => OPEN );

	Latch_4H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4H_C_Latch,
		Q => OUT_4H_C,
		QBar => OPEN );


end;
