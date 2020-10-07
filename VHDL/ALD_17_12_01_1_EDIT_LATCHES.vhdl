-- VHDL for IBM SMS ALD page 17.12.01.1
-- Title: EDIT LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/7/2020 1:58:49 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_12_01_1_EDIT_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_SIG_DIGIT:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_NOT_CTRL_0:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CYCLE_1:	 in STD_LOGIC;
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		PS_BLK_0_PUNCT_OR_SIG_DIGIT:	 in STD_LOGIC;
		MS_A_CYCLE:	 in STD_LOGIC;
		MS_3RD_SCAN:	 in STD_LOGIC;
		MS_NOT_0_SUPPRESS:	 out STD_LOGIC;
		PS_NOT_0_SUPPRESS:	 out STD_LOGIC;
		MS_LAST_INSN_RO_AND_LOGIC_GATE:	 out STD_LOGIC);
end ALD_17_12_01_1_EDIT_LATCHES;

architecture behavioral of ALD_17_12_01_1_EDIT_LATCHES is 

	signal OUT_5A_B: STD_LOGIC;
	signal OUT_5A_B_Latch: STD_LOGIC;
	signal OUT_4A_G: STD_LOGIC;
	signal OUT_4A_G_Latch: STD_LOGIC;
	signal OUT_3A_P: STD_LOGIC;
	signal OUT_3A_P_Latch: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4B_C_Latch: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_3B_F_Latch: STD_LOGIC;
	signal OUT_2B_NoPin: STD_LOGIC;
	signal OUT_2B_NoPin_Latch: STD_LOGIC;
	signal OUT_1B_E: STD_LOGIC;
	signal OUT_5C_A: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_2C_D_Latch: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_5E_D: STD_LOGIC;
	signal OUT_5F_R: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_3F_NoPin: STD_LOGIC;
	signal OUT_3F_NoPin_Latch: STD_LOGIC;
	signal OUT_4G_G: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;

begin

	OUT_5A_B_Latch <= NOT(OUT_DOT_4A AND MS_LOGIC_GATE_D_1 );
	OUT_4A_G_Latch <= NOT(OUT_5A_B AND OUT_5C_A );
	OUT_3A_P_Latch <= NOT(OUT_DOT_4A AND PS_LOGIC_GATE_C_1 );
	OUT_4B_C_Latch <= NOT(OUT_5D_NoPin AND OUT_3F_NoPin );
	OUT_3B_F_Latch <= NOT(MS_LOGIC_GATE_B_1 AND OUT_2B_NoPin );
	OUT_2B_NoPin_Latch <= NOT(OUT_3A_P AND OUT_3B_F );
	OUT_1B_E <= NOT OUT_2B_NoPin;
	OUT_5C_A <= NOT(PS_LAST_INSN_RO_CYCLE AND PS_LAST_LOGIC_GATE_1 );
	OUT_2C_D_Latch <= NOT OUT_3B_F;
	OUT_5D_NoPin <= NOT(PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION AND PS_LAST_LOGIC_GATE_1 AND PS_SIG_DIGIT );
	OUT_5E_D <= NOT(PS_1ST_SCAN AND PS_NOT_CTRL_0 AND PS_E_OP_DOT_B_CYCLE_1 );
	OUT_5F_R <= NOT(PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION AND PS_BLK_0_PUNCT_OR_SIG_DIGIT );
	OUT_4F_E <= NOT(OUT_5E_D AND OUT_5F_R AND MS_A_CYCLE );
	OUT_3F_NoPin_Latch <= NOT(OUT_2C_D AND PS_LAST_LOGIC_GATE_1 AND OUT_DOT_4F );
	OUT_4G_G <= NOT(MS_3RD_SCAN );
	OUT_DOT_4A <= OUT_4A_G OR OUT_4B_C;
	OUT_DOT_4F <= OUT_4F_E OR OUT_4G_G;

	MS_NOT_0_SUPPRESS <= OUT_1B_E;
	MS_LAST_INSN_RO_AND_LOGIC_GATE <= OUT_5C_A;
	PS_NOT_0_SUPPRESS <= OUT_2C_D;

	Latch_5A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5A_B_Latch,
		Q => OUT_5A_B,
		QBar => OPEN );

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_G_Latch,
		Q => OUT_4A_G,
		QBar => OPEN );

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_P_Latch,
		Q => OUT_3A_P,
		QBar => OPEN );

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_C_Latch,
		Q => OUT_4B_C,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_F_Latch,
		Q => OUT_3B_F,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_NoPin_Latch,
		Q => OUT_2B_NoPin,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_D_Latch,
		Q => OUT_2C_D,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_NoPin_Latch,
		Q => OUT_3F_NoPin,
		QBar => OPEN );


end;
