-- VHDL for IBM SMS ALD page 12.12.06.1
-- Title: C CYCLE LATCH-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:29:39 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_06_1_C_CYCLE_LATCH_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		MS_PROGRAM_RES_OR_S_LOGIC_GATE:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_C_CYCLE_CTRL:	 in STD_LOGIC;
		MS_C_CYCLE_CTRL:	 in STD_LOGIC;
		MS_A_CYCLE:	 in STD_LOGIC;
		MS_C_CYCLE_DOT_NOT_CR_DISABLE:	 out STD_LOGIC;
		PS_C_CYCLE:	 out STD_LOGIC;
		PS_C_CYCLE_1:	 out STD_LOGIC;
		MS_C_CYCLE:	 out STD_LOGIC;
		PS_A_OR_C_CYCLE:	 out STD_LOGIC;
		LAMP_11C8C15:	 out STD_LOGIC;
		LAMP_15A1C10:	 out STD_LOGIC);
end ALD_12_12_06_1_C_CYCLE_LATCH_ACC;

architecture behavioral of ALD_12_12_06_1_C_CYCLE_LATCH_ACC is 

	signal OUT_1A_C: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_5D_F: STD_LOGIC;
	signal OUT_5D_F_Latch: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_4D_NoPin_Latch: STD_LOGIC;
	signal OUT_1D_F: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_5F_K: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_2G_P: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_2I_D: STD_LOGIC;

begin

	OUT_1A_C <= NOT(MS_CONTROL_REG_DISABLE AND OUT_2B_D );
	OUT_2B_D <= NOT OUT_5D_F;
	OUT_5D_F_Latch <= NOT(MS_PROGRAM_RES_OR_S_LOGIC_GATE AND OUT_5F_K AND OUT_4D_NoPin );
	OUT_4D_NoPin_Latch <= NOT(OUT_5D_F AND OUT_5E_C );
	OUT_1D_F <= NOT OUT_3F_E;
	OUT_5E_C <= NOT(PS_LOGIC_GATE_B_1 AND PS_C_CYCLE_CTRL );
	OUT_5F_K <= NOT(PS_LOGIC_GATE_B_1 AND MS_C_CYCLE_CTRL );
	OUT_3F_E <= NOT OUT_4D_NoPin;
	OUT_2G_P <= NOT(OUT_3F_E AND MS_A_CYCLE );
	OUT_2H_D <= NOT OUT_3F_E;
	LAMP_11C8C15 <= OUT_2H_D;
	OUT_2I_D <= NOT OUT_3F_E;
	LAMP_15A1C10 <= OUT_2I_D;

	MS_C_CYCLE_DOT_NOT_CR_DISABLE <= OUT_1A_C;
	PS_C_CYCLE <= OUT_2B_D;
	PS_C_CYCLE_1 <= OUT_1D_F;
	MS_C_CYCLE <= OUT_3F_E;
	PS_A_OR_C_CYCLE <= OUT_2G_P;

	Latch_5D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5D_F_Latch,
		Q => OUT_5D_F,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_NoPin_Latch,
		Q => OUT_4D_NoPin,
		QBar => OPEN );


end;