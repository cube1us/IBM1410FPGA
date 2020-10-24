-- VHDL for IBM SMS ALD page 41.10.03.1
-- Title: DISPLAY AND STORAGE SCAN ROUTINE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/24/2020 11:11:09 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_41_10_03_1_DISPLAY_AND_STORAGE_SCAN_ROUTINE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONS_MX_Y6_POS:	 in STD_LOGIC;
		MS_CONS_MX_31_POS:	 in STD_LOGIC;
		PS_CONS_CLOCK_1_POS:	 in STD_LOGIC;
		PS_CONS_PRINTER_NOT_BUSY:	 in STD_LOGIC;
		PS_STOP_KEY_LATCH:	 in STD_LOGIC;
		MV_CONS_MODE_SW_DISPLAY_MODE:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONSOLE_ROUTINE_START:	 in STD_LOGIC;
		PS_CLOCK_STOPPED:	 in STD_LOGIC;
		MV_STORAGE_SCAN_MODE_1:	 in STD_LOGIC;
		MS_DISPLAY_OR_ALTER:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_1:	 out STD_LOGIC;
		MS_RESET_DISPLAY_ROUTINE:	 out STD_LOGIC;
		PS_DISPLAY_ROUTINE_2:	 out STD_LOGIC;
		MS_DISPLAY_ROUTINE:	 out STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE:	 out STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 out STD_LOGIC;
		MY_WRAP_AROUND_MODE:	 out STD_LOGIC;
		MS_STORAGE_SCAN_MODE:	 out STD_LOGIC);
end ALD_41_10_03_1_DISPLAY_AND_STORAGE_SCAN_ROUTINE;

architecture behavioral of ALD_41_10_03_1_DISPLAY_AND_STORAGE_SCAN_ROUTINE is 

	signal OUT_4A_C: STD_LOGIC;
	signal OUT_1A_K: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_3C_P: STD_LOGIC;
	signal OUT_3C_P_Latch: STD_LOGIC;
	signal OUT_2C_NoPin: STD_LOGIC;
	signal OUT_2C_NoPin_Latch: STD_LOGIC;
	signal OUT_1C_B: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_3D_F: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_4F_NoPin: STD_LOGIC;
	signal OUT_3F_G: STD_LOGIC;
	signal OUT_3F_G_Latch: STD_LOGIC;
	signal OUT_2F_A: STD_LOGIC;
	signal OUT_2F_A_Latch: STD_LOGIC;
	signal OUT_1F_H: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_3G_G: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_3H_P: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;

begin

	OUT_4A_C <= NOT(MS_CONS_MX_Y6_POS AND MS_CONS_MX_31_POS );
	OUT_1A_K <= OUT_2B_C;
	OUT_4B_C <= NOT(PS_CONS_CLOCK_1_POS AND PS_CONS_PRINTER_NOT_BUSY AND PS_STOP_KEY_LATCH );
	OUT_2B_C <= NOT OUT_3C_P;
	OUT_3C_P_Latch <= NOT(MS_PROGRAM_RESET_4 AND OUT_DOT_4A AND OUT_2C_NoPin );
	OUT_2C_NoPin_Latch <= NOT(OUT_3C_P AND OUT_3D_F );
	OUT_1C_B <= NOT OUT_2C_NoPin;
	OUT_4D_NoPin <= NOT(MV_CONS_MODE_SW_DISPLAY_MODE );
	OUT_3D_F <= NOT(OUT_4D_NoPin AND PS_CONSOLE_ROUTINE_START );
	OUT_2E_D <= NOT OUT_3F_G;
	OUT_4F_NoPin <= NOT(PS_STOP_KEY_LATCH AND PS_CLOCK_STOPPED );
	OUT_3F_G_Latch <= NOT(OUT_4F_NoPin AND MS_PROGRAM_RESET_4 AND OUT_2F_A );
	OUT_2F_A_Latch <= NOT(OUT_3F_G AND OUT_3G_G );

	SMS_AEK_1F: entity SMS_AEK
	    port map (
		IN1 => OUT_2F_A,	-- Pin P
		OUT1 => OUT_1F_H,
		IN2 => OPEN );

	OUT_4G_K <= NOT(MV_STORAGE_SCAN_MODE_1 );
	OUT_3G_G <= NOT(OUT_4G_K AND PS_CONSOLE_ROUTINE_START );
	OUT_4H_G <= NOT(OUT_1F_H AND MS_DISPLAY_OR_ALTER );
	OUT_3H_P <= NOT(OUT_4H_G );
	OUT_2I_C <= NOT(OUT_4G_K );
	OUT_DOT_4A <= OUT_4A_C OR OUT_4B_C;

	PS_DISPLAY_ROUTINE_1 <= OUT_1A_K;
	PS_DISPLAY_ROUTINE_2 <= OUT_2B_C;
	MS_DISPLAY_ROUTINE <= OUT_1C_B;
	PS_STORAGE_SCAN_ROUTINE <= OUT_2E_D;
	MS_STORAGE_SCAN_ROUTINE <= OUT_1F_H;
	MY_WRAP_AROUND_MODE <= OUT_3H_P;
	MS_STORAGE_SCAN_MODE <= OUT_2I_C;
	MS_RESET_DISPLAY_ROUTINE <= OUT_DOT_4A;

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

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_G_Latch,
		Q => OUT_3F_G,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_A_Latch,
		Q => OUT_2F_A,
		QBar => OPEN );


end;
