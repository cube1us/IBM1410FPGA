-- VHDL for IBM SMS ALD page 15.63.05.1
-- Title: F CH REGISTER TRANSFER CTRLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/27/2020 3:34:55 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_63_05_1_F_CH_REGISTER_TRANSFER_CTRLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		PS_GATE_RESET_F2_FULL_STAR_1414_STAR:	 in STD_LOGIC;
		MS_F_CH_CLOCKED_STROBE_OUTPUT:	 in STD_LOGIC;
		PS_INPUT_CYCLE_DOT_LOAD:	 in STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 in STD_LOGIC;
		PS_F_CYCLE:	 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		MS_SET_F2_REG:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		PS_EARLY_LAST_GATE_I_O:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_CLAMPED_A:	 out STD_LOGIC;
		PS_RESET_F2_FULL_LATCH:	 out STD_LOGIC;
		MS_RESET_F2_FULL_LATCH:	 out STD_LOGIC;
		PS_1ST_CLOCK_PULSE_CLAMPED_A:	 out STD_LOGIC;
		PS_SET_F2_REG_DELAYED:	 out STD_LOGIC);
end ALD_15_63_05_1_F_CH_REGISTER_TRANSFER_CTRLS;

architecture behavioral of ALD_15_63_05_1_F_CH_REGISTER_TRANSFER_CTRLS is 

	signal OUT_5B_C: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_2B_R: STD_LOGIC;
	signal OUT_4C_G: STD_LOGIC;
	signal OUT_5D_P: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_2E_B: STD_LOGIC;
	signal OUT_2E_F: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_3F_R: STD_LOGIC;
	signal OUT_1F_D: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_2H_P: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;

begin

	OUT_5B_C <= NOT(PS_FILE_OP_DOT_D_CY_DOT_NO_SCAN AND PS_LOGIC_GATE_EARLY_F AND PS_LOZENGE_OR_ASTERISK );
	OUT_3B_F <= NOT OUT_1F_D;
	OUT_2B_R <= NOT OUT_DOT_3B;
	OUT_4C_G <= NOT(OUT_5B_C AND OUT_DOT_5D AND MS_F_CH_CLOCKED_STROBE_OUTPUT );
	OUT_5D_P <= NOT(PS_INPUT_CYCLE_DOT_LOAD );
	OUT_5E_C <= NOT(PS_EARLY_LAST_GATE_I_O AND PS_INPUT_CYCLE_NOT_LAST_INPUT AND PS_F_CYCLE );
	OUT_4E_D <= NOT PS_2ND_CLOCK_PULSE_2;
	OUT_3E_C <= NOT OUT_4E_D;

	SMS_DEY_2E: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACRESET => OUT_3E_C,	-- Pin A
		DCRESET => MS_F_CH_RESET,	-- Pin P
		GATEOFF => '1',	-- Pin E
		DCRFORCE => OUT_2B_R,	-- Pin T
		ACSET => OUT_3F_R,	-- Pin H
		GATEON => '1',	-- Pin K
		OUTOFF => OUT_2E_B,
		OUTON => OUT_2E_F,
		GROUND => OPEN,
		DCSFORCE => OPEN );

	OUT_1E_C <= NOT OUT_2E_B;
	OUT_3F_R <= NOT OUT_4G_F;
	OUT_1F_D <= NOT OUT_2E_F;
	OUT_4G_F <= NOT PS_1ST_CLOCK_PULSE_1;

	SMS_TAM_2H: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACSET1 => MS_SET_F2_REG,	-- Pin D
		GATEON1 => '1',	-- Pin A
		ACRESET2 => OUT_3F_R,	-- Pin L
		DCRESET => MS_F_CH_RESET,	-- Pin H
		GATEOFF2 => '1',	-- Pin K
		OUTON => OUT_2H_P,
		DCSET => OPEN,
		ACRESET1 => OPEN,
		GATEOFF1 => OPEN,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN,
		OUTOFF => OPEN,
		ACSET2 => OPEN,
		GATEON2 => OPEN );

	OUT_DOT_3B <= OUT_3B_F OR PS_GATE_RESET_F2_FULL_STAR_1414_STAR OR OUT_4C_G;
	OUT_DOT_5D <= OUT_5D_P OR OUT_5E_C;

	PS_2ND_CLOCK_PULSE_CLAMPED_A <= OUT_3E_C;
	PS_RESET_F2_FULL_LATCH <= OUT_1E_C;
	PS_1ST_CLOCK_PULSE_CLAMPED_A <= OUT_3F_R;
	MS_RESET_F2_FULL_LATCH <= OUT_1F_D;
	PS_SET_F2_REG_DELAYED <= OUT_2H_P;


end;
