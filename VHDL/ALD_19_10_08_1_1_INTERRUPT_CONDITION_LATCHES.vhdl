-- VHDL for IBM SMS ALD page 19.10.08.1
-- Title: 1* INTERRUPT CONDITION LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/15/2020 10:54:22 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_19_10_08_1_1_INTERRUPT_CONDITION_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		MS_I_OP_DOT_I_CYCLE_DOT_C:	 in STD_LOGIC;
		MC_ANY_SEEK_COMP_STAR_E_CH_1405:	 in STD_LOGIC;
		MC_ANY_SEEK_COMP_STAR_E_CH_1301:	 in STD_LOGIC;
		MS_PROGRAM_RESET_6:	 in STD_LOGIC;
		MC_ANY_SEEK_COMP_STAR_F_CH_1301:	 in STD_LOGIC;
		MC_ANY_SEEK_COMP_STAR_F_CH_1405:	 in STD_LOGIC;
		MS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_I_CYCLE_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_I_OP_DOT_I_CYCLE_DOT_E_STAR_AUTS_STAR:	 in STD_LOGIC;
		MS_E_CH_SEEK_INTR_COND:	 out STD_LOGIC;
		PS_E_CH_SEEK_INTR_COND:	 out STD_LOGIC;
		MS_F_CH_SEEK_INTR_COND:	 out STD_LOGIC;
		PS_F_CH_SEEK_INTR_COND:	 out STD_LOGIC;
		PS_I_OP_DOT_I_CYCLE_DOT_E:	 out STD_LOGIC);
end ALD_19_10_08_1_1_INTERRUPT_CONDITION_LATCHES;

architecture behavioral of ALD_19_10_08_1_1_INTERRUPT_CONDITION_LATCHES is 

	signal OUT_4C_D: STD_LOGIC;
	signal OUT_4C_D_Latch: STD_LOGIC;
	signal OUT_3C_G: STD_LOGIC;
	signal OUT_3C_G_Latch: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_1C_R: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_4G_E: STD_LOGIC;
	signal OUT_4G_E_Latch: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_3G_C_Latch: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_1G_R: STD_LOGIC;
	signal OUT_4H_K: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_4I_R: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;
	signal OUT_DOT_1I: STD_LOGIC;

begin

	OUT_4C_D_Latch <= NOT(OUT_DOT_3C AND MS_I_OP_DOT_I_CYCLE_DOT_C AND MS_PROGRAM_RESET_6 );
	OUT_3C_G_Latch <= NOT(OUT_4C_D );
	OUT_2C_C <= NOT(MS_E_CH_IN_PROCESS AND OUT_DOT_3C );
	OUT_1C_R <= NOT(OUT_2C_C );
	OUT_3D_A <= NOT(OUT_DOT_5D OR OUT_4H_K );
	OUT_3F_C <= NOT(OUT_DOT_5F OR OUT_4H_K );
	OUT_4G_E_Latch <= NOT(OUT_DOT_3G AND MS_PROGRAM_RESET_6 AND MS_I_OP_DOT_I_CYCLE_DOT_C );
	OUT_3G_C_Latch <= NOT(OUT_4G_E );
	OUT_2G_C <= NOT(OUT_DOT_3G AND MS_F_CH_IN_PROCESS );
	OUT_1G_R <= NOT(OUT_2G_C );
	OUT_4H_K <= NOT OUT_DOT_1I;
	OUT_5I_NoPin <= NOT(PS_I_RING_OP_TIME AND PS_I_CYCLE_1 AND PS_LOGIC_GATE_E_1 );
	OUT_4I_R <= NOT OUT_5I_NoPin;
	OUT_DOT_3C <= OUT_3C_G OR OUT_3D_A;
	OUT_DOT_5D <= MC_ANY_SEEK_COMP_STAR_E_CH_1405 AND MC_ANY_SEEK_COMP_STAR_E_CH_1301;
	OUT_DOT_5F <= MC_ANY_SEEK_COMP_STAR_F_CH_1301 AND MC_ANY_SEEK_COMP_STAR_F_CH_1405;
	OUT_DOT_3G <= OUT_3F_C OR OUT_3G_C;
	OUT_DOT_1I <= OUT_4I_R OR PS_I_OP_DOT_I_CYCLE_DOT_E_STAR_AUTS_STAR;

	MS_E_CH_SEEK_INTR_COND <= OUT_2C_C;
	PS_E_CH_SEEK_INTR_COND <= OUT_1C_R;
	MS_F_CH_SEEK_INTR_COND <= OUT_2G_C;
	PS_F_CH_SEEK_INTR_COND <= OUT_1G_R;
	PS_I_OP_DOT_I_CYCLE_DOT_E <= OUT_DOT_1I;

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_D_Latch,
		Q => OUT_4C_D,
		QBar => OPEN );

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_G_Latch,
		Q => OUT_3C_G,
		QBar => OPEN );

	Latch_4G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4G_E_Latch,
		Q => OUT_4G_E,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_C_Latch,
		Q => OUT_3G_C,
		QBar => OPEN );


end;
