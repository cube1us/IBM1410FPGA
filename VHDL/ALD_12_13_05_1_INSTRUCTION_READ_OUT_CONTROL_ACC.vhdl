-- VHDL for IBM SMS ALD page 12.13.05.1
-- Title: INSTRUCTION READ OUT CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/2/2020 5:32:17 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_13_05_1_INSTRUCTION_READ_OUT_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		PS_NO_D_CY_AT_I_RING_6_OPS:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		PS_I_RING_2_TIME:	 in STD_LOGIC;
		PS_2_CHAR_ONLY_OP_CODES:	 in STD_LOGIC;
		PS_I_RING_1_TIME:	 in STD_LOGIC;
		PS_NO_C_OR_D_CYCLE_OP_CODES:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_COND:	 in STD_LOGIC;
		PS_I_RING_7_TIME:	 in STD_LOGIC;
		PS_1_ADDR_PLUS_MOD_OP_CODES:	 in STD_LOGIC;
		PS_I_RING_11_TIME:	 in STD_LOGIC;
		PS_2_ADDR_NO_MOD_OP_CODES:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_I_RING_12_TIME:	 in STD_LOGIC;
		PS_2_ADDR_PLUS_MOD_OP_CODES:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		PS_I_RING_1_OR_1401_AND_3_TIME:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_ARITH_TYPE_OP_CODES:	 in STD_LOGIC;
		PS_I_RING_6_OR_1401_AND_8_TIME:	 in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 out STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_2:	 out STD_LOGIC;
		MS_LAST_INSN_RO_CYCLE:	 out STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_1:	 out STD_LOGIC;
		PS_1401_I_CYCLE_NEXT:	 out STD_LOGIC);
end ALD_12_13_05_1_INSTRUCTION_READ_OUT_CONTROL_ACC;

architecture behavioral of ALD_12_13_05_1_INSTRUCTION_READ_OUT_CONTROL_ACC is 

	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_2B_F: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_3C_F: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_1C_G: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_4F_NoPin: STD_LOGIC;
	signal OUT_3F_F: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_3G_R: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_E: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_4I_F: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_1I_H: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_4B_NoPin <= NOT(PS_I_RING_6_TIME AND PS_NO_D_CY_AT_I_RING_6_OPS );
	OUT_2B_F <= NOT PS_B_CH_WM_BIT_2;
	OUT_4C_NoPin <= NOT(PS_2_CHAR_ONLY_OP_CODES AND PS_I_RING_2_TIME );
	OUT_3C_F <= NOT(OUT_4B_NoPin AND OUT_4C_NoPin AND OUT_4D_NoPin );
	OUT_2C_C <= NOT OUT_DOT_3C;
	OUT_1C_G <= OUT_DOT_2E;
	OUT_4D_NoPin <= NOT(PS_I_RING_1_TIME AND PS_NO_C_OR_D_CYCLE_OP_CODES );
	OUT_2D_D <= NOT OUT_DOT_2D;
	OUT_4E_NoPin <= NOT(PS_I_RING_7_TIME AND PS_1_ADDR_PLUS_MOD_OP_CODES );
	OUT_4F_NoPin <= NOT(PS_I_RING_11_TIME AND PS_2_ADDR_NO_MOD_OP_CODES );
	OUT_3F_F <= NOT(OUT_4E_NoPin AND OUT_4F_NoPin AND OUT_4G_NoPin );
	OUT_4G_NoPin <= NOT(PS_I_RING_12_TIME AND PS_2_ADDR_PLUS_MOD_OP_CODES );
	OUT_3G_R <= NOT PS_I_CYCLE;
	OUT_1G_C <= NOT OUT_DOT_2E;
	OUT_5H_NoPin <= NOT(PS_I_RING_1_OR_1401_AND_3_TIME AND PS_ARITH_TYPE_OP_CODES );
	OUT_4H_E <= NOT(MS_I_RING_OP_TIME AND PS_1401_MODE_1 AND PS_I_CYCLE );
	OUT_3H_G <= NOT(OUT_DOT_4H );
	OUT_5I_NoPin <= NOT(PS_MPLY_OR_DIV_OP_CODES AND PS_I_RING_6_OR_1401_AND_8_TIME );
	OUT_4I_F <= NOT(OUT_5H_NoPin AND OUT_5I_NoPin );
	OUT_3I_D <= NOT(OUT_DOT_4H );
	OUT_1I_H <= OUT_DOT_2E;
	OUT_DOT_3C <= OUT_3C_F OR OUT_3F_F OR OUT_3H_G;
	OUT_DOT_2D <= OUT_2B_F OR OUT_2C_C OR OUT_3G_R;
	OUT_DOT_4H <= OUT_4H_E OR OUT_4I_F;
	OUT_DOT_2E <= OUT_2D_D OR PS_LAST_INSN_RO_CYCLE_COND;

	PS_LAST_INSN_RO_CYCLE <= OUT_1C_G;
	PS_LAST_INSN_RO_CYCLE_2 <= OUT_1C_G;
	MS_LAST_INSN_RO_CYCLE <= OUT_1G_C;
	PS_1401_I_CYCLE_NEXT <= OUT_3I_D;
	PS_LAST_INSN_RO_CYCLE_1 <= OUT_1I_H;


end;