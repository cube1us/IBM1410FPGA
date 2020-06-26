-- VHDL for IBM SMS ALD page 12.12.20.1
-- Title: A AND C CYCLE CTRL LATCHES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:30:53 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_20_1_A_AND_C_CYCLE_CTRL_LATCHES_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_SET_A_CYCLE_CTRL:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_SET_C_CYCLE_CTRL:	 in STD_LOGIC;
		MS_D_CYCLE_CTRL:	 in STD_LOGIC;
		PS_A_CYCLE_CTRL:	 out STD_LOGIC;
		MS_A_CYCLE_CTRL:	 out STD_LOGIC;
		PS_C_CYCLE_CTRL:	 out STD_LOGIC;
		MS_C_CYCLE_CTRL:	 out STD_LOGIC;
		PS_C_OR_D_CYCLE_CTRL:	 out STD_LOGIC);
end ALD_12_12_20_1_A_AND_C_CYCLE_CTRL_LATCHES_ACC;

architecture behavioral of ALD_12_12_20_1_A_AND_C_CYCLE_CTRL_LATCHES_ACC is 

	signal OUT_2A_D: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_F_Latch: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin_Latch: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_4G_F_Latch: STD_LOGIC;
	signal OUT_3G_NoPin: STD_LOGIC;
	signal OUT_3G_NoPin_Latch: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_2H_E: STD_LOGIC;
	signal OUT_2I_K: STD_LOGIC;

begin

	OUT_2A_D <= NOT OUT_4B_F;
	OUT_4B_F_Latch <= NOT(MS_PROGRAM_RESET_1 AND MS_LOGIC_GATE_D_1 AND OUT_3B_NoPin );
	OUT_3B_NoPin_Latch <= NOT(OUT_4B_F AND OUT_4C_C );
	OUT_2B_E <= NOT OUT_3B_NoPin;
	OUT_4C_C <= NOT(PS_SET_A_CYCLE_CTRL AND PS_NEXT_TO_LAST_LOGIC_GATE );
	OUT_2F_D <= NOT OUT_4G_F;
	OUT_4G_F_Latch <= NOT(MS_PROGRAM_RESET_1 AND MS_LOGIC_GATE_D_1 AND OUT_3G_NoPin );
	OUT_3G_NoPin_Latch <= NOT(OUT_4G_F AND OUT_4H_C );
	OUT_4H_C <= NOT(PS_NEXT_TO_LAST_LOGIC_GATE AND PS_SET_C_CYCLE_CTRL );
	OUT_2H_E <= NOT OUT_3G_NoPin;
	OUT_2I_K <= NOT(OUT_2H_E AND MS_D_CYCLE_CTRL );

	PS_A_CYCLE_CTRL <= OUT_2A_D;
	MS_A_CYCLE_CTRL <= OUT_2B_E;
	PS_C_CYCLE_CTRL <= OUT_2F_D;
	MS_C_CYCLE_CTRL <= OUT_2H_E;
	PS_C_OR_D_CYCLE_CTRL <= OUT_2I_K;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_F_Latch,
		Q => OUT_4B_F,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_NoPin_Latch,
		Q => OUT_3B_NoPin,
		QBar => OPEN );

	Latch_4G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4G_F_Latch,
		Q => OUT_4G_F,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_NoPin_Latch,
		Q => OUT_3G_NoPin,
		QBar => OPEN );


end;
