-- VHDL for IBM SMS ALD page 17.12.03.1
-- Title: EDIT LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 10:52:49 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_12_03_1_EDIT_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_WM_BIT:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_E_OR_Z_OP_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_NOT_CTRL_0:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_NOT_BLANK:	 in STD_LOGIC;
		PS_NOT_DECIMAL_CONTROL:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_2ND_SCAN:	 in STD_LOGIC;
		PS_NOT_COMMA:	 in STD_LOGIC;
		PS_NOT_MINUS_SYMBOL:	 in STD_LOGIC;
		PS_NOT_DECIMAL:	 in STD_LOGIC;
		PS_NOT_SIG_DIGIT:	 in STD_LOGIC;
		MS_1ST_SCAN:	 in STD_LOGIC;
		MS_MQ_LATCH:	 in STD_LOGIC;
		MS_3RD_SCAN:	 in STD_LOGIC;
		PS_0_SUPPRESS:	 out STD_LOGIC;
		MS_0_SUPPRESS:	 out STD_LOGIC);
end ALD_17_12_03_1_EDIT_LATCHES;

architecture behavioral of ALD_17_12_03_1_EDIT_LATCHES is 

	signal OUT_5A_B: STD_LOGIC;
	signal OUT_5A_B_Latch: STD_LOGIC;
	signal OUT_4A_D: STD_LOGIC;
	signal OUT_4A_D_Latch: STD_LOGIC;
	signal OUT_3A_NoPin: STD_LOGIC;
	signal OUT_3A_NoPin_Latch: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin_Latch: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_2B_E_Latch: STD_LOGIC;
	signal OUT_1B_B: STD_LOGIC;
	signal OUT_5C_R: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_3D_E: STD_LOGIC;
	signal OUT_1D_B: STD_LOGIC;
	signal OUT_5E_G: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_5G_G: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_3H_D_Latch: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;

begin

	OUT_5A_B_Latch <= NOT(OUT_4A_D AND MS_LOGIC_GATE_D_1 );
	OUT_4A_D_Latch <= NOT(OUT_5A_B AND OUT_3D_E AND OUT_3H_D );
	OUT_3A_NoPin_Latch <= NOT(OUT_4A_D AND PS_LOGIC_GATE_C_1 );
	OUT_3B_NoPin_Latch <= NOT(MS_LOGIC_GATE_B_1 AND OUT_2B_E );
	OUT_2B_E_Latch <= NOT(OUT_3A_NoPin AND OUT_3B_NoPin );
	OUT_1B_B <= OUT_2B_E;
	OUT_5C_R <= NOT(PS_ASSEMBLY_CH_WM_BIT AND PS_1ST_SCAN );
	OUT_4D_C <= NOT(OUT_5C_R AND OUT_DOT_5E );
	OUT_3D_E <= NOT(OUT_4D_C AND PS_E_OR_Z_OP_DOT_B_CYCLE AND PS_LAST_LOGIC_GATE_1 );
	OUT_1D_B <= NOT(OUT_1B_B );
	OUT_5E_G <= NOT(PS_2ND_SCAN AND PS_NOT_CTRL_0 AND PS_EXTENSION_LATCH );
	OUT_5F_C <= NOT(PS_NOT_BLANK AND PS_NOT_DECIMAL_CONTROL AND PS_NOT_SIG_DIGIT );
	OUT_5G_G <= NOT(PS_NOT_COMMA AND PS_NOT_MINUS_SYMBOL AND PS_NOT_DECIMAL );
	OUT_5H_NoPin <= NOT(PS_2ND_SCAN AND PS_NOT_SIG_DIGIT AND PS_EXTENSION_LATCH );
	OUT_4H_D <= NOT(OUT_5H_NoPin AND MS_1ST_SCAN );
	OUT_3H_D_Latch <= NOT(OUT_2B_E AND OUT_DOT_4H AND PS_LAST_LOGIC_GATE_1 );
	OUT_4I_G <= NOT(MS_MQ_LATCH AND MS_3RD_SCAN );
	OUT_DOT_5E <= OUT_5E_G OR OUT_5F_C OR OUT_5G_G;
	OUT_DOT_4H <= OUT_4H_D OR OUT_4I_G;

	PS_0_SUPPRESS <= OUT_1B_B;
	MS_0_SUPPRESS <= OUT_1D_B;

	Latch_5A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5A_B_Latch,
		Q => OUT_5A_B,
		QBar => OPEN );

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_D_Latch,
		Q => OUT_4A_D,
		QBar => OPEN );

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_NoPin_Latch,
		Q => OUT_3A_NoPin,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_NoPin_Latch,
		Q => OUT_3B_NoPin,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_E_Latch,
		Q => OUT_2B_E,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_D_Latch,
		Q => OUT_3H_D,
		QBar => OPEN );


end;
