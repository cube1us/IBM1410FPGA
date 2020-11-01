-- VHDL for IBM SMS ALD page 45.50.02.1
-- Title: CONSOLE I-O PRINTER STROBE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/1/2020 9:39:04 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_02_1_CONSOLE_I_O_PRINTER_STROBE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_CONS_PRINTER_SPACE_NO:	 in STD_LOGIC;
		PS_CONS_CHECK_STROBE:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS_1:	 in STD_LOGIC;
		MV_CONS_PRINTER_C1_CAM_NO:	 in STD_LOGIC;
		PS_CONS_CHAR_CONTROL:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		MS_CONSOLE_CHECK_STROBE_1:	 in STD_LOGIC;
		MS_CONS_BACK_SPACE_CONTROL:	 in STD_LOGIC;
		MS_WM_INPUT:	 in STD_LOGIC;
		MV_CONS_PRINTER_C1_CAM_NC:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONS_CLOCK_1_POS:	 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 out STD_LOGIC;
		MV_CONS_PRINTER_SPACE_NO_JRJ:	 out STD_LOGIC;
		MS_CONS_WM_INPUT_RESET:	 out STD_LOGIC;
		MS_CONS_PRINTER_STROBE:	 out STD_LOGIC);
end ALD_45_50_02_1_CONSOLE_I_O_PRINTER_STROBE;

architecture behavioral of ALD_45_50_02_1_CONSOLE_I_O_PRINTER_STROBE is 

	signal OUT_5A_R: STD_LOGIC;
	signal OUT_4A_F: STD_LOGIC;
	signal OUT_3A_NoPin: STD_LOGIC;
	signal OUT_1A_D: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_1B_NoPin: STD_LOGIC;
	signal OUT_5C_J: STD_LOGIC;
	signal OUT_4C_A: STD_LOGIC;
	signal OUT_3C_NoPin: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_1D_K: STD_LOGIC;
	signal OUT_5E_B: STD_LOGIC;
	signal OUT_3E_G: STD_LOGIC;
	signal OUT_3E_G_Latch: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_2E_G_Latch: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_3F_P: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_1G_P: STD_LOGIC;
	signal OUT_1G_B: STD_LOGIC;
	signal OUT_3H_K: STD_LOGIC;
	signal OUT_3H_K_Latch: STD_LOGIC;
	signal OUT_2H_G: STD_LOGIC;
	signal OUT_2H_G_Latch: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_5A_R <= MV_CONS_PRINTER_SPACE_NO;
	OUT_4A_F <= NOT(OUT_5A_R AND OUT_3C_NoPin );
	OUT_3A_NoPin <= NOT(OUT_3B_G AND PS_CONS_CHECK_STROBE );
	OUT_1A_D <= NOT OUT_1G_B;
	OUT_5B_NoPin <= NOT(OUT_5E_B AND OUT_4C_A );
	OUT_4B_C <= NOT(OUT_3A_NoPin AND OUT_5B_NoPin );
	OUT_3B_G <= NOT(OUT_5A_R );
	OUT_1B_NoPin <= NOT(OUT_1A_D AND PS_CONS_CLOCK_3_POS_1 );
	OUT_5C_J <= MV_CONS_PRINTER_C1_CAM_NO;
	OUT_4C_A <= NOT(OUT_5C_J );
	OUT_3C_NoPin <= NOT(PS_CONS_CHECK_STROBE AND PS_CONS_CHAR_CONTROL );
	OUT_1C_C <= NOT(PS_CONS_CHAR_CONTROL AND PS_CONS_CYCLE_LATCH_SET );
	OUT_3D_D <= NOT(OUT_5E_B );
	OUT_2D_E <= NOT(OUT_5C_J AND OUT_3D_D AND MS_CONSOLE_CHECK_STROBE_1 );
	OUT_1D_K <= NOT(MS_CONS_BACK_SPACE_CONTROL AND MS_WM_INPUT );
	OUT_5E_B <= MV_CONS_PRINTER_C1_CAM_NC;
	OUT_3E_G_Latch <= NOT(OUT_2D_E AND MS_PROGRAM_RESET_4 AND OUT_2E_G );
	OUT_2E_G_Latch <= NOT(OUT_1B_NoPin AND OUT_3E_G );
	OUT_1E_C <= NOT(OUT_1A_D );
	OUT_3F_P <= NOT(OUT_1E_C AND PS_CONS_CLOCK_3_POS_1 );
	OUT_3G_E <= NOT(OUT_4A_F AND OUT_4B_C AND OUT_3E_G );

	SMS_TAM_1G: entity SMS_TAM
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON1 => OUT_2H_G,	-- Pin A
		ACSET1 => PS_CONS_CLOCK_1_POS,	-- Pin D
		GATEOFF2 => OUT_1G_P,	-- Pin K
		ACRESET2 => PS_CONS_CLOCK_1_POS,	-- Pin L
		DCRESET => MS_PROGRAM_RESET_4,	-- Pin H
		OUTON => OUT_1G_P,
		OUTOFF => OUT_1G_B,
		DCSET => OPEN,
		ACRESET1 => OPEN,
		GATEOFF1 => OPEN,
		DCRFORCE => OPEN,
		DCSFORCE => OPEN,
		GATEON2 => OPEN,
		ACSET2 => OPEN );

	OUT_3H_K_Latch <= NOT(OUT_3E_G AND OUT_2H_G );
	OUT_2H_G_Latch <= NOT(OUT_3H_K AND OUT_DOT_3G );
	OUT_DOT_1C <= OUT_1C_C OR OUT_1D_K;
	OUT_DOT_3G <= OUT_3F_P OR OUT_3G_E;

	MV_CONS_PRINTER_SPACE_NO_JRJ <= OUT_5A_R;
	PS_CONS_PRINTER_STROBE <= OUT_1A_D;
	MS_CONS_PRINTER_STROBE <= OUT_1E_C;
	MS_CONS_WM_INPUT_RESET <= OUT_DOT_1C;

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_G_Latch,
		Q => OUT_3E_G,
		QBar => OPEN );

	Latch_2E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2E_G_Latch,
		Q => OUT_2E_G,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_K_Latch,
		Q => OUT_3H_K,
		QBar => OPEN );

	Latch_2H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2H_G_Latch,
		Q => OUT_2H_G,
		QBar => OPEN );


end;