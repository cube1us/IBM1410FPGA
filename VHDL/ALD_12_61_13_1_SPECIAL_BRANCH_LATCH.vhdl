-- VHDL for IBM SMS ALD page 12.61.13.1
-- Title: SPECIAL BRANCH LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/15/2020 4:54:12 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_61_13_1_SPECIAL_BRANCH_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_BRANCH_TO_A_CONDITIONS:	 in STD_LOGIC;
		MC_BUFFER_INQ_REQUEST:	 in STD_LOGIC;
		PS_N_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		MS_CONS_INQUIRY_REQUEST:	 in STD_LOGIC;
		PS_Q_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_INTERRUPT_TEST_OP_CODE:	 in STD_LOGIC;
		MS_COND_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_K_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MC_BUFFER_OUTQUIRY_PULSE:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_E_CH_TAPE_INDICATOR:	 in STD_LOGIC;
		MS_F_CH_TAPE_INDICATOR:	 in STD_LOGIC;
		PS_SPEC_BRANCH_LATCH_STAR_1414_STAR:	 in STD_LOGIC;
		MC_PRINTER_CHANNEL_9:	 in STD_LOGIC;
		MS_9_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		MC_PRINTER_CHANNEL_12:	 in STD_LOGIC;
		MS_COML_AT_SYM_OP_MODIFIER:	 in STD_LOGIC;
		MC_FORMS_BUSY_STATUS_TO_CPU:	 in STD_LOGIC;
		PS_R_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_P_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_1403_PRINT_BUFFER_BUSY:	 in STD_LOGIC;
		MC_READ_COLUMN_BINARY:	 in STD_LOGIC;
		PS_M_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_ANY_INQUIRY_REQUEST:	 out STD_LOGIC;
		PS_INT_OUTQUIRY_REQUEST:	 out STD_LOGIC;
		MS_SPECIAL_BRANCH_LATCH:	 out STD_LOGIC;
		PS_SPECIAL_BRANCH_LATCH:	 out STD_LOGIC;
		PS_SELECTED_CARRIAGE_CH:	 out STD_LOGIC;
		MS_PRT_CARR_BUSY:	 out STD_LOGIC);
end ALD_12_61_13_1_SPECIAL_BRANCH_LATCH;

architecture behavioral of ALD_12_61_13_1_SPECIAL_BRANCH_LATCH is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_5A_C_Latch: STD_LOGIC;
	signal OUT_4A_C: STD_LOGIC;
	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3A_D_Latch: STD_LOGIC;
	signal OUT_2A_C: STD_LOGIC;
	signal OUT_2A_C_Latch: STD_LOGIC;
	signal OUT_5B_G: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2C_B: STD_LOGIC;
	signal OUT_2C_B_Latch: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_3D_K: STD_LOGIC;
	signal OUT_3D_K_Latch: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_2D_C_Latch: STD_LOGIC;
	signal OUT_4E_A: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_4F_A: STD_LOGIC;
	signal OUT_3F_F: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_4G_C_Latch: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_2G_P: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_4I_C: STD_LOGIC;
	signal OUT_4I_C_Latch: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_2I_F: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;

begin

	OUT_5A_C_Latch <= NOT(MC_BUFFER_INQ_REQUEST );
	OUT_4A_C <= NOT(PS_BRANCH_TO_A_CONDITIONS AND OUT_3B_G AND PS_N_SYMBOL_OP_MODIFIER );
	OUT_3A_D_Latch <= NOT(OUT_4A_C AND MS_PROGRAM_RESET_1 AND OUT_DOT_2B );
	OUT_2A_C_Latch <= NOT(OUT_3A_D );
	OUT_5B_G <= NOT(MS_CONS_INQUIRY_REQUEST );
	OUT_4B_D <= NOT(PS_LOGIC_GATE_C_1 AND OUT_DOT_5A AND PS_Q_SYMBOL_OP_MODIFIER );
	OUT_3B_G <= NOT(MS_INTERRUPT_TEST_OP_CODE AND MS_COND_TEST_BRANCH_OP_CODE );
	OUT_2B_C <= NOT OUT_3A_D;
	OUT_4C_C <= NOT(PS_LOGIC_GATE_C_1 AND PS_K_SYMBOL_OP_MODIFIER AND OUT_5D_C );
	OUT_2C_B_Latch <= NOT(MC_BUFFER_OUTQUIRY_PULSE );
	OUT_5D_C <= NOT(MS_E_CH_TAPE_INDICATOR AND MS_F_CH_TAPE_INDICATOR );
	OUT_3D_K_Latch <= NOT(OUT_DOT_2D AND MS_LOGIC_GATE_B_1 );
	OUT_2D_C_Latch <= NOT(OUT_4B_D AND OUT_4C_C AND OUT_3D_K );
	OUT_4E_A <= NOT(MC_PRINTER_CHANNEL_9 OR MS_9_SYMBOL_OP_MODIFIER );
	OUT_3E_E <= NOT(OUT_DOT_2B AND PS_N_SYMBOL_OP_MODIFIER AND PS_LOGIC_GATE_C_1 );
	OUT_4F_A <= NOT(MC_PRINTER_CHANNEL_12 OR MS_COML_AT_SYM_OP_MODIFIER );
	OUT_3F_F <= NOT(MS_1401_MODE AND OUT_DOT_4E AND PS_LOGIC_GATE_C_1 );
	OUT_2F_D <= NOT(OUT_3E_E AND OUT_3F_F AND OUT_3G_E );
	OUT_4G_C_Latch <= NOT(MC_FORMS_BUSY_STATUS_TO_CPU );
	OUT_3G_E <= NOT(OUT_4G_C AND PS_LOGIC_GATE_C_1 AND PS_R_SYMBOL_OP_MODIFIER );
	OUT_2G_P <= NOT(OUT_4G_C );
	OUT_3H_D <= NOT(PS_LOGIC_GATE_C_1 AND PS_P_SYMBOL_OP_MODIFIER AND PS_1403_PRINT_BUFFER_BUSY );
	OUT_2H_C <= NOT(OUT_3H_D );
	OUT_4I_C_Latch <= NOT(MC_READ_COLUMN_BINARY );
	OUT_3I_D <= NOT(OUT_4I_C AND PS_LOGIC_GATE_C_1 AND PS_M_SYMBOL_OP_MODIFIER );
	OUT_2I_F <= NOT OUT_3I_D;
	OUT_DOT_5A <= OUT_5A_C OR OUT_5B_G;
	OUT_DOT_2B <= OUT_2A_C OR OUT_2C_B;
	OUT_DOT_2D <= OUT_2D_C OR PS_SPEC_BRANCH_LATCH_STAR_1414_STAR OR OUT_2F_D OR OUT_2H_C OR OUT_2I_F;
	OUT_DOT_4E <= OUT_4E_A OR OUT_4F_A;

	PS_INT_OUTQUIRY_REQUEST <= OUT_2B_C;
	MS_SPECIAL_BRANCH_LATCH <= OUT_3D_K;
	MS_PRT_CARR_BUSY <= OUT_2G_P;
	PS_ANY_INQUIRY_REQUEST <= OUT_DOT_5A;
	PS_SPECIAL_BRANCH_LATCH <= OUT_DOT_2D;
	PS_SELECTED_CARRIAGE_CH <= OUT_DOT_4E;

	Latch_5A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5A_C_Latch,
		Q => OUT_5A_C,
		QBar => OPEN );

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_D_Latch,
		Q => OUT_3A_D,
		QBar => OPEN );

	Latch_2A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2A_C_Latch,
		Q => OUT_2A_C,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_B_Latch,
		Q => OUT_2C_B,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_K_Latch,
		Q => OUT_3D_K,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_C_Latch,
		Q => OUT_2D_C,
		QBar => OPEN );

	Latch_4G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4G_C_Latch,
		Q => OUT_4G_C,
		QBar => OPEN );

	Latch_4I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4I_C_Latch,
		Q => OUT_4I_C,
		QBar => OPEN );


end;
