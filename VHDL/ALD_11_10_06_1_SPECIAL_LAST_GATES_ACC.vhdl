-- VHDL for IBM SMS ALD page 11.10.06.1
-- Title: SPECIAL LAST GATES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:26:06 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_06_1_SPECIAL_LAST_GATES_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_OR_V:	 in STD_LOGIC;
		MS_LOGIC_GATE_W:	 in STD_LOGIC;
		MS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_R:	 in STD_LOGIC;
		PS_EARLY_LAST_GATE_I_O:	 out STD_LOGIC;
		MS_ANY_LAST_GATE:	 out STD_LOGIC;
		PS_ANY_LAST_GATE:	 out STD_LOGIC;
		PS_LOGIC_GATE_Z:	 out STD_LOGIC;
		MS_LOGIC_GATE_Z:	 out STD_LOGIC);
end ALD_11_10_06_1_SPECIAL_LAST_GATES_ACC;

architecture behavioral of ALD_11_10_06_1_SPECIAL_LAST_GATES_ACC is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_2B_K: STD_LOGIC;
	signal OUT_2B_K_Latch: STD_LOGIC;
	signal OUT_1B_F: STD_LOGIC;
	signal OUT_1B_F_Latch: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_3E_B: STD_LOGIC;
	signal OUT_1E_R: STD_LOGIC;
	signal OUT_1F_F: STD_LOGIC;
	signal OUT_3H_H: STD_LOGIC;
	signal OUT_3H_H_Latch: STD_LOGIC;
	signal OUT_4I_E: STD_LOGIC;
	signal OUT_4I_E_Latch: STD_LOGIC;
	signal OUT_3I_F: STD_LOGIC;
	signal OUT_3I_F_Latch: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;

begin

	OUT_4A_G <= NOT(PS_2ND_CLOCK_PULSE_3 AND PS_LOGIC_GATE_E_OR_V );
	OUT_2B_K_Latch <= NOT(OUT_DOT_1B AND OUT_4C_C );
	OUT_1B_F_Latch <= NOT OUT_2B_K;
	OUT_4C_C <= NOT(OUT_5D_C AND PS_2ND_CLOCK_PULSE_3 );
	OUT_1C_D <= NOT OUT_4A_G;
	OUT_5D_C <= NOT PS_LOGIC_GATE_E_OR_V;
	OUT_1D_C <= NOT OUT_DOT_1E;
	OUT_3E_B <= NOT MS_LOGIC_GATE_W;
	OUT_1E_R <= NOT MS_LOGIC_GATE_W;
	OUT_1F_F <= NOT MS_LAST_LOGIC_GATE_1;

	SMS_AEK_3H: entity SMS_AEK
	    port map (
		IN2 => OUT_DOT_3E,	-- Pin B
		IN1 => MS_LAST_LOGIC_GATE_1,	-- Pin P
		OUT1 => OUT_3H_H_Latch );

	OUT_4I_E_Latch <= NOT(OUT_3H_H AND MS_LOGIC_GATE_A_1 AND MS_LOGIC_GATE_R );
	OUT_3I_F_Latch <= NOT OUT_4I_E;
	OUT_2I_C <= NOT OUT_3H_H;
	OUT_DOT_1B <= OUT_1B_F OR OUT_1C_D;
	OUT_DOT_1E <= OUT_1E_R OR OUT_1F_F;
	OUT_DOT_3E <= OUT_3E_B OR OUT_3I_F;

	MS_ANY_LAST_GATE <= OUT_1D_C;
	PS_LOGIC_GATE_Z <= OUT_3H_H;
	MS_LOGIC_GATE_Z <= OUT_2I_C;
	PS_EARLY_LAST_GATE_I_O <= OUT_DOT_1B;
	PS_ANY_LAST_GATE <= OUT_DOT_1E;

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_K_Latch,
		Q => OUT_2B_K,
		QBar => OPEN );

	Latch_1B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1B_F_Latch,
		Q => OUT_1B_F,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_H_Latch,
		Q => OUT_3H_H,
		QBar => OPEN );

	Latch_4I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4I_E_Latch,
		Q => OUT_4I_E,
		QBar => OPEN );

	Latch_3I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3I_F_Latch,
		Q => OUT_3I_F,
		QBar => OPEN );


end;