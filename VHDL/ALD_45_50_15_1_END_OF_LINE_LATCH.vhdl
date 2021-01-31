-- VHDL for IBM SMS ALD page 45.50.15.1
-- Title: END OF LINE LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 1/27/2021 2:27:39 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_15_1_END_OF_LINE_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		PS_CONS_PRTR_NOT_BUSY_SET:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_RESET:	 in STD_LOGIC;
		MV_CONS_PRINTER_LAST_COLUMN_SET:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_CONS_PRINTER_END_OF_LINE:	 out STD_LOGIC;
		PS_CONS_PRINTER_END_OF_LINE:	 out STD_LOGIC;
		MS_CONS_PRINTER_LAST_COLUMN:	 out STD_LOGIC);
end ALD_45_50_15_1_END_OF_LINE_LATCH;

architecture behavioral of ALD_45_50_15_1_END_OF_LINE_LATCH is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_5A_C_Latch: STD_LOGIC;
	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_4A_NoPin_Latch: STD_LOGIC;
	signal OUT_3A_F: STD_LOGIC;
	signal OUT_3A_F_Latch: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_1A_E: STD_LOGIC;
	signal OUT_1A_E_Latch: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4B_C_Latch: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_2C_D_Latch: STD_LOGIC;
	signal OUT_1C_P: STD_LOGIC;
	signal OUT_1C_P_Latch: STD_LOGIC;
	signal OUT_5D_K: STD_LOGIC;
	signal OUT_4D_E: STD_LOGIC;
	signal OUT_4D_E_Latch: STD_LOGIC;
	signal OUT_3D_P: STD_LOGIC;
	signal OUT_3D_P_Latch: STD_LOGIC;
	signal OUT_5E_X: STD_LOGIC;
	signal OUT_3E_K: STD_LOGIC;

begin

	OUT_5A_C_Latch <= NOT(PS_CONS_CYCLE_LATCH_SET AND OUT_2C_D );
	OUT_4A_NoPin_Latch <= NOT(OUT_5A_C AND OUT_3A_F AND MS_PROGRAM_RESET_4 );
	OUT_3A_F_Latch <= NOT(OUT_4A_NoPin AND OUT_4B_C AND OUT_4D_E );
	OUT_2A_D <= NOT OUT_3A_F;
	OUT_1A_E_Latch <= NOT OUT_4A_NoPin;
	OUT_4B_C_Latch <= NOT(PS_CONS_CYCLE_LATCH_SET AND PS_KEYBOARD_UNLOCK AND OUT_1C_P );
	OUT_2C_D_Latch <= NOT(OUT_1C_P AND MS_PROGRAM_RESET_4 AND OUT_3D_P );
	OUT_1C_P_Latch <= NOT(OUT_2C_D AND OUT_3E_K );
	OUT_5D_K <= NOT(OUT_5E_X );
	OUT_4D_E_Latch <= NOT(OUT_1C_P AND PS_CONS_CYCLE_LATCH_SET AND PS_CONS_PRTR_NOT_BUSY_SET );
	OUT_3D_P_Latch <= NOT(OUT_1A_E AND PS_CONS_CYCLE_LATCH_RESET );
	OUT_5E_X <= MV_CONS_PRINTER_LAST_COLUMN_SET;
	OUT_3E_K <= NOT(OUT_5D_K AND PS_CONS_PRINTER_STROBE );

	MS_CONS_PRINTER_END_OF_LINE <= OUT_2A_D;
	PS_CONS_PRINTER_END_OF_LINE <= OUT_1A_E;
	MS_CONS_PRINTER_LAST_COLUMN <= OUT_2C_D;

	Latch_5A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5A_C_Latch,
		Q => OUT_5A_C,
		QBar => OPEN );

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_NoPin_Latch,
		Q => OUT_4A_NoPin,
		QBar => OPEN );

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_F_Latch,
		Q => OUT_3A_F,
		QBar => OPEN );

	Latch_1A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1A_E_Latch,
		Q => OUT_1A_E,
		QBar => OPEN );

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_C_Latch,
		Q => OUT_4B_C,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_D_Latch,
		Q => OUT_2C_D,
		QBar => OPEN );

	Latch_1C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1C_P_Latch,
		Q => OUT_1C_P,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_E_Latch,
		Q => OUT_4D_E,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_P_Latch,
		Q => OUT_3D_P,
		QBar => OPEN );


end;
