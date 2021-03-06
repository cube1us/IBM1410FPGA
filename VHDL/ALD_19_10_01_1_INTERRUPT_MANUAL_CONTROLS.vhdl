-- VHDL for IBM SMS ALD page 19.10.01.1
-- Title: INTERRUPT MANUAL CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 5:11:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		M36_VOLTS:	 in STD_LOGIC;
		MC_READER_BUSY:	 in STD_LOGIC;
		MC_READER_BUSY_JRJ:	 in STD_LOGIC;
		PS_1403_PRINT_BUFFER_BUSY:	 in STD_LOGIC;
		MC_PUNCH_BUSY:	 in STD_LOGIC;
		MC_PUNCH_BUSY_JRJ:	 in STD_LOGIC;
		MC_PAPER_TAPE_READER_BUSY:	 in STD_LOGIC;
		MC_PAPER_TAPE_READY_BUSY_JRJ:	 in STD_LOGIC;
		MC_I_O_CLOCK_080_090_TIME:	 in STD_LOGIC;
		MC_I_O_CLOCK_080_090_TIME_JRJ:	 in STD_LOGIC;
		MS_PROGRAM_RESET_6:	 in STD_LOGIC;
		SWITCH_ALT_PRIORITY_PL1:	 in STD_LOGIC;
		SWITCH_ALT_PRIORITY_PL2:	 in STD_LOGIC;
		SWITCH_ROT_I_O_UNIT_DK1:	 in STD_LOGIC_VECTOR(5 downTo 0);
		PS_PRIORITY_SW_ON:	 out STD_LOGIC;
		MS_SEL_I_O_FINISH_PULSE:	 out STD_LOGIC;
		LAMP_15A2K03:	 out STD_LOGIC;
		LAMP_15A2K05:	 out STD_LOGIC);
end ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS;

architecture behavioral of ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS is 

	signal OUT_5A_T: STD_LOGIC;
	signal OUT_5B_N: STD_LOGIC;
	signal OUT_5B_T: STD_LOGIC;
	signal OUT_4B_X: STD_LOGIC;
	signal OUT_2B_K: STD_LOGIC;
	signal OUT_2B_K_Latch: STD_LOGIC;
	signal OUT_1B_P: STD_LOGIC;
	signal OUT_1B_P_Latch: STD_LOGIC;
	signal OUT_4C_X: STD_LOGIC;
	signal OUT_4D_X: STD_LOGIC;
	signal OUT_2D_B: STD_LOGIC;
	signal OUT_5E_B: STD_LOGIC;
	signal OUT_5E_K: STD_LOGIC;
	signal OUT_5E_D: STD_LOGIC;
	signal OUT_5E_E: STD_LOGIC;
	signal OUT_4E_X: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_4F_X: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_4G_X: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_1G_K: STD_LOGIC;
	signal OUT_4H_L: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_1H_4: STD_LOGIC;
	signal OUT_4I_P: STD_LOGIC;
	signal OUT_4I_P_Latch: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_2I_C_Latch: STD_LOGIC;
	signal OUT_DOT_5C: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;
	signal OUT_DOT_5H: STD_LOGIC;
	signal OUT_DOT_4I: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;

begin

	OUT_5A_T <=  NOT SWITCH_ALT_PRIORITY_PL1;
	LAMP_15A2K03 <= OUT_5A_T;
	LAMP_15A2K05 <= OUT_5A_T;
	OUT_5B_N <= SWITCH_ALT_PRIORITY_PL2;
	OUT_5B_T <=  NOT SWITCH_ALT_PRIORITY_PL2;
	OUT_4B_X <= OUT_5B_N;
	OUT_2B_K_Latch <= NOT(OUT_4B_X AND OUT_1B_P );
	OUT_1B_P_Latch <= NOT(OUT_2B_K AND OUT_4C_X );
	OUT_4C_X <= OUT_5B_T;
	OUT_4D_X <= OUT_5E_B;
	OUT_2D_B <= NOT(OUT_4D_X OR OUT_DOT_5C );
	OUT_5E_B <= NOT SWITCH_ROT_I_O_UNIT_DK1(2);
	OUT_5E_K <= NOT SWITCH_ROT_I_O_UNIT_DK1(3);
	OUT_5E_D <= NOT SWITCH_ROT_I_O_UNIT_DK1(4);
	OUT_5E_E <= NOT SWITCH_ROT_I_O_UNIT_DK1(5);
	OUT_4E_X <= OUT_5E_K;
	OUT_2E_G <= NOT(OUT_4E_X );
	OUT_1E_C <= NOT(OUT_2E_G AND PS_1403_PRINT_BUFFER_BUSY );
	OUT_4F_X <= OUT_5E_D;
	OUT_2F_C <= NOT(OUT_4F_X OR OUT_DOT_5D );
	OUT_4G_X <= OUT_5E_E;
	OUT_2G_A <= NOT(OUT_4G_X OR OUT_DOT_5F );
	OUT_1G_K <= NOT(OUT_1E_C );
	OUT_4H_L <= NOT(OUT_DOT_5H );
	OUT_3H_G <= NOT(OUT_DOT_2G );
	OUT_1H_4 <= NOT(OUT_3H_G AND OUT_2I_C );
	OUT_4I_P_Latch <= NOT(OUT_2I_C AND MS_PROGRAM_RESET_6 );
	OUT_2I_C_Latch <= NOT(OUT_3H_G AND OUT_DOT_4I );
	OUT_DOT_5C <= MC_READER_BUSY AND MC_READER_BUSY_JRJ;
	OUT_DOT_5D <= MC_PUNCH_BUSY AND MC_PUNCH_BUSY_JRJ;
	OUT_DOT_5F <= MC_PAPER_TAPE_READER_BUSY AND MC_PAPER_TAPE_READY_BUSY_JRJ;
	OUT_DOT_5H <= MC_I_O_CLOCK_080_090_TIME AND MC_I_O_CLOCK_080_090_TIME_JRJ;
	OUT_DOT_4I <= OUT_4H_L OR OUT_4I_P;
	OUT_DOT_2G <= OUT_2D_B OR OUT_2F_C OR OUT_2G_A OR OUT_1G_K;

	PS_PRIORITY_SW_ON <= OUT_1B_P;
	MS_SEL_I_O_FINISH_PULSE <= OUT_1H_4;

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_K_Latch,
		Q => OUT_2B_K,
		QBar => OPEN );

	Latch_1B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1B_P_Latch,
		Q => OUT_1B_P,
		QBar => OPEN );

	Latch_4I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4I_P_Latch,
		Q => OUT_4I_P,
		QBar => OPEN );

	Latch_2I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2I_C_Latch,
		Q => OUT_2I_C,
		QBar => OPEN );


end;
