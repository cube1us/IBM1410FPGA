-- VHDL for IBM SMS ALD page 45.50.11.1
-- Title: OUTPUT ERROR LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/18/2020 3:35:38 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_11_1_OUTPUT_ERROR_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_CHECK_STROBE:	 in STD_LOGIC;
		PS_CONS_ERROR_CONTROL:	 in STD_LOGIC;
		MS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_CONS_OUTPUT_CBA8_421:	 in STD_LOGIC;
		MB_CONS_PRINTER_EVEN_BIT_CHECK:	 in STD_LOGIC;
		MS_CONSOLE_WM_CHARACTER:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		PS_CONSOLE_WM_CHARACTER:	 in STD_LOGIC;
		MV_CONS_PRINTER_SPACE_NO_JRJ:	 in STD_LOGIC;
		MS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		MV_CONS_PRINTER_ODD_BIT_CHECK:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_ERROR:	 out STD_LOGIC;
		MS_CONSOLE_OUTPUT_ERROR:	 out STD_LOGIC;
		PS_CONS_DATA_CHECK:	 out STD_LOGIC);
end ALD_45_50_11_1_OUTPUT_ERROR_LATCH;

architecture behavioral of ALD_45_50_11_1_OUTPUT_ERROR_LATCH is 

	signal OUT_2B_C: STD_LOGIC;
	signal OUT_5C_D: STD_LOGIC;
	signal OUT_3C_P: STD_LOGIC;
	signal OUT_3C_P_Latch: STD_LOGIC;
	signal OUT_2C_NoPin: STD_LOGIC;
	signal OUT_2C_NoPin_Latch: STD_LOGIC;
	signal OUT_1C_B: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_2D_E_Latch: STD_LOGIC;
	signal OUT_1D_F: STD_LOGIC;
	signal OUT_1D_F_Latch: STD_LOGIC;
	signal OUT_5E_X: STD_LOGIC;
	signal OUT_3E_K: STD_LOGIC;
	signal OUT_2E_NoPin: STD_LOGIC;
	signal OUT_1E_P: STD_LOGIC;
	signal OUT_4F_K: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_5G_D: STD_LOGIC;
	signal OUT_4G_G: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_3H_P: STD_LOGIC;
	signal OUT_4I_X: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_2B_C <= NOT OUT_3C_P;
	OUT_5C_D <= NOT(PS_CONS_CHECK_STROBE AND PS_CONS_ERROR_CONTROL AND MS_CONS_CYCLE_LATCH_SET );
	OUT_3C_P_Latch <= NOT(OUT_5C_D AND MS_PROGRAM_RESET_4 AND OUT_2C_NoPin );
	OUT_2C_NoPin_Latch <= NOT(OUT_3C_P AND OUT_3F_E AND OUT_3G_C );
	OUT_1C_B <= NOT OUT_2C_NoPin;
	OUT_3D_C <= NOT(MS_CONS_PRINTER_STROBE AND MS_CONS_OUTPUT_CBA8_421 );
	OUT_2D_E_Latch <= NOT(OUT_3D_C AND OUT_1D_F AND MS_PROGRAM_RESET_4 );
	OUT_1D_F_Latch <= NOT(OUT_2D_E AND OUT_2E_NoPin );
	OUT_5E_X <= MB_CONS_PRINTER_EVEN_BIT_CHECK;
	OUT_3E_K <= NOT(MS_CONS_OUTPUT_CBA8_421 );
	OUT_2E_NoPin <= NOT(OUT_3E_K AND MS_CONS_PRINTER_STROBE );
	OUT_1E_P <= NOT(OUT_1D_F AND PS_CONSOLE_WM_CHARACTER );
	OUT_4F_K <= NOT(OUT_2D_E AND OUT_5E_X );
	OUT_3F_E <= NOT(OUT_4F_K AND MS_CONSOLE_WM_CHARACTER AND OUT_4G_G );
	OUT_2F_D <= NOT(OUT_3F_E AND OUT_3G_C );
	OUT_5G_D <= NOT(OUT_1E_P AND PS_CONS_PRINTER_STROBE AND MS_KEYBOARD_UNLOCK );
	OUT_4G_G <= NOT(OUT_DOT_5G );
	OUT_3G_C <= NOT(OUT_4G_G AND OUT_3H_P AND PS_CONSOLE_WM_CHARACTER );
	OUT_5H_P <= NOT(MV_CONS_PRINTER_SPACE_NO_JRJ AND MS_CONS_MX_X1A_POS );
	OUT_3H_P <= NOT(OUT_4I_X );
	OUT_4I_X <= MV_CONS_PRINTER_ODD_BIT_CHECK;
	OUT_DOT_5G <= OUT_5G_D OR OUT_5H_P;

	PS_CONSOLE_OUTPUT_ERROR <= OUT_2B_C;
	MS_CONSOLE_OUTPUT_ERROR <= OUT_1C_B;
	PS_CONS_DATA_CHECK <= OUT_2F_D;

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_P_Latch,
		Q => OUT_3C_P,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_NoPin_Latch,
		Q => OUT_2C_NoPin,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_E_Latch,
		Q => OUT_2D_E,
		QBar => OPEN );

	Latch_1D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1D_F_Latch,
		Q => OUT_1D_F,
		QBar => OPEN );


end;
