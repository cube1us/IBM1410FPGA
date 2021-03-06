-- VHDL for IBM SMS ALD page 19.10.06.1
-- Title: I-O UNIT INTERRUPT COND LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/14/2020 8:44:13 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_19_10_06_1_I_O_UNIT_INTERRUPT_COND_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_Y_OP_DOT_TEST_RESET:	 in STD_LOGIC;
		PS_U_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_I_OP_DOT_I_CYCLE_DOT_E:	 in STD_LOGIC;
		MS_PROGRAM_RESET_6:	 in STD_LOGIC;
		MS_SEL_I_O_FINISH_PULSE:	 in STD_LOGIC;
		PS_CONS_CLOCK_3_POS_1:	 in STD_LOGIC;
		PS_PRIORITY_SW_ON:	 in STD_LOGIC;
		PS_CONS_CLOCK_1_POS:	 in STD_LOGIC;
		MS_SEL_I_O_UNIT_INTR_COND:	 out STD_LOGIC;
		PS_SEL_I_O_UNIT_INTR_COND:	 out STD_LOGIC);
end ALD_19_10_06_1_I_O_UNIT_INTERRUPT_COND_LATCHES;

architecture behavioral of ALD_19_10_06_1_I_O_UNIT_INTERRUPT_COND_LATCHES is 

	signal OUT_5A_A: STD_LOGIC;
	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_4A_NoPin_Latch: STD_LOGIC;
	signal OUT_3A_C: STD_LOGIC;
	signal OUT_3A_C_Latch: STD_LOGIC;
	signal OUT_2A_A: STD_LOGIC;
	signal OUT_1A_G: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_3D_NoPin_Latch: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_2D_D_Latch: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin_Latch: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_4F_C_Latch: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_4G_K_Latch: STD_LOGIC;
	signal OUT_3G_B: STD_LOGIC;
	signal OUT_3G_B_Latch: STD_LOGIC;

begin

	OUT_5A_A <= NOT(PS_Y_OP_DOT_TEST_RESET AND PS_U_SYMBOL_OP_MODIFIER );
	OUT_4A_NoPin_Latch <= NOT(OUT_5A_A AND OUT_3A_C AND MS_PROGRAM_RESET_6 );
	OUT_3A_C_Latch <= NOT(OUT_4A_NoPin AND OUT_4B_NoPin );
	OUT_2A_A <= NOT(OUT_3A_C AND MS_E_CH_IN_PROCESS );
	OUT_1A_G <= NOT(OUT_2A_A );
	OUT_4B_NoPin <= NOT(PS_I_OP_DOT_I_CYCLE_DOT_E AND OUT_2D_D );
	OUT_3D_NoPin_Latch <= NOT(OUT_5A_A AND OUT_2D_D AND MS_PROGRAM_RESET_6 );
	OUT_2D_D_Latch <= NOT(OUT_3D_NoPin AND OUT_3E_NoPin AND MS_SEL_I_O_FINISH_PULSE );
	OUT_3E_NoPin_Latch <= NOT(PS_CONS_CLOCK_3_POS_1 AND PS_PRIORITY_SW_ON AND OUT_4G_K );
	OUT_4F_C_Latch <= NOT(OUT_2D_D AND PS_CONS_CLOCK_1_POS );
	OUT_4G_K_Latch <= NOT(OUT_3G_B AND PS_PRIORITY_SW_ON );
	OUT_3G_B_Latch <= NOT(OUT_4F_C AND OUT_4G_K AND MS_PROGRAM_RESET_6 );

	MS_SEL_I_O_UNIT_INTR_COND <= OUT_2A_A;
	PS_SEL_I_O_UNIT_INTR_COND <= OUT_1A_G;

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_NoPin_Latch,
		Q => OUT_4A_NoPin,
		QBar => OPEN );

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_C_Latch,
		Q => OUT_3A_C,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_NoPin_Latch,
		Q => OUT_3D_NoPin,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_D_Latch,
		Q => OUT_2D_D,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_NoPin_Latch,
		Q => OUT_3E_NoPin,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_C_Latch,
		Q => OUT_4F_C,
		QBar => OPEN );

	Latch_4G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4G_K_Latch,
		Q => OUT_4G_K,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_B_Latch,
		Q => OUT_3G_B,
		QBar => OPEN );


end;
