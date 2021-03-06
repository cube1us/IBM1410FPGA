-- VHDL for IBM SMS ALD page 17.12.04.1
-- Title: EDIT LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 1:00:57 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_12_04_1_EDIT_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_NOT_DECIMAL:	 in STD_LOGIC;
		MS_NOT_0_SUPPRESS:	 in STD_LOGIC;
		PS_EDIT_OP_CODE:	 in STD_LOGIC;
		MS_LAST_INSN_RO_AND_LOGIC_GATE:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_DECIMAL:	 in STD_LOGIC;
		PS_2ND_SCAN:	 in STD_LOGIC;
		PS_0_SUPPRESS:	 in STD_LOGIC;
		PS_NOT_DECIMAL_CONTROL:	 out STD_LOGIC;
		MS_DECIMAL_CONTROL:	 out STD_LOGIC;
		PS_DECIMAL_CONTROL:	 out STD_LOGIC);
end ALD_17_12_04_1_EDIT_LATCHES;

architecture behavioral of ALD_17_12_04_1_EDIT_LATCHES is 

	signal OUT_4D_G: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_3D_R_Latch: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_2D_C_Latch: STD_LOGIC;
	signal OUT_1D_A: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_1E_E: STD_LOGIC;
	signal OUT_2F_F: STD_LOGIC;
	signal OUT_2F_F_Latch: STD_LOGIC;
	signal OUT_1F_NoPin: STD_LOGIC;
	signal OUT_1F_NoPin_Latch: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_1G_D: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_4D_G <= NOT(MS_NOT_DECIMAL AND MS_NOT_0_SUPPRESS AND PS_EXTENSION_LATCH );
	OUT_3D_R_Latch <= NOT(OUT_DOT_4D AND OUT_2D_C );
	OUT_2D_C_Latch <= NOT(OUT_3D_R AND PS_EDIT_OP_CODE AND MS_LAST_INSN_RO_AND_LOGIC_GATE );
	OUT_1D_A <= OUT_2D_C;
	OUT_4E_G <= NOT(PS_LAST_LOGIC_GATE_1 AND PS_2ND_SCAN );
	OUT_1E_E <= NOT OUT_1F_NoPin;
	OUT_2F_F_Latch <= NOT(MS_I_RING_OP_TIME AND OUT_1F_NoPin );
	OUT_1F_NoPin_Latch <= NOT(OUT_2F_F AND OUT_DOT_3G );
	OUT_3G_E <= NOT(PS_EDIT_OP_CODE AND PS_LAST_LOGIC_GATE_1 AND PS_DECIMAL );
	OUT_1G_D <= NOT OUT_2F_F;
	OUT_3H_C <= NOT(PS_2ND_SCAN AND PS_0_SUPPRESS AND PS_EXTENSION_LATCH );
	OUT_DOT_4D <= OUT_4D_G OR OUT_4E_G;
	OUT_DOT_3G <= OUT_3G_E OR OUT_3H_C;

	PS_NOT_DECIMAL_CONTROL <= OUT_1D_A;
	MS_DECIMAL_CONTROL <= OUT_1E_E;
	PS_DECIMAL_CONTROL <= OUT_1G_D;

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_R_Latch,
		Q => OUT_3D_R,
		QBar => OPEN );

	Latch_2D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2D_C_Latch,
		Q => OUT_2D_C,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_F_Latch,
		Q => OUT_2F_F,
		QBar => OPEN );

	Latch_1F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1F_NoPin_Latch,
		Q => OUT_1F_NoPin,
		QBar => OPEN );


end;
