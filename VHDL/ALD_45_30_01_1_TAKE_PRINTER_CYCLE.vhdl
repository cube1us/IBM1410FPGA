-- VHDL for IBM SMS ALD page 45.30.01.1
-- Title: TAKE PRINTER CYCLE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/30/2020 4:11:31 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_30_01_1_TAKE_PRINTER_CYCLE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_CONS_MX_28_POS:	 in STD_LOGIC;
		MS_CONS_MX_29_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y1_POS:	 in STD_LOGIC;
		PS_CONS_MX_X6_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y3_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y5_POS:	 in STD_LOGIC;
		MS_CONS_MX_Y6_POS:	 in STD_LOGIC;
		PS_CONS_PRINTER_NOT_BUSY:	 in STD_LOGIC;
		MS_ALTER_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		MS_ADDRESS_SET_UNLOCK:	 in STD_LOGIC;
		PS_CONSOLE_STROBE_GATE:	 in STD_LOGIC;
		MS_INQUIRY_KEYBOARD_UNLOCK:	 in STD_LOGIC;
		MS_MASTER_ERROR:	 in STD_LOGIC;
		PS_CONS_MX_32_OR_33_POS:	 in STD_LOGIC;
		PS_PRTR_LOCKED_CND_PROCEED:	 in STD_LOGIC;
		PS_START_KEY_2:	 in STD_LOGIC;
		PS_CONS_CLOCK_2_POS:	 in STD_LOGIC;
		MS_RESET_DISPLAY_ROUTINE:	 in STD_LOGIC;
		MS_START_KEY:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_2:	 in STD_LOGIC;
		PS_CONS_MX_33_POS:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_CONS_WM_CONTROL:	 in STD_LOGIC;
		MS_CONS_MX_Y2_POS:	 in STD_LOGIC;
		MS_TAKE_CONSOLE_PRINTER_CYCLE:	 out STD_LOGIC;
		MS_CONSOLE_HOME_POSITION:	 out STD_LOGIC;
		PS_CONSOLE_HOME_POSITION:	 out STD_LOGIC;
		PS_TAKE_CONSOLE_PRINTER_CYCLE:	 out STD_LOGIC;
		LAMP_11C8A05:	 out STD_LOGIC);
end ALD_45_30_01_1_TAKE_PRINTER_CYCLE;

architecture behavioral of ALD_45_30_01_1_TAKE_PRINTER_CYCLE is 

	signal OUT_2A_G: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_5C_C: STD_LOGIC;
	signal OUT_4C_K: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_5D_K: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_4F_E_Latch: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2F_C_Latch: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_DOT_2A: STD_LOGIC;
	signal OUT_DOT_5C: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_2A_G <= NOT(MS_CONS_MX_28_POS AND MS_CONS_MX_29_POS );
	OUT_5B_C <= NOT(MS_CONS_MX_Y2_POS AND MS_CONS_MX_Y1_POS AND PS_CONS_MX_X6_POS );
	OUT_2B_C <= NOT OUT_4C_K;
	LAMP_11C8A05 <= OUT_2B_C;
	OUT_5C_C <= NOT(MS_CONS_MX_Y3_POS AND MS_CONS_MX_Y4_POS );
	OUT_4C_K <= OUT_DOT_5C;
	OUT_3C_C <= NOT OUT_4C_K;
	OUT_1C_D <= NOT(OUT_DOT_2A );
	OUT_5D_K <= NOT(MS_CONS_MX_Y5_POS AND MS_CONS_MX_Y6_POS );
	OUT_2D_C <= NOT(OUT_DOT_5C AND OUT_4F_E );
	OUT_5E_NoPin <= NOT(PS_CONSOLE_STROBE_GATE AND MS_MASTER_ERROR );
	OUT_4E_G <= NOT(OUT_5E_NoPin AND PS_CONS_MX_32_OR_33_POS );
	OUT_3E_D <= NOT(OUT_4E_G AND MS_ADDRESS_SET_UNLOCK AND PS_PRTR_LOCKED_CND_PROCEED );
	OUT_2E_E <= NOT(MS_ALTER_KEYBOARD_UNLOCK AND MS_INQUIRY_KEYBOARD_UNLOCK AND PS_CONS_PRINTER_NOT_BUSY );
	OUT_5F_D <= NOT(PS_START_KEY_2 AND PS_CONS_CLOCK_2_POS );
	OUT_4F_E_Latch <= NOT(OUT_5F_D AND OUT_2F_C AND MS_RESET_DISPLAY_ROUTINE );
	OUT_2F_C_Latch <= NOT(OUT_4F_E AND OUT_DOT_5G );
	OUT_5G_C <= NOT(MS_START_KEY AND PS_DISPLAY_ROUTINE_2 AND PS_CONS_MX_33_POS );
	OUT_5H_D <= NOT(PS_B_CH_WM_BIT_1 AND PS_CONS_WM_CONTROL );
	OUT_DOT_2A <= OUT_2A_G OR OUT_2D_C OR OUT_3E_D OR OUT_2E_E;
	OUT_DOT_5C <= OUT_5B_C OR OUT_5C_C OR OUT_5D_K;
	OUT_DOT_5G <= OUT_5G_C OR OUT_5H_D;

	MS_CONSOLE_HOME_POSITION <= OUT_4C_K;
	PS_CONSOLE_HOME_POSITION <= OUT_3C_C;
	PS_TAKE_CONSOLE_PRINTER_CYCLE <= OUT_1C_D;
	MS_TAKE_CONSOLE_PRINTER_CYCLE <= OUT_DOT_2A;

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_E_Latch,
		Q => OUT_4F_E,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_C_Latch,
		Q => OUT_2F_C,
		QBar => OPEN );


end;
