-- VHDL for IBM SMS ALD page 15.62.05.1
-- Title: E CH REGISTER TRANSFER CTRL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/25/2020 8:31:49 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B_OR_S:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F:	 in STD_LOGIC;
		PS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		MS_RES_E2_FULL_AT_F_OR_K_OPS:	 in STD_LOGIC;
		MS_E_CH_CLOCKED_STROBE_OUTPUT:	 in STD_LOGIC;
		PS_EARLY_LAST_GATE_I_O:	 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 in STD_LOGIC;
		PS_INPUT_CYCLE_DOT_LOAD:	 in STD_LOGIC;
		MS_E_CH_RESET_1:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_21:	 out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_21:	 out STD_LOGIC;
		MS_RESET_E2_FULL_LATCH:	 out STD_LOGIC;
		PS_RESET_E2_FULL_LATCH:	 out STD_LOGIC);
end ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL;

architecture behavioral of ALD_15_62_05_1_E_CH_REGISTER_TRANSFER_CTRL is 

	signal OUT_5A_F: STD_LOGIC;
	signal OUT_3A_B: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_3B_R: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_5D_D: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_5F_E: STD_LOGIC;
	signal OUT_3F_R: STD_LOGIC;
	signal OUT_2F_B: STD_LOGIC;
	signal OUT_5G_P: STD_LOGIC;
	signal OUT_2G_F: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_1G_D: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_DOT_5C: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;
	signal OUT_DOT_3F: STD_LOGIC;

begin

	OUT_5A_F <= NOT PS_2ND_CLOCK_PULSE_2;
	OUT_3A_B <= NOT OUT_3B_R;
	OUT_5B_G <= NOT(PS_M_OR_L_OP_CODES AND PS_E_CH_SELECT_UNIT_1 );
	OUT_3B_R <= NOT PS_1ST_CLOCK_PULSE_1;
	OUT_5C_G <= NOT(PS_LOGIC_GATE_EARLY_B_OR_S AND PS_I_RING_6_TIME AND PS_PERCENT_OR_COML_AT );
	OUT_3C_C <= NOT OUT_5A_F;
	OUT_5D_D <= NOT(PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN AND PS_LOGIC_GATE_EARLY_F AND PS_PERCENT_OR_COML_AT );
	OUT_3D_C <= NOT(OUT_5D_D AND MS_RES_E2_FULL_AT_F_OR_K_OPS );
	OUT_3E_C <= NOT(MS_E_CH_CLOCKED_STROBE_OUTPUT AND OUT_DOT_5C AND OUT_DOT_5F );
	OUT_5F_E <= NOT(PS_EARLY_LAST_GATE_I_O AND PS_E_CYCLE AND PS_INPUT_CYCLE_NOT_LAST_INPUT );
	OUT_3F_R <= NOT OUT_1G_D;
	OUT_2F_B <= NOT OUT_DOT_3F;
	OUT_5G_P <= NOT(PS_INPUT_CYCLE_DOT_LOAD );

	SMS_DEY_2G: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACSET => OUT_3A_B,	-- Pin H
		GATEON => '1',	-- Pin K
		ACRESET => OUT_3C_C,	-- Pin A
		DCRESET => MS_E_CH_RESET_1,	-- Pin P
		GATEOFF => '1',	-- Pin E
		DCRFORCE => OUT_2F_B,	-- Pin T
		OUTON => OUT_2G_F,
		OUTOFF => OUT_2G_B,
		GROUND => OPEN,
		DCSFORCE => OPEN );

	OUT_1G_D <= NOT OUT_2G_F;
	OUT_1H_C <= NOT OUT_2G_B;
	OUT_DOT_5C <= OUT_5B_G OR OUT_5C_G;
	OUT_DOT_5F <= OUT_5F_E OR OUT_5G_P;
	OUT_DOT_3F <= OUT_3D_C OR OUT_3E_C OR OUT_3F_R;

	PS_1ST_CLOCK_PULSE_21 <= OUT_3A_B;
	PS_2ND_CLOCK_PULSE_21 <= OUT_3C_C;
	MS_RESET_E2_FULL_LATCH <= OUT_1G_D;
	PS_RESET_E2_FULL_LATCH <= OUT_1H_C;


end;
