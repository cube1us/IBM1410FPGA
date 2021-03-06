-- VHDL for IBM SMS ALD page 12.12.21.1
-- Title: B AND D CYCLE CTRL LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 5/23/2022 2:53:11 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_21_1_B_AND_D_CYCLE_CTRL_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_1401_I_O_SET_BRANCH_CNDS:	 in STD_LOGIC;
		PS_SET_B_CYCLE_CTRL:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_NEXT_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_SET_D_CYCLE_CTRL:	 in STD_LOGIC;
		MS_DISPLAY_ROUTINE:	 in STD_LOGIC;
		MS_ALTER_ROUTINE:	 in STD_LOGIC;
		PS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		PS_CONSOLE_STROBE:	 in STD_LOGIC;
		PS_B_CYCLE_CTRL:	 out STD_LOGIC;
		MS_B_CYCLE_CTRL:	 out STD_LOGIC;
		PS_D_CYCLE_CTRL:	 out STD_LOGIC;
		MS_D_CYCLE_CTRL:	 out STD_LOGIC;
		MS_DISPLAY_OR_ALTER:	 out STD_LOGIC;
		PS_DISPLAY_OR_ALTER:	 out STD_LOGIC;
		MS_DISPLAY_OR_ALTER_SET_2ND_SCAN:	 out STD_LOGIC);
end ALD_12_12_21_1_B_AND_D_CYCLE_CTRL_LATCHES;

architecture behavioral of ALD_12_12_21_1_B_AND_D_CYCLE_CTRL_LATCHES is 

	signal OUT_2A_C: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_4B_D_Latch: STD_LOGIC;
	signal OUT_3B_E: STD_LOGIC;
	signal OUT_3B_E_Latch: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_1B_Q: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2E_C: STD_LOGIC;
	signal OUT_4F_P: STD_LOGIC;
	signal OUT_4F_P_Latch: STD_LOGIC;
	signal OUT_3F_NoPin: STD_LOGIC;
	signal OUT_3F_NoPin_Latch: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_5H_P_Latch: STD_LOGIC;
	signal OUT_2H_G: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_3I_D_Latch: STD_LOGIC;

begin

	OUT_2A_C <= NOT OUT_4B_D;
	OUT_4B_D_Latch <= NOT(MS_LOGIC_GATE_D_1 AND MS_PROGRAM_RESET_1 AND OUT_3B_E );
	OUT_3B_E_Latch <= NOT(OUT_4B_D AND MS_1401_I_O_SET_BRANCH_CNDS AND OUT_4C_C );
	OUT_2B_D <= NOT OUT_2A_C;
	OUT_1B_Q <= OUT_2B_D;
	OUT_4C_C <= NOT(PS_SET_B_CYCLE_CTRL AND PS_NEXT_TO_LAST_LOGIC_GATE );
	OUT_2E_C <= NOT OUT_4F_P;
	OUT_4F_P_Latch <= NOT(MS_PROGRAM_RESET_1 AND MS_LOGIC_GATE_D_1 AND OUT_3F_NoPin );
	OUT_3F_NoPin_Latch <= NOT(OUT_4F_P AND OUT_4G_K AND OUT_3I_D );
	OUT_4G_K <= NOT(PS_NEXT_TO_LAST_LOGIC_GATE AND PS_SET_D_CYCLE_CTRL );
	OUT_2G_B <= NOT OUT_3F_NoPin;
	OUT_5H_P_Latch <= NOT(MS_DISPLAY_ROUTINE AND MS_ALTER_ROUTINE );
	OUT_2H_G <= NOT(OUT_5H_P );
	OUT_3I_D_Latch <= NOT(OUT_5H_P AND PS_LOGIC_GATE_A_1 AND PS_CONSOLE_STROBE );

	PS_B_CYCLE_CTRL <= OUT_2A_C;
	MS_B_CYCLE_CTRL <= OUT_1B_Q;
	PS_D_CYCLE_CTRL <= OUT_2E_C;
	MS_D_CYCLE_CTRL <= OUT_2G_B;
	PS_DISPLAY_OR_ALTER <= OUT_5H_P;
	MS_DISPLAY_OR_ALTER <= OUT_2H_G;
	MS_DISPLAY_OR_ALTER_SET_2ND_SCAN <= OUT_3I_D;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_D_Latch,
		Q => OUT_4B_D,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_E_Latch,
		Q => OUT_3B_E,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_P_Latch,
		Q => OUT_4F_P,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_NoPin_Latch,
		Q => OUT_3F_NoPin,
		QBar => OPEN );

	Latch_5H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5H_P_Latch,
		Q => OUT_5H_P,
		QBar => OPEN );

	Latch_3I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3I_D_Latch,
		Q => OUT_3I_D,
		QBar => OPEN );


end;
