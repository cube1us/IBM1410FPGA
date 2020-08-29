-- VHDL for IBM SMS ALD page 14.30.07.1
-- Title: ADDRESS MODIFY CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/29/2020 7:37:36 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_30_07_1_ADDRESS_MODIFY_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_PLUS_ONE_18_LINE:	 in STD_LOGIC;
		MS_RESET_ADDR_MOD_CTRL_LATCH:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ:	 in STD_LOGIC;
		PS_ADDR_MOD_SET_TO_PLUS_ONE:	 in STD_LOGIC;
		PS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_R:	 in STD_LOGIC;
		PS_OVERLAPPED_CYCLE_CTRL:	 in STD_LOGIC;
		MY_1ST_CLOCK_PULSE:	 in STD_LOGIC;
		PY_RESET_ADDR_MOD_LATCHES:	 in STD_LOGIC;
		PS_BLOCK_ADDR_MOD_OR_1_STAR_1412_19:	 in STD_LOGIC;
		PY_MODIFY_BY_ZERO:	 in STD_LOGIC;
		PY_MODIFY_BY_MINUS_ONE:	 in STD_LOGIC;
		MS_MODIFY_BY_PLUS_ONE_LATCH:	 out STD_LOGIC;
		MY_MODIFY_BY_PLUS_ONE:	 out STD_LOGIC;
		PS_SET_MODIFY_CTRL_LATCHES:	 out STD_LOGIC);
end ALD_14_30_07_1_ADDRESS_MODIFY_CONTROLS_ACC;

architecture behavioral of ALD_14_30_07_1_ADDRESS_MODIFY_CONTROLS_ACC is 

	signal OUT_5A_R: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4B_C_Latch: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3B_D_Latch: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_2B_E_Latch: STD_LOGIC;
	signal OUT_4C_K: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_3E_G: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_5G_C_Latch: STD_LOGIC;
	signal OUT_4G_L: STD_LOGIC;
	signal OUT_4G_L_Latch: STD_LOGIC;
	signal OUT_3G_L: STD_LOGIC;
	signal OUT_3G_L_Latch: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_5H_P_Latch: STD_LOGIC;
	signal OUT_3H_L: STD_LOGIC;
	signal OUT_3H_L_Latch: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_2H_C_Latch: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;

begin

	OUT_5A_R <= NOT(PS_PLUS_ONE_18_LINE );
	OUT_4B_C_Latch <= NOT(OUT_5A_R AND PS_2ND_CLOCK_PULSE_3_JRJ AND OUT_2H_C );
	OUT_3B_D_Latch <= NOT(OUT_4B_C AND OUT_DOT_2C AND MS_RESET_ADDR_MOD_CTRL_LATCH );
	OUT_2B_E_Latch <= NOT(OUT_3B_D AND OUT_4C_K AND OUT_4D_C );
	OUT_4C_K <= NOT(PS_2ND_CLOCK_PULSE_3_JRJ AND PS_PLUS_ONE_18_LINE );
	OUT_2C_C <= NOT(OUT_4E_C );
	OUT_4D_C <= NOT(PS_2ND_CLOCK_PULSE_3_JRJ AND PS_ADDR_MOD_SET_TO_PLUS_ONE AND PS_LOGIC_GATE_A_1 );
	OUT_4E_C <= NOT(PS_2ND_CLOCK_PULSE_3_JRJ AND PS_LOGIC_GATE_R AND PS_OVERLAPPED_CYCLE_CTRL );
	OUT_3E_G <= NOT(OUT_4G_L );
	OUT_5G_C_Latch <= NOT(OUT_DOT_2C OR MY_1ST_CLOCK_PULSE );
	OUT_4G_L_Latch <= NOT(OUT_5G_C OR OUT_3G_L OR PY_RESET_ADDR_MOD_LATCHES );
	OUT_3G_L_Latch <= NOT(OUT_4G_L OR OUT_5H_P );
	OUT_2G_A <= OUT_3G_L;
	OUT_5H_P_Latch <= NOT(OUT_3B_D OR MY_1ST_CLOCK_PULSE );
	OUT_3H_L_Latch <= NOT(OUT_4G_L OR PY_MODIFY_BY_ZERO OR PY_MODIFY_BY_MINUS_ONE );
	OUT_2H_C_Latch <= NOT(OUT_3H_L );
	OUT_DOT_2C <= OUT_2B_E OR OUT_2C_C;
	OUT_DOT_1G <= OUT_2G_A OR PS_BLOCK_ADDR_MOD_OR_1_STAR_1412_19;

	MS_MODIFY_BY_PLUS_ONE_LATCH <= OUT_3E_G;
	PS_SET_MODIFY_CTRL_LATCHES <= OUT_2H_C;
	MY_MODIFY_BY_PLUS_ONE <= OUT_DOT_1G;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_C_Latch,
		Q => OUT_4B_C,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_D_Latch,
		Q => OUT_3B_D,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_E_Latch,
		Q => OUT_2B_E,
		QBar => OPEN );

	Latch_5G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5G_C_Latch,
		Q => OUT_5G_C,
		QBar => OPEN );

	Latch_4G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4G_L_Latch,
		Q => OUT_4G_L,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_L_Latch,
		Q => OUT_3G_L,
		QBar => OPEN );

	Latch_5H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5H_P_Latch,
		Q => OUT_5H_P,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_L_Latch,
		Q => OUT_3H_L,
		QBar => OPEN );

	Latch_2H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2H_C_Latch,
		Q => OUT_2H_C,
		QBar => OPEN );


end;
