-- VHDL for IBM SMS ALD page 41.10.02.1
-- Title: ADDRESS SET ROUTINE LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/24/2020 10:19:11 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_41_10_02_1_ADDRESS_SET_ROUTINE_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		MS_STOP_KEY_LATCH:	 in STD_LOGIC;
		PS_CONS_MX_Y5_POS:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_CONSOLE_ROUTINE_START:	 in STD_LOGIC;
		MS_DISPLAY_ROUTINE:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		PS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		PS_CONS_MX_35_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y6_POS:	 in STD_LOGIC;
		MS_UNGATED_ALTER_ROUTINE:	 in STD_LOGIC;
		PS_ADDR_SET_KEYBOARD_LOCK:	 out STD_LOGIC;
		MS_ADDR_SET_KEYBOARD_LOCK:	 out STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 out STD_LOGIC;
		PS_ADDRESS_SET_ROUTINE:	 out STD_LOGIC;
		MS_CONS_CYCLE_START_RESET:	 out STD_LOGIC;
		MS_CONS_CYCLE_START_CND:	 out STD_LOGIC;
		MS_ADDRESS_SET_UNLOCK:	 out STD_LOGIC;
		MS_DISPLAY_OR_ALTER_ROUTINE:	 out STD_LOGIC);
end ALD_41_10_02_1_ADDRESS_SET_ROUTINE_LATCH;

architecture behavioral of ALD_41_10_02_1_ADDRESS_SET_ROUTINE_LATCH is 

	signal OUT_5B_K: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_5C_P: STD_LOGIC;
	signal OUT_4C_R: STD_LOGIC;
	signal OUT_3C_H: STD_LOGIC;
	signal OUT_3C_H_Latch: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_4D_C_Latch: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_3D_G_Latch: STD_LOGIC;
	signal OUT_2D_B: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_1G_E: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_R: STD_LOGIC;
	signal OUT_DOT_5B: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;

begin

	OUT_5B_K <= NOT(PS_CONS_PRINTER_STROBE AND PS_CONS_CLOCK_3_POS );
	OUT_4B_C <= NOT(OUT_DOT_5B );
	OUT_5C_P <= NOT(PS_CONS_MX_Y5_POS AND PS_CONS_MX_X1A_POS );
	OUT_4C_R <= NOT MS_STOP_KEY_LATCH;
	OUT_3C_H_Latch <= OUT_DOT_4C;
	OUT_4D_C_Latch <= NOT(OUT_3D_G AND OUT_DOT_5B AND MS_PROGRAM_RESET_4 );
	OUT_3D_G_Latch <= NOT(OUT_3C_H AND MS_CONSOLE_ROUTINE_START );
	OUT_2D_B <= OUT_3D_G;
	OUT_2E_D <= NOT(OUT_3C_H AND MS_DISPLAY_ROUTINE AND MS_STORAGE_SCAN_ROUTINE );
	OUT_1E_C <= NOT(OUT_2E_D );
	OUT_1F_C <= NOT(OUT_2E_D AND PS_CONS_MX_35_POS AND PS_CONS_CLOCK_3_POS );
	OUT_1G_E <= NOT(OUT_2D_B AND PS_CONS_MX_X1A_POS AND MS_CONS_MX_Y6_POS );
	OUT_5H_NoPin <= NOT(MS_DISPLAY_ROUTINE AND MS_UNGATED_ALTER_ROUTINE );
	OUT_4H_R <= NOT OUT_5H_NoPin;
	OUT_DOT_5B <= OUT_5B_K OR OUT_5C_P;
	OUT_DOT_4C <= OUT_4C_R OR OUT_4D_C;

	PS_ADDR_SET_KEYBOARD_LOCK <= OUT_4B_C;
	MS_ADDRESS_SET_ROUTINE <= OUT_3C_H;
	PS_ADDRESS_SET_ROUTINE <= OUT_2D_B;
	MS_CONS_CYCLE_START_RESET <= OUT_1E_C;
	MS_CONS_CYCLE_START_CND <= OUT_1F_C;
	MS_ADDRESS_SET_UNLOCK <= OUT_1G_E;
	MS_DISPLAY_OR_ALTER_ROUTINE <= OUT_4H_R;
	MS_ADDR_SET_KEYBOARD_LOCK <= OUT_DOT_5B;

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_H_Latch,
		Q => OUT_3C_H,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_C_Latch,
		Q => OUT_4D_C,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_G_Latch,
		Q => OUT_3D_G,
		QBar => OPEN );


end;