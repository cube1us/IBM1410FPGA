-- VHDL for IBM SMS ALD page 11.30.01.1
-- Title: SPECIAL LOGIC GATES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:24:08 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_30_01_1_SPECIAL_LOGIC_GATES_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		MS_LOGIC_GATE_EARLY_S:	 in STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B:	 out STD_LOGIC;
		MS_1ST_CLOCK_PULSE_CLAMPED_A:	 out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_F:	 out STD_LOGIC;
		PS_LOGIC_GATE_EARLY_B_OR_S:	 out STD_LOGIC);
end ALD_11_30_01_1_SPECIAL_LOGIC_GATES_ACC;

architecture behavioral of ALD_11_30_01_1_SPECIAL_LOGIC_GATES_ACC is 

	signal OUT_3A_G: STD_LOGIC;
	signal OUT_2A_P: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_2B_H: STD_LOGIC;
	signal OUT_1B_D: STD_LOGIC;
	signal OUT_5C_F: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_1C_C_Latch: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_2D_P: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_1E_H: STD_LOGIC;
	signal OUT_1F_D: STD_LOGIC;
	signal OUT_2G_R: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;

begin

	OUT_3A_G <= NOT(OUT_1C_C AND MS_LOGIC_GATE_A_1 );
	OUT_2A_P <= NOT(OUT_3A_G );

	SMS_DEZ_2B: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEOFF => OUT_1B_D,	-- Pin F
		ACSET => OUT_5C_F,	-- Pin G
		DCRESET => MS_PROGRAM_RESET_3,	-- Pin B
		DCRFORCE => OUT_2A_P,	-- Pin W
		GATEON => OUT_1C_C,	-- Pin A
		OUTOFF => OUT_2B_E,
		OUTON => OUT_2B_H );

	OUT_1B_D <= NOT OUT_2B_E;
	OUT_5C_F <= NOT PS_1ST_CLOCK_PULSE_1;
	OUT_1C_C_Latch <= NOT OUT_2B_H;
	OUT_3D_C <= NOT(OUT_1F_D AND MS_LOGIC_GATE_E_1 );
	OUT_2D_P <= NOT(OUT_3D_C );

	SMS_DEZ_2E: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACSET => OUT_5C_F,	-- Pin R
		GATEON => OUT_1E_H,	-- Pin Q
		DCSET => MS_PROGRAM_RESET_3,	-- Pin K
		DCSFORCE => OUT_2D_P,	-- Pin V
		GATEOFF => OUT_1F_D,	-- Pin L
		OUTON => OUT_2E_D,
		OUTOFF => OUT_2E_C,
		DCRESET => OPEN,
		DCRFORCE => OPEN );


	SMS_AEK_1E: entity SMS_AEK
	    port map (
		IN1 => OUT_2E_D,	-- Pin P
		OUT1 => OUT_1E_H,
		IN2 => OPEN );

	OUT_1F_D <= NOT OUT_2E_C;
	OUT_2G_R <= NOT OUT_1C_C;
	OUT_2H_C <= NOT MS_LOGIC_GATE_EARLY_S;
	OUT_DOT_2G <= OUT_2G_R OR OUT_2H_C;

	PS_LOGIC_GATE_EARLY_B <= OUT_1B_D;
	MS_1ST_CLOCK_PULSE_CLAMPED_A <= OUT_5C_F;
	PS_LOGIC_GATE_EARLY_F <= OUT_1E_H;
	PS_LOGIC_GATE_EARLY_B_OR_S <= OUT_DOT_2G;

	Latch_1C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1C_C_Latch,
		Q => OUT_1C_C,
		QBar => OPEN );


end;