-- VHDL for IBM SMS ALD page 13.66.09.1
-- Title: F CH TAPE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/9/2020 1:42:07 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_66_09_1_F_CH_TAPE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MC_WRITE_CONDITION_STAR_F_CH:	 in STD_LOGIC;
		PS_F_CH_DISCON_LATCH:	 in STD_LOGIC;
		PS_F_CH_SELECT_TAPE:	 in STD_LOGIC;
		PS_F_CH_SECOND_SAMPLE_B:	 in STD_LOGIC;
		PS_F_CH_TAPE_INDICATOR:	 in STD_LOGIC;
		MS_RESET_END_OF_REEL_IND:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		MS_F_CH_BUSY:	 in STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		MS_F2_REG_FULL:   in STD_LOGIC;
		MC_DISCONNECT_CALL_STAR_F_CH:	 out STD_LOGIC;
		MC_TURN_OFF_TI_STAR_F_CH:	 out STD_LOGIC;
		MC_RESET_TAPE_SEL_REG_STAR_CH_F:	 out STD_LOGIC;
		MC_SET_TAPE_SEL_REG_STAR_CH_F:	 out STD_LOGIC);
end ALD_13_66_09_1_F_CH_TAPE_CONTROLS;

architecture behavioral of ALD_13_66_09_1_F_CH_TAPE_CONTROLS is 

	signal OUT_5B_A: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_1C_H: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_3E_K: STD_LOGIC;
	signal OUT_3E_K_Latch: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_2E_C_Latch: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_2F_H: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_4H_E: STD_LOGIC;
	signal OUT_2H_E: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;

begin

	OUT_5B_A <= NOT(MC_WRITE_CONDITION_STAR_F_CH );
	-- OUT_3C_D <= NOT(OUT_5B_A AND PS_F_CH_DISCON_LATCH AND PS_F_CH_SELECT_TAPE );
	OUT_3C_D <= NOT(OUT_5B_A AND PS_F_CH_DISCON_LATCH AND PS_F_CH_SELECT_TAPE and MS_F2_REG_FULL );  -- Fix issue with tape write to end of memory WLR
	OUT_1C_H <= OUT_3C_D;
	OUT_4D_C <= NOT(PS_F_CH_SELECT_TAPE AND PS_F_CH_SECOND_SAMPLE_B );
	OUT_3E_K_Latch <= NOT(PS_F_CH_TAPE_INDICATOR AND OUT_2E_C );
	OUT_2E_C_Latch <= NOT(OUT_4D_C AND OUT_3E_K AND MS_RESET_END_OF_REEL_IND );
	OUT_4F_C <= NOT(PS_I_RING_6_OR_1401_AND_8_TIME AND PS_LOGIC_GATE_C_1 );
	OUT_2F_H <= OUT_3E_K;
	OUT_4G_D <= NOT(PS_F_CH_SELECT_TAPE AND MS_F_CH_BUSY AND PS_LOZENGE_OR_ASTERISK );
	OUT_2G_A <= OUT_DOT_4G;
	OUT_4H_E <= NOT(PS_LOZENGE_OR_ASTERISK AND MS_F_CH_BUSY AND PS_F_CH_SELECT_TAPE );
	OUT_2H_E <= OUT_DOT_4H;
	OUT_4I_G <= NOT(PS_I_RING_6_OR_1401_AND_8_TIME AND PS_LAST_LOGIC_GATE_1 );
	OUT_DOT_4G <= OUT_4F_C OR OUT_4G_D;
	OUT_DOT_4H <= OUT_4H_E OR OUT_4I_G;

	MC_DISCONNECT_CALL_STAR_F_CH <= OUT_1C_H;
	MC_TURN_OFF_TI_STAR_F_CH <= OUT_2F_H;
	MC_RESET_TAPE_SEL_REG_STAR_CH_F <= OUT_2G_A;
	MC_SET_TAPE_SEL_REG_STAR_CH_F <= OUT_2H_E;

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_K_Latch,
		Q => OUT_3E_K,
		QBar => OPEN );

	Latch_2E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2E_C_Latch,
		Q => OUT_2E_C,
		QBar => OPEN );


end;
