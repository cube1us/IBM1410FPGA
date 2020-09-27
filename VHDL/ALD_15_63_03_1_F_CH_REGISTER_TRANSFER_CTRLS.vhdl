-- VHDL for IBM SMS ALD page 15.63.03.1
-- Title: F CH REGISTER TRANSFER CTRLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/26/2020 7:28:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MC_TAPE_WRITE_STROBE:	 in STD_LOGIC;
		PS_F_CH_SELECT_TAPE:	 in STD_LOGIC;
		MC_TAPE_READ_STROBE:	 in STD_LOGIC;
		MC_1301_STROBE_F_CH:	 in STD_LOGIC;
		MS_F_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		MC_SET_FCH_STROB_TR_E_FR_FEATS:	 in STD_LOGIC;
		TW_SET_FCH_STROB_TR_E_FR_FEATS:	 in STD_LOGIC;
		MC_1405_STROBE_F_CH:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_SET_F1_REG:	 in STD_LOGIC;
		MS_F_CH_RESET_1:	 in STD_LOGIC;
		PS_F2_REG_FULL:	 in STD_LOGIC;
		PS_RESET_F2_FULL_LATCH:	 in STD_LOGIC;
		MS_F1_REG_FULL:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_CLAMPED_A:	 in STD_LOGIC;
		MS_F_CH_STROBE_TRIGGER:	 out STD_LOGIC;
		PS_F_CH_STROBE_TRIGGER:	 out STD_LOGIC;
		MS_F_CH_CLOCKED_STROBE_OUTPUT:	 out STD_LOGIC;
		MS_F_CH_CLOCKED_STROBE_INPUT:	 out STD_LOGIC);
end ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS;

architecture behavioral of ALD_15_63_03_1_F_CH_REGISTER_TRANSFER_CTRLS is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_4A_A: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_2B_B: STD_LOGIC;
	signal OUT_5C_L: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_3D_F: STD_LOGIC;
	signal OUT_3D_B: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_1F_P: STD_LOGIC;
	signal OUT_5G_K: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_1G_B: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_1H_D: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;

begin

	OUT_5A_C <= NOT(PS_F_CH_SELECT_TAPE AND PS_F_CH_OUTPUT_MODE );
	OUT_4A_A <= NOT(OUT_5A_C OR MC_TAPE_WRITE_STROBE );
	OUT_5B_G <= NOT(PS_F_CH_SELECT_TAPE AND PS_F_CH_INPUT_MODE );
	OUT_4B_C <= NOT(OUT_5B_G OR MC_TAPE_READ_STROBE );
	OUT_3B_D <= NOT OUT_DOT_4B;
	OUT_2B_B <= NOT OUT_3B_D;
	OUT_5C_L <= NOT(MC_SET_FCH_STROB_TR_E_FR_FEATS OR TW_SET_FCH_STROB_TR_E_FR_FEATS );
	OUT_4C_B <= NOT(OUT_DOT_5D OR MS_F_CH_SELECT_UNIT_F );

	SMS_DEY_3D: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACSET => OUT_2B_B,	-- Pin H
		DCRESET => MS_F_CH_RESET_1,	-- Pin P
		DCRFORCE => OUT_1F_P,	-- Pin T
		OUTON => OUT_3D_F,
		OUTOFF => OUT_3D_B,
		ACRESET => OPEN,
		GATEOFF => OPEN,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		GATEON => OPEN );

	OUT_2D_D <= NOT OUT_3D_F;
	OUT_5E_C <= NOT(PS_F_CH_INPUT_MODE AND PS_SET_F1_REG );
	OUT_2E_C <= NOT OUT_3D_B;
	OUT_3F_C <= NOT(OUT_1H_D AND PS_F2_REG_FULL AND PS_F_CH_OUTPUT_MODE );
	OUT_1F_P <= NOT(OUT_5E_C AND OUT_5G_K );
	OUT_5G_K <= NOT(PS_F_CH_OUTPUT_MODE AND PS_RESET_F2_FULL_LATCH );
	OUT_3G_E <= NOT(OUT_1H_D AND PS_F_CH_INPUT_MODE AND MS_F1_REG_FULL );
	OUT_1G_B <= NOT OUT_2E_C;
	OUT_3H_C <= NOT(MS_F1_REG_FULL AND MS_F1_REG_FULL AND MS_F1_REG_FULL );

	SMS_TAM_2H: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACSET1 => PS_2ND_CLOCK_PULSE_CLAMPED_A,	-- Pin D
		DCRESET => MS_F_CH_RESET_1,	-- Pin H
		DCRFORCE => OUT_1G_B,	-- Pin T
		OUTOFF => OUT_2H_B,
		DCSET => OPEN,
		GATEOFF2 => OPEN,
		ACRESET2 => OPEN,
		OUTON => OPEN,
		ACRESET1 => OPEN,
		GATEOFF1 => OPEN,
		DCSFORCE => OPEN,
		GATEON1 => OPEN,
		ACSET2 => OPEN,
		GATEON2 => OPEN );

	OUT_1H_D <= NOT OUT_2H_B;
	OUT_DOT_3G <= OUT_3G_E OR OUT_3H_C;
	OUT_DOT_4B <= OUT_4A_A OR OUT_4B_C OR OUT_5C_L OR OUT_4C_B;
	OUT_DOT_5D <= MC_1301_STROBE_F_CH AND MC_1405_STROBE_F_CH;

	MS_F_CH_STROBE_TRIGGER <= OUT_2D_D;
	PS_F_CH_STROBE_TRIGGER <= OUT_2E_C;
	MS_F_CH_CLOCKED_STROBE_OUTPUT <= OUT_3F_C;
	MS_F_CH_CLOCKED_STROBE_INPUT <= OUT_DOT_3G;


end;
