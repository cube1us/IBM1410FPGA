-- VHDL for IBM SMS ALD page 12.12.05.1
-- Title: X CYCLE LATCH-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/18/2020 1:52:09 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_05_1_X_CYCLE_LATCH_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		MS_CONSOLE_SET_START_CND:	 in STD_LOGIC;
		MS_CONS_RESET_START_CONDITION:	 in STD_LOGIC;
		MS_LOGIC_GATE_S:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_X_CYCLE_CTRL:	 in STD_LOGIC;
		MS_X_CYCLE_CTRL:	 in STD_LOGIC;
		MS_X_CYCLE_DOT_NOT_CR_DISABLE:	 out STD_LOGIC;
		PS_X_CYCLE:	 out STD_LOGIC;
		MS_PROGRAM_RES_OR_S_LOGIC_GATE:	 out STD_LOGIC;
		MS_X_CYCLE:	 out STD_LOGIC;
		LAMP_11C8K15:	 out STD_LOGIC;
		LAMP_15A1J10:	 out STD_LOGIC);
end ALD_12_12_05_1_X_CYCLE_LATCH_ACC;

architecture behavioral of ALD_12_12_05_1_X_CYCLE_LATCH_ACC is 

	signal OUT_1A_G: STD_LOGIC;
	signal OUT_1B_A: STD_LOGIC;
	signal OUT_5C_K: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_5E_E: STD_LOGIC;
	signal OUT_5E_E_Latch: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_4E_G_Latch: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_5G_G: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_2H_A: STD_LOGIC;
	signal OUT_2I_A: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
begin
	OUT_1A_G <= NOT(MS_CONTROL_REG_DISABLE AND OUT_1B_A );

	SMS_AEK_1B: entity SMS_AEK
	    port map (
		IN1 => OUT_5E_E,	-- Pin F
		OUT1 => OUT_1B_A,
		IN2 => OPEN );

	OUT_5C_K <= NOT(MS_CONSOLE_SET_START_CND AND MS_CONS_RESET_START_CONDITION );
	OUT_5D_C <= NOT(MS_LOGIC_GATE_S AND MS_PROGRAM_RESET_1 );
	OUT_4D_D <= NOT OUT_DOT_5D;
	OUT_5E_E_Latch <= NOT(OUT_4D_D AND OUT_4E_G AND OUT_5G_G );
	OUT_4E_G_Latch <= NOT(OUT_5E_E AND OUT_5F_NoPin );
	OUT_5F_NoPin <= NOT(PS_LOGIC_GATE_B_1 AND PS_X_CYCLE_CTRL );
	OUT_5G_G <= NOT(PS_LOGIC_GATE_B_1 AND MS_X_CYCLE_CTRL );

	SMS_AEK_3G: entity SMS_AEK
	    port map (
		IN1 => OUT_4E_G,	-- Pin D
		OUT1 => OUT_3G_C,
		IN2 => OPEN );

	OUT_2H_A <= NOT OUT_3G_C;
	LAMP_11C8K15 <= OUT_2H_A;
	OUT_2I_A <= NOT OUT_3G_C;
	LAMP_15A1J10 <= OUT_2I_A;
	OUT_DOT_5D <= OUT_5C_K OR OUT_5D_C;

	MS_X_CYCLE_DOT_NOT_CR_DISABLE <= OUT_1A_G;
	PS_X_CYCLE <= OUT_1B_A;
	MS_PROGRAM_RES_OR_S_LOGIC_GATE <= OUT_4D_D;
	MS_X_CYCLE <= OUT_3G_C;

	Latch_5E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5E_E_Latch,
		Q => OUT_5E_E,
		QBar => OPEN );

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_G_Latch,
		Q => OUT_4E_G,
		QBar => OPEN );


end;
