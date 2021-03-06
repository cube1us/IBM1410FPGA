-- VHDL for IBM SMS ALD page 45.50.14.1
-- Title: FUNCTION CONTROL LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/4/2020 7:35:43 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_50_14_1_FUNCTION_CONTROL_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_END_OF_CHAR_RESET:	 in STD_LOGIC;
		MS_END_OF_LINE_RESET:	 in STD_LOGIC;
		MS_CONS_MX_6A_POS:	 in STD_LOGIC;
		MS_CONS_MX_34_POS:	 in STD_LOGIC;
		MS_CONS_PRINTER_END_OF_LINE:	 in STD_LOGIC;
		PS_TAKE_CONSOLE_PRINTER_CYCLE:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS_1:	 in STD_LOGIC;
		MS_CONS_MX_31_POS:	 in STD_LOGIC;
		MS_CONS_MX_25_POS:	 in STD_LOGIC;
		MS_CONS_MX_21_POS:	 in STD_LOGIC;
		PS_CONS_MX_Y6_POS:	 in STD_LOGIC;
		MS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		MS_CONS_MX_X6_POS:	 in STD_LOGIC;
		PS_CONS_MOVE_WRITE_OP:	 in STD_LOGIC;
		MS_CONS_OUTPUT_WM_BIT:	 in STD_LOGIC;
		PS_CONSOLE_OUTPUT_C_BIT:	 in STD_LOGIC;
		MS_CONSOLE_OUTPUT_B_BIT:	 in STD_LOGIC;
		MS_CONSOLE_OUTPUT_A_BIT:	 in STD_LOGIC;
		MS_8_4_2_1_BIT:	 in STD_LOGIC;
		MS_CONS_FN_CONTROL:	 out STD_LOGIC;
		PS_FUNCTION_CONTROL:	 out STD_LOGIC;
		PS_CONSOLE_CARRIAGE_RETURN:	 out STD_LOGIC;
		MS_CONSOLE_CARRIAGE_RETURN:	 out STD_LOGIC;
		MS_CONSOLE_SPACE_FUNCTION:	 out STD_LOGIC;
		PS_CONSOLE_SPACE_FUNCTION:	 out STD_LOGIC);
end ALD_45_50_14_1_FUNCTION_CONTROL_LATCH;

architecture behavioral of ALD_45_50_14_1_FUNCTION_CONTROL_LATCH is 

	signal OUT_2A_A: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_3B_C_Latch: STD_LOGIC;
	signal OUT_2B_H: STD_LOGIC;
	signal OUT_2B_H_Latch: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_2D_P: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_4F_F: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_5H_E: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_2F: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;

begin

	OUT_2A_A <= NOT OUT_DOT_2B;
	OUT_3B_C_Latch <= NOT(OUT_DOT_2B AND MS_PROGRAM_RESET_4 AND MS_END_OF_CHAR_RESET );
	OUT_2B_H_Latch <= NOT(OUT_3B_C AND MS_END_OF_LINE_RESET );
	OUT_1B_C <= NOT(OUT_3B_C );
	OUT_4C_E <= NOT(MS_CONS_MX_34_POS AND MS_CONS_PRINTER_END_OF_LINE AND MS_CONS_MX_6A_POS );
	OUT_3C_C <= NOT(OUT_4C_E );
	OUT_1C_C <= NOT(OUT_4C_E AND PS_CONS_CLOCK_3_POS_1 AND PS_TAKE_CONSOLE_PRINTER_CYCLE );
	OUT_4D_D <= NOT(PS_TAKE_CONSOLE_PRINTER_CYCLE AND PS_CONS_CLOCK_3_POS_1 AND OUT_DOT_2F );
	OUT_3D_C <= NOT(OUT_DOT_2F );
	OUT_2D_P <= NOT(OUT_1C_C AND OUT_4D_D );
	OUT_4E_C <= NOT(MS_CONS_MX_31_POS AND MS_CONS_MX_25_POS AND MS_CONS_MX_21_POS );
	OUT_5F_NoPin <= NOT(MS_CONS_ADDR_REG_EXIT_GATE AND MS_CONS_MX_X6_POS );
	OUT_4F_F <= NOT(OUT_5F_NoPin AND PS_CONS_MX_Y6_POS );
	OUT_3F_C <= NOT(OUT_4F_F AND OUT_DOT_5G );
	OUT_5G_C <= NOT(PS_CONS_MOVE_WRITE_OP AND MS_CONS_OUTPUT_WM_BIT AND PS_CONSOLE_OUTPUT_C_BIT );
	OUT_5H_E <= NOT(MS_CONSOLE_OUTPUT_B_BIT AND MS_CONSOLE_OUTPUT_A_BIT AND MS_8_4_2_1_BIT );
	OUT_DOT_2B <= OUT_2B_H OR OUT_2D_P;
	OUT_DOT_2F <= OUT_4E_C OR OUT_3F_C;
	OUT_DOT_5G <= OUT_5G_C OR OUT_5H_E;

	MS_CONS_FN_CONTROL <= OUT_2A_A;
	PS_FUNCTION_CONTROL <= OUT_1B_C;
	PS_CONSOLE_CARRIAGE_RETURN <= OUT_4C_E;
	MS_CONSOLE_CARRIAGE_RETURN <= OUT_3C_C;
	MS_CONSOLE_SPACE_FUNCTION <= OUT_3D_C;
	PS_CONSOLE_SPACE_FUNCTION <= OUT_DOT_2F;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_C_Latch,
		Q => OUT_3B_C,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_H_Latch,
		Q => OUT_2B_H,
		QBar => OPEN );


end;
