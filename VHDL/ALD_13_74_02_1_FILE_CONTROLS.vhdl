-- VHDL for IBM SMS ALD page 13.74.02.1
-- Title: FILE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/17/2020 12:26:02 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_74_02_1_FILE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		PS_FILE_OP:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		MS_E_CH_SELECT_AND_R_B_C_ON:	 in STD_LOGIC;
		MS_F_CH_SELECT_AND_RBC_ON:	 in STD_LOGIC;
		MC_E_CH_FILE_DIGIT_RING_7:	 in STD_LOGIC;
		MS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		MC_F_CH_FILE_DIGIT_RING_7:	 in STD_LOGIC;
		MS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_E_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		MS_RBC_INLK_CHECK:	 out STD_LOGIC;
		PS_FILE_RING_7_LATCH:	 out STD_LOGIC;
		MS_FILE_RING_7_LATCH:	 out STD_LOGIC;
		LAMP_15A1E21:	 out STD_LOGIC);
end ALD_13_74_02_1_FILE_CONTROLS;

architecture behavioral of ALD_13_74_02_1_FILE_CONTROLS is 

	signal OUT_4A_K: STD_LOGIC;
	signal OUT_4B_P: STD_LOGIC;
	signal OUT_2B_K: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_5D_B: STD_LOGIC;
	signal OUT_5E_A: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_3G_C_Latch: STD_LOGIC;
	signal OUT_2G_K: STD_LOGIC;
	signal OUT_2G_K_Latch: STD_LOGIC;
	signal OUT_1G_K: STD_LOGIC;
	signal OUT_3H_P: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_4A_K <= NOT(PS_ERROR_SAMPLE AND PS_FILE_OP );
	OUT_4B_P <= NOT(PS_I_RING_6_TIME AND OUT_5C_G );
	OUT_2B_K <= NOT OUT_DOT_4A;
	LAMP_15A1E21 <= OUT_2B_K;
	OUT_5C_G <= NOT(MS_E_CH_SELECT_AND_R_B_C_ON AND MS_F_CH_SELECT_AND_RBC_ON );
	OUT_5D_B <= NOT(MC_E_CH_FILE_DIGIT_RING_7 OR MS_PERCENT_OR_COML_AT );
	OUT_5E_A <= NOT(MC_F_CH_FILE_DIGIT_RING_7 OR MS_LOZENGE_OR_ASTERISK );
	OUT_3F_C <= NOT(OUT_DOT_4E AND PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN AND PS_LOGIC_GATE_F_1 );
	OUT_3G_C_Latch <= NOT(MS_E_CH_STATUS_SAMPLE_A_DELAY AND OUT_2G_K );
	OUT_2G_K_Latch <= NOT(OUT_3F_C AND OUT_DOT_3G );
	OUT_1G_K <= OUT_2G_K;
	OUT_3H_P <= NOT(MS_F_CH_STATUS_SAMPLE_A_DELAY AND MS_PROGRAM_RESET_3 );
	OUT_DOT_4A <= OUT_4A_K OR OUT_4B_P;
	OUT_DOT_4E <= OUT_5D_B OR OUT_5E_A;
	OUT_DOT_3G <= OUT_3G_C OR OUT_3H_P;

	PS_FILE_RING_7_LATCH <= OUT_1G_K;
	MS_RBC_INLK_CHECK <= OUT_DOT_4A;
	MS_FILE_RING_7_LATCH <= OUT_DOT_3G;

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_C_Latch,
		Q => OUT_3G_C,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_K_Latch,
		Q => OUT_2G_K,
		QBar => OPEN );


end;