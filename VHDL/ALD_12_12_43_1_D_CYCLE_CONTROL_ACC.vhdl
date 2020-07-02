-- VHDL for IBM SMS ALD page 12.12.43.1
-- Title: D CYCLE CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 2:08:14 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_43_1_D_CYCLE_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_1_OR_1401_AND_3_TIME:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		PS_SET_D_CYCLE_CTRL_STAR_ARITH:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_ARITH_TYPE_OP_CODES:	 in STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_U_OR_Y:	 in STD_LOGIC;
		PS_I_RING_10_TIME:	 in STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME:	 in STD_LOGIC;
		PS_A_RING_6_TIME:	 in STD_LOGIC;
		MS_1401_MODE_1:	 in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		PS_A_RING_4_TIME:	 in STD_LOGIC;
		MS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		PS_ALTER_ROUTINE:	 in STD_LOGIC;
		PS_2ND_SCAN:	 in STD_LOGIC;
		MS_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_LOGIC_GATE_K:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_2:	 in STD_LOGIC;
		MS_CYCLE_CHECK_ERROR:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_A_BIT:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_B_BIT:	 in STD_LOGIC;
		PS_INSTRUCTION_CHECK_GATE_STAR_1311:	 in STD_LOGIC;
		PS_TABLE_SEARCH_OP_CODE:	 in STD_LOGIC;
		PS_SET_D_CYCLE_CTRL:	 out STD_LOGIC;
		MS_NO_LAST_GATE:	 out STD_LOGIC;
		MS_ALT_ROUTINE_DOT_2ND_SCAN:	 out STD_LOGIC;
		PS_INSTRUCTION_CHECK_GATE:	 out STD_LOGIC);
end ALD_12_12_43_1_D_CYCLE_CONTROL_ACC;

architecture behavioral of ALD_12_12_43_1_D_CYCLE_CONTROL_ACC is 

	signal OUT_4A_P: STD_LOGIC;
	signal OUT_1A_C: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_1B_P: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_3C_E: STD_LOGIC;
	signal OUT_1C_K: STD_LOGIC;
	signal OUT_4D_P: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_4E_P: STD_LOGIC;
	signal OUT_3E_K: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_2E_G_Latch: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_1E_C_Latch: STD_LOGIC;
	signal OUT_3F_K: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_2F: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;

begin

	OUT_4A_P <= NOT(PS_I_RING_1_OR_1401_AND_3_TIME AND PS_B_CH_WM_BIT_2 );
	OUT_1A_C <= NOT(OUT_DOT_4A AND OUT_DOT_4C AND OUT_3C_E );
	OUT_4B_G <= NOT(PS_I_CYCLE AND PS_ARITH_TYPE_OP_CODES );
	OUT_1B_P <= NOT(MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE AND MS_FILE_OP_DOT_D_CY_DOT_U_OR_Y );
	OUT_4C_C <= NOT(PS_I_RING_6_OR_1401_AND_8_TIME AND PS_B_CH_WM_BIT_2 );
	OUT_3C_E <= NOT(PS_I_RING_10_TIME AND PS_A_RING_6_TIME AND MS_1401_MODE_1 );
	OUT_1C_K <= NOT(OUT_3D_C AND OUT_3E_K );
	OUT_4D_P <= NOT(PS_I_CYCLE AND PS_MPLY_OR_DIV_OP_CODES );
	OUT_3D_C <= NOT(PS_I_RING_10_TIME AND PS_1401_MODE_1 AND PS_A_RING_4_TIME );
	OUT_1D_C <= NOT OUT_1E_C;
	OUT_4E_P <= NOT(PS_ALTER_ROUTINE AND PS_2ND_SCAN );
	OUT_3E_K <= OUT_4E_P;
	OUT_2E_G_Latch <= NOT(OUT_1E_C AND MS_LOGIC_GATE_A_1 );
	OUT_1E_C_Latch <= NOT(OUT_2E_G AND OUT_DOT_2F );
	OUT_3F_K <= NOT(PS_LOGIC_GATE_K AND MS_ANY_LAST_GATE );
	OUT_2F_R <= NOT PS_2ND_CLOCK_PULSE_3_JRJ;
	OUT_4G_D <= NOT(PS_OP_MOD_REG_NOT_8_BIT AND PS_OP_MOD_REG_NOT_A_BIT AND PS_OP_MOD_REG_NOT_B_BIT );
	OUT_3G_E <= NOT(OUT_4G_D AND PS_LAST_INSN_RO_CYCLE_2 AND PS_TABLE_SEARCH_OP_CODE );
	OUT_1G_C <= NOT(OUT_1D_C AND OUT_3G_E AND MS_CYCLE_CHECK_ERROR );
	OUT_DOT_4A <= OUT_4A_P OR OUT_4B_G;
	OUT_DOT_1A <= OUT_1A_C OR OUT_1B_P OR PS_SET_D_CYCLE_CTRL_STAR_ARITH OR OUT_1C_K;
	OUT_DOT_2F <= OUT_3F_K OR OUT_2F_R;
	OUT_DOT_1G <= OUT_1G_C OR PS_INSTRUCTION_CHECK_GATE_STAR_1311;
	OUT_DOT_4C <= OUT_4C_C OR OUT_4D_P;

	MS_NO_LAST_GATE <= OUT_1D_C;
	MS_ALT_ROUTINE_DOT_2ND_SCAN <= OUT_3E_K;
	PS_SET_D_CYCLE_CTRL <= OUT_DOT_1A;
	PS_INSTRUCTION_CHECK_GATE <= OUT_DOT_1G;

	Latch_2E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2E_G_Latch,
		Q => OUT_2E_G,
		QBar => OPEN );

	Latch_1E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1E_C_Latch,
		Q => OUT_1E_C,
		QBar => OPEN );


end;