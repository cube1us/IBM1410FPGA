-- VHDL for IBM SMS ALD page 19.10.07.1
-- Title: INTERRUPT MODE LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/15/2020 9:44:28 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_19_10_07_1_INTERRUPT_MODE_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_INTERRUPT_BRANCH:	 in STD_LOGIC;
		PS_X_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_Y_OP_DOT_TEST_RESET:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_6:	 in STD_LOGIC;
		PS_NO_SCAN_1:	 in STD_LOGIC;
		PS_INTERRUPT_TEST_OP_CODE:	 in STD_LOGIC;
		PS_E_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_PRIORITY_ALERT_MODE:	 out STD_LOGIC;
		MS_NORMAL_MODE:	 out STD_LOGIC;
		LAMP_15A1K23:	 out STD_LOGIC);
end ALD_19_10_07_1_INTERRUPT_MODE_LATCHES;

architecture behavioral of ALD_19_10_07_1_INTERRUPT_MODE_LATCHES is 

	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4C_G: STD_LOGIC;
	signal OUT_3C_P: STD_LOGIC;
	signal OUT_2C_K: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3D_D_Latch: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_2D_C_Latch: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_4F_NoPin: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_3H_B: STD_LOGIC;
	signal OUT_3H_B_Latch: STD_LOGIC;
	signal OUT_2H_K: STD_LOGIC;
	signal OUT_2H_K_Latch: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_2H: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;

begin

	OUT_4B_C <= NOT(PS_INTERRUPT_BRANCH AND PS_B_CYCLE_1 AND PS_LOGIC_GATE_E_1 );
	OUT_4C_G <= NOT(PS_INTERRUPT_TEST_OP_CODE AND PS_B_CYCLE_1 AND PS_LOGIC_GATE_E_1 );
	OUT_3C_P <= NOT(OUT_4B_C AND OUT_DOT_4C );
	OUT_2C_K <= NOT OUT_DOT_3C;
	LAMP_15A1K23 <= OUT_2C_K;
	OUT_4D_G <= NOT(PS_X_SYMBOL_OP_MODIFIER AND PS_NO_SCAN_1 );
	OUT_3D_D_Latch <= NOT(OUT_2D_C AND MS_PROGRAM_RESET_6 );
	OUT_2D_C_Latch <= NOT(OUT_DOT_3C AND OUT_4E_NoPin );
	OUT_4E_NoPin <= NOT(PS_LOGIC_GATE_E_1 AND PS_Y_OP_DOT_TEST_RESET AND PS_E_SYMBOL_OP_MODIFIER );
	OUT_4F_NoPin <= NOT(PS_X_SYMBOL_OP_MODIFIER AND PS_Y_OP_DOT_TEST_RESET AND PS_LOGIC_GATE_E_1 );
	OUT_4G_NoPin <= NOT(PS_INTERRUPT_BRANCH AND PS_B_CYCLE_1 AND PS_LOGIC_GATE_E_1 );
	OUT_2G_C <= NOT(OUT_4F_NoPin AND OUT_4G_NoPin );
	OUT_4H_G <= NOT(PS_LOGIC_GATE_E_1 AND PS_B_CYCLE_1 AND PS_NO_SCAN_1 );
	OUT_3H_B_Latch <= NOT(OUT_DOT_2H AND OUT_DOT_4H );
	OUT_2H_K_Latch <= NOT(OUT_3H_B AND MS_PROGRAM_RESET_6 );
	OUT_4I_G <= NOT(PS_INTERRUPT_TEST_OP_CODE AND PS_E_SYMBOL_OP_MODIFIER );
	OUT_DOT_3C <= OUT_3C_P OR OUT_3D_D;
	OUT_DOT_2H <= OUT_2G_C OR OUT_2H_K;
	OUT_DOT_4C <= OUT_4C_G OR OUT_4D_G;
	OUT_DOT_4H <= OUT_4H_G OR OUT_4I_G;

	PS_PRIORITY_ALERT_MODE <= OUT_2D_C;
	MS_NORMAL_MODE <= OUT_3H_B;

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_D_Latch,
		Q => OUT_3D_D,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_C_Latch,
		Q => OUT_2D_C,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_B_Latch,
		Q => OUT_3H_B,
		QBar => OPEN );

	Latch_2H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2H_K_Latch,
		Q => OUT_2H_K,
		QBar => OPEN );


end;
