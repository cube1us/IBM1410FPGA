-- VHDL for IBM SMS ALD page 45.50.10.1
-- Title: CHARACTER CONTROL LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/3/2020 12:39:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_10_1_CHARACTER_CONTROL_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_KEYBOARD_LOCK_SET:	 in STD_LOGIC;
		MS_CONS_WM_INPUT_SET:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_RESET:	 in STD_LOGIC;
		MS_KEYBOARD_UNLOCK_SET:	 in STD_LOGIC;
		MS_CONSOLE_OUTPUT_ERROR:	 in STD_LOGIC;
		MS_CONS_PRINTER_NOT_BUSY:	 in STD_LOGIC;
		MS_CONS_PRINTER_END_OF_LINE:	 in STD_LOGIC;
		PS_CONS_BACK_SPACE_CONTROL:	 in STD_LOGIC;
		MS_CONS_WM_CONTROL:	 in STD_LOGIC;
		PS_CONS_CYCLE_LATCH_SET:	 in STD_LOGIC;
		PS_SET_FIRST_CYCLE_LATCH:	 in STD_LOGIC;
		PS_CONS_OUTPUT_WM_BIT:	 in STD_LOGIC;
		PS_CONS_CHAR_CONTROL:	 out STD_LOGIC;
		MS_CONS_CHAR_CONTROL:	 out STD_LOGIC;
		MS_CONS_OUTPUT_WM_BIT:	 out STD_LOGIC);
end ALD_45_50_10_1_CHARACTER_CONTROL_LATCH;

architecture behavioral of ALD_45_50_10_1_CHARACTER_CONTROL_LATCH is 

	signal OUT_2A_H: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_3B_C_Latch: STD_LOGIC;
	signal OUT_2B_P: STD_LOGIC;
	signal OUT_2B_P_Latch: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_2C_F: STD_LOGIC;
	signal OUT_1C_K: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_3F_G: STD_LOGIC;
	signal OUT_3G_P: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_3H_NoPin: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_3F: STD_LOGIC;

begin


	SMS_AEK_2A: entity SMS_AEK
	    port map (
		IN1 => OUT_DOT_3B,	-- Pin P
		OUT1 => OUT_2A_H,
		IN2 => OPEN );

	OUT_3B_C_Latch <= NOT(OUT_DOT_2B AND MS_PROGRAM_RESET_4 AND MS_KEYBOARD_LOCK_SET );
	OUT_2B_P_Latch <= NOT(OUT_DOT_3B AND OUT_DOT_3F );
	OUT_4C_D <= NOT(PS_CONS_CYCLE_LATCH_RESET AND OUT_5D_NoPin );
	OUT_3C_D <= NOT(OUT_4C_D AND MS_CONS_WM_INPUT_SET );
	OUT_2C_F <= NOT(MS_KEYBOARD_UNLOCK_SET AND OUT_3H_NoPin );
	OUT_1C_K <= NOT(OUT_DOT_2B );
	OUT_5D_NoPin <= NOT(MS_CONSOLE_OUTPUT_ERROR AND MS_CONS_PRINTER_NOT_BUSY AND MS_CONS_PRINTER_END_OF_LINE );
	OUT_3F_G <= NOT(MS_CONSOLE_OUTPUT_ERROR AND PS_CONS_BACK_SPACE_CONTROL );
	OUT_3G_P <= NOT(MS_CONS_WM_CONTROL AND PS_CONS_CYCLE_LATCH_SET );
	OUT_4H_D <= NOT(PS_CONS_OUTPUT_WM_BIT );
	OUT_3H_NoPin <= NOT(OUT_4H_D AND PS_SET_FIRST_CYCLE_LATCH );
	OUT_DOT_3B <= OUT_3B_C OR OUT_3C_D;
	OUT_DOT_2B <= OUT_2B_P OR OUT_2C_F;
	OUT_DOT_3F <= OUT_3F_G OR OUT_3G_P;

	PS_CONS_CHAR_CONTROL <= OUT_2A_H;
	MS_CONS_CHAR_CONTROL <= OUT_1C_K;
	MS_CONS_OUTPUT_WM_BIT <= OUT_4H_D;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_C_Latch,
		Q => OUT_3B_C,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_P_Latch,
		Q => OUT_2B_P,
		QBar => OPEN );


end;
