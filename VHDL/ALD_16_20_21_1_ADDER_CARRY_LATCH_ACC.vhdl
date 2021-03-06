-- VHDL for IBM SMS ALD page 16.20.21.1
-- Title: ADDER CARRY LATCH-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/3/2020 7:05:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_21_1_ADDER_CARRY_LATCH_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_SET_CARRY_LATCH:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_2:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		MS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		MS_CMP_OP_CODES_DOT_1ST_SCAN:	 in STD_LOGIC;
		MB_START_COMPL_INDEX:	 in STD_LOGIC;
		MB_START_COMPL_ADD_1:	 in STD_LOGIC;
		MB_START_COMPL_ADD_2:	 in STD_LOGIC;
		MB_CARRY_LATCH:	 out STD_LOGIC;
		LAMP_15A1A11:	 out STD_LOGIC);
end ALD_16_20_21_1_ADDER_CARRY_LATCH_ACC;

architecture behavioral of ALD_16_20_21_1_ADDER_CARRY_LATCH_ACC is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin_Latch: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_5C_NoPin_Latch: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_4C_D_Latch: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_3E_C_Latch: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_3F_E_Latch: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2F_C_Latch: STD_LOGIC;
	signal OUT_1F_L: STD_LOGIC;
	signal OUT_1F_L_Latch: STD_LOGIC;
	signal OUT_1G_P: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_DOT_2F: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_LAST_LOGIC_GATE_2 AND PS_SET_CARRY_LATCH );
	OUT_5B_NoPin_Latch <= NOT(PS_LAST_LOGIC_GATE_2 AND OUT_1F_L AND PS_A_CYCLE );
	OUT_5C_NoPin_Latch <= NOT(MS_LOGIC_GATE_D_1 AND MS_PROGRAM_RESET_5 AND OUT_4C_D );
	OUT_4C_D_Latch <= NOT(OUT_5A_NoPin AND OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_3E_C_Latch <= NOT(OUT_4C_D AND PS_LOGIC_GATE_C_1 );
	OUT_2E_D <= NOT OUT_3F_E;
	LAMP_15A1A11 <= OUT_2E_D;
	OUT_3F_E_Latch <= NOT(MS_LOGIC_GATE_B_1 AND MS_PROGRAM_RESET_5 AND OUT_DOT_2F );
	OUT_2F_C_Latch <= NOT(OUT_3E_C AND OUT_3F_E AND MS_CMP_OP_CODES_DOT_1ST_SCAN );
	OUT_1F_L_Latch <= OUT_DOT_2F;
	OUT_1G_P <= NOT OUT_1F_L;
	OUT_2H_B <= NOT(MB_START_COMPL_ADD_2 AND MB_START_COMPL_ADD_1 AND MB_START_COMPL_INDEX );
	OUT_DOT_2F <= OUT_2F_C OR OUT_2H_B;

	MB_CARRY_LATCH <= OUT_1G_P;

	Latch_5B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5B_NoPin_Latch,
		Q => OUT_5B_NoPin,
		QBar => OPEN );

	Latch_5C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5C_NoPin_Latch,
		Q => OUT_5C_NoPin,
		QBar => OPEN );

	Latch_4C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4C_D_Latch,
		Q => OUT_4C_D,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_C_Latch,
		Q => OUT_3E_C,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_E_Latch,
		Q => OUT_3F_E,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_C_Latch,
		Q => OUT_2F_C,
		QBar => OPEN );

	Latch_1F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1F_L_Latch,
		Q => OUT_1F_L,
		QBar => OPEN );


end;
