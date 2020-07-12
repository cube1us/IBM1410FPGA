-- VHDL for IBM SMS ALD page 12.15.02.1
-- Title: 1* SINGLE CYCLE CONTROL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/4/2020 9:53:57 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STOP_KEY_LATCH:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		PS_START_AUTO_STARTMODE_STAR_AUTS_STAR:	 in STD_LOGIC;
		MS_ERROR_RESTART:	 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		SWITCH_MOM_CONS_START:	 in STD_LOGIC;
		SWITCH_MOM_CE_START:	 in STD_LOGIC;
		MS_START_KEY:	 out STD_LOGIC;
		MS_START_KEY_LATCH_1:	 out STD_LOGIC;
		PS_START_KEY_2:	 out STD_LOGIC;
		MS_START_KEY_LATCH_2:	 out STD_LOGIC);
end ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL;

architecture behavioral of ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL is 

	signal OUT_5B_N: STD_LOGIC;
	signal OUT_5B_T: STD_LOGIC;
	signal OUT_4B_X: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_3B_G_Latch: STD_LOGIC;
	signal OUT_2B_NoPin: STD_LOGIC;
	signal OUT_2B_NoPin_Latch: STD_LOGIC;
	signal OUT_2C_B: STD_LOGIC;
	signal OUT_4D_X: STD_LOGIC;
	signal OUT_2D_H: STD_LOGIC;
	signal OUT_1D_A: STD_LOGIC;
	signal OUT_5F_N: STD_LOGIC;
	signal OUT_5F_T: STD_LOGIC;
	signal OUT_4F_X: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_3F_E_Latch: STD_LOGIC;
	signal OUT_2F_P: STD_LOGIC;
	signal OUT_2F_P_Latch: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_4H_X: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_5B_N <= SWITCH_MOM_CONS_START;
	OUT_5B_T <=  NOT SWITCH_MOM_CONS_START;
	OUT_4B_X <= OUT_5B_N;
	OUT_3B_G_Latch <= NOT(OUT_4B_X AND OUT_2B_NoPin );
	OUT_2B_NoPin_Latch <= NOT(OUT_3B_G AND OUT_4D_X );
	OUT_2C_B <= NOT MS_STOP_KEY_LATCH;
	OUT_4D_X <= OUT_5B_T;
	OUT_2D_H <= NOT(OUT_3B_G AND MS_ERROR_RESTART AND OUT_3F_E );
	OUT_1D_A <= NOT OUT_DOT_2D;
	OUT_5F_N <= SWITCH_MOM_CE_START;
	OUT_5F_T <=  NOT SWITCH_MOM_CE_START;
	OUT_4F_X <= OUT_5F_N;
	OUT_3F_E_Latch <= NOT(OUT_4F_X AND MS_COMPUTER_RESET_1 AND OUT_2F_P );
	OUT_2F_P_Latch <= NOT(OUT_3F_E AND OUT_4H_X );
	OUT_1F_C <= NOT OUT_DOT_1D;
	OUT_4H_X <= OUT_5F_T;
	OUT_DOT_2D <= OUT_2D_H OR PS_START_AUTO_STARTMODE_STAR_AUTS_STAR;
	OUT_DOT_1D <= OUT_2C_B OR OUT_1D_A;

	MS_START_KEY_LATCH_1 <= OUT_4D_X;
	MS_START_KEY_LATCH_2 <= OUT_3F_E;
	PS_START_KEY_2 <= OUT_1F_C;
	MS_START_KEY <= OUT_DOT_1D;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_G_Latch,
		Q => OUT_3B_G,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_NoPin_Latch,
		Q => OUT_2B_NoPin,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_E_Latch,
		Q => OUT_3F_E,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_P_Latch,
		Q => OUT_2F_P,
		QBar => OPEN );


end;