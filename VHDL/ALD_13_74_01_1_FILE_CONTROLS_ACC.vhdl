-- VHDL for IBM SMS ALD page 13.74.01.1
-- Title: FILE CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/16/2020 4:36:52 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_74_01_1_FILE_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		PS_NO_SCAN:	 in STD_LOGIC;
		PS_B_CH_NOT_GROUP_MARK_WM:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		MS_FILE_RING_7_LATCH:	 in STD_LOGIC;
		MS_B_CH_GROUP_MARK_DOT_WM:	 in STD_LOGIC;
		PS_UNITS_OR_BODY_LATCH:	 in STD_LOGIC;
		PS_D_CYCLE:	 in STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_SCAN:	 in STD_LOGIC;
		PS_2ND_SCAN:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		MS_FILE_OP:	 out STD_LOGIC;
		MS_FILE_OP_STAR_1405:	 out STD_LOGIC;
		PS_FILE_OP:	 out STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN:	 out STD_LOGIC;
		MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE:	 out STD_LOGIC;
		MS_FILE_OP_TAKE_2ND_SCAN_CYCLE:	 out STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_U_OR_Y:	 out STD_LOGIC;
		MS_FILE_OP_TAKE_EXTENSION_CYCLE:	 out STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE:	 out STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 out STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 out STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_EXTENSION:	 out STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_EXTENSION:	 out STD_LOGIC);
end ALD_13_74_01_1_FILE_CONTROLS_ACC;

architecture behavioral of ALD_13_74_01_1_FILE_CONTROLS_ACC is 

	signal OUT_4A_C: STD_LOGIC;
	signal OUT_3A_C: STD_LOGIC;
	signal OUT_5B_E: STD_LOGIC;
	signal OUT_4B_A: STD_LOGIC;
	signal OUT_5C_D: STD_LOGIC;
	signal OUT_4C_R: STD_LOGIC;
	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_2D_R: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_5F_G: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_1F_E: STD_LOGIC;
	signal OUT_5G_F: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_4H_B: STD_LOGIC;
	signal OUT_3H_NoPin: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_1H_D: STD_LOGIC;
	signal OUT_3I_H: STD_LOGIC;
	signal OUT_2I_A: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;

begin

	OUT_4A_C <= NOT(OUT_4B_A );
	OUT_3A_C <= NOT OUT_4B_A;
	OUT_5B_E <= NOT(PS_E_CH_SELECT_UNIT_F AND PS_PERCENT_OR_COML_AT AND PS_M_OR_L_OP_CODES );

	SMS_AEK_4B: entity SMS_AEK
	    port map (
		IN1 => OUT_5B_E,	-- Pin F
		IN2 => OUT_4C_R,	-- Pin G
		OUT1 => OUT_4B_A );

	OUT_5C_D <= NOT(PS_M_OR_L_OP_CODES AND PS_F_CH_SELECT_UNIT_F AND PS_LOZENGE_OR_ASTERISK );
	OUT_4C_R <= NOT OUT_5C_D;
	OUT_3D_NoPin <= NOT(OUT_4B_A AND PS_NO_SCAN AND PS_D_CYCLE );
	OUT_2D_R <= NOT OUT_3D_NoPin;
	OUT_3E_D <= NOT(OUT_4B_A AND PS_LAST_INSN_RO_CYCLE );
	OUT_1E_D <= NOT(OUT_2D_R AND PS_B_CH_NOT_GROUP_MARK_WM AND MS_FILE_RING_7_LATCH );
	OUT_5F_G <= NOT(MS_FILE_RING_7_LATCH AND MS_B_CH_GROUP_MARK_DOT_WM );
	OUT_3F_E <= NOT(OUT_4B_A AND PS_UNITS_OR_BODY_LATCH AND PS_D_CYCLE );
	OUT_1F_E <= NOT(OUT_2D_R AND OUT_5F_G AND PS_UNITS_OR_BODY_LATCH );
	OUT_5G_F <= NOT PS_NO_OR_1ST_OR_2ND_SCAN;
	OUT_4G_F <= NOT OUT_4B_A;
	OUT_4H_B <= NOT PS_D_CYCLE;
	OUT_3H_NoPin <= NOT(OUT_4B_A AND PS_D_CYCLE AND PS_2ND_SCAN );
	OUT_2H_D <= NOT OUT_3H_NoPin;
	OUT_1H_D <= NOT OUT_2H_D;
	OUT_3I_H <= NOT(OUT_4B_A AND PS_D_CYCLE AND PS_EXTENSION_LATCH );
	OUT_2I_A <= NOT OUT_3I_H;
	OUT_DOT_4G <= OUT_5G_F OR OUT_4G_F OR OUT_4H_B;

	MS_FILE_OP_STAR_1405 <= OUT_4A_C;
	MS_FILE_OP <= OUT_3A_C;
	PS_FILE_OP <= OUT_4B_A;
	PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN <= OUT_2D_R;
	MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE <= OUT_3E_D;
	MS_FILE_OP_TAKE_2ND_SCAN_CYCLE <= OUT_1E_D;
	MS_FILE_OP_DOT_D_CY_DOT_U_OR_Y <= OUT_3F_E;
	MS_FILE_OP_TAKE_EXTENSION_CYCLE <= OUT_1F_E;
	PS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= OUT_2H_D;
	MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN <= OUT_1H_D;
	MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= OUT_3I_H;
	PS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= OUT_2I_A;
	MS_FILE_OP_DOT_D_CYCLE <= OUT_DOT_4G;


end;
