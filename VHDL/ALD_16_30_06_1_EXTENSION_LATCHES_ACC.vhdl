-- VHDL for IBM SMS ALD page 16.30.06.1
-- Title: EXTENSION LATCHES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/4/2020 11:37:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_30_06_1_EXTENSION_LATCHES_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_SET_EXTN_CTRL_LATCH:	 in STD_LOGIC;
		PS_RGEN_EXT_CTRL:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		MS_EXTENSION_CTRL_LATCH:	 out STD_LOGIC;
		MS_EXTENSION_LATCH:	 out STD_LOGIC;
		PS_EXTENSION_LATCH:	 out STD_LOGIC;
		LAMP_15A1J08:	 out STD_LOGIC);
end ALD_16_30_06_1_EXTENSION_LATCHES_ACC;

architecture behavioral of ALD_16_30_06_1_EXTENSION_LATCHES_ACC is 

	signal OUT_5A_R: STD_LOGIC;
	signal OUT_5B_D: STD_LOGIC;
	signal OUT_5B_D_Latch: STD_LOGIC;
	signal OUT_5C_E: STD_LOGIC;
	signal OUT_5C_E_Latch: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_4C_C_Latch: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin_Latch: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_3F_E_Latch: STD_LOGIC;
	signal OUT_2F_G: STD_LOGIC;
	signal OUT_2F_G_Latch: STD_LOGIC;
	signal OUT_1F_K: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_2G_C_Latch: STD_LOGIC;

begin

	OUT_5A_R <= NOT(PS_NEXT_TO_LAST_LOGIC_GATE AND PS_SET_EXTN_CTRL_LATCH );
	OUT_5B_D_Latch <= NOT(PS_NEXT_TO_LAST_LOGIC_GATE AND OUT_2G_C AND PS_RGEN_EXT_CTRL );
	OUT_5C_E_Latch <= NOT(MS_LOGIC_GATE_D_1 AND MS_PROGRAM_RESET_5 AND OUT_4C_C );
	OUT_4C_C_Latch <= NOT(OUT_5A_R AND OUT_5B_D AND OUT_5C_E );
	OUT_3E_NoPin_Latch <= NOT(OUT_4C_C AND PS_LOGIC_GATE_C_1 );
	OUT_2E_E <= NOT OUT_1F_K;
	LAMP_15A1J08 <= OUT_2E_E;
	OUT_3F_E_Latch <= NOT(MS_LOGIC_GATE_B_1 AND MS_PROGRAM_RESET_5 AND OUT_2F_G );
	OUT_2F_G_Latch <= NOT(OUT_3E_NoPin AND OUT_3F_E );
	OUT_1F_K <= NOT OUT_2F_G;

	SMS_AEK_2G: entity SMS_AEK
	    port map (
		IN1 => OUT_3F_E,	-- Pin D
		OUT1 => OUT_2G_C_Latch,
		IN2 => OPEN );


	MS_EXTENSION_CTRL_LATCH <= OUT_5C_E;
	MS_EXTENSION_LATCH <= OUT_1F_K;
	PS_EXTENSION_LATCH <= OUT_2G_C;

	Latch_5B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5B_D_Latch,
		Q => OUT_5B_D,
		QBar => OPEN );

	Latch_5C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5C_E_Latch,
		Q => OUT_5C_E,
		QBar => OPEN );

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_C_Latch,
		Q => OUT_4C_C,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_NoPin_Latch,
		Q => OUT_3E_NoPin,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_E_Latch,
		Q => OUT_3F_E,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_G_Latch,
		Q => OUT_2F_G,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_C_Latch,
		Q => OUT_2G_C,
		QBar => OPEN );


end;