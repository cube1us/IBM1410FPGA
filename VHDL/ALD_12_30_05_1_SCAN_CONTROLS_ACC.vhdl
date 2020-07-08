-- VHDL for IBM SMS ALD page 12.30.05.1
-- Title: SCAN CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/8/2020 10:08:59 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_30_05_1_SCAN_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_1401_TAKE_I_TO_B_CYCLE:	 in STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN:	 in STD_LOGIC;
		MS_FILE_OP_TAKE_EXTENSION_CYCLE:	 in STD_LOGIC;
		MS_LAST_I_CYCLE_B:	 in STD_LOGIC;
		MS_ALT_ROUTINE_DOT_2ND_SCAN:	 in STD_LOGIC;
		MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9:	 in STD_LOGIC;
		PS_SET_NO_SCAN_CTRL_STAR_BR_OPS:	 in STD_LOGIC;
		MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1:	 in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_A:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE_1:	 in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		PS_OP_MOD_REG_NOT_8_BIT:	 in STD_LOGIC;
		PS_1ST_SCAN_FIRST_OP_CODES:	 in STD_LOGIC;
		MS_CLEAR_OP_TAKE_1ST_SCAN:	 in STD_LOGIC;
		MS_DATA_MOVE_A_CYCLE_CTRL_SET:	 in STD_LOGIC;
		MS_G_OP_SET_C_CYCLE_CTRL_B:	 in STD_LOGIC;
		MS_WORD_MARK_OP_DOT_A_CYCLE:	 in STD_LOGIC;
		MS_MPLY_DOT_N_DOT_C:	 in STD_LOGIC;
		PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH:	 in STD_LOGIC;
		MS_EDIT_SET_A_CYCLE_CTRL:	 in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_A:	 in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE:	 in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_C:	 in STD_LOGIC;
		MS_TLU_SET_B_CYCLE_CTRL:	 in STD_LOGIC;
		MS_SET_A_CYCLE_CTRL_ON_Z_OP:	 in STD_LOGIC;
		MS_CMP_MODE_SET_A_CYCLE_CTRL_A:	 in STD_LOGIC;
		MS_TLU_SET_A_CYCLE_CTRL_B:	 in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_A:	 in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_B:	 in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_B:	 in STD_LOGIC;
		PS_SET_NO_SCAN_CTRL:	 out STD_LOGIC;
		PS_SET_1ST_SCAN_CTRL:	 out STD_LOGIC;
		PS_RGEN_1ST_SCAN_CTRL:	 out STD_LOGIC);
end ALD_12_30_05_1_SCAN_CONTROLS_ACC;

architecture behavioral of ALD_12_30_05_1_SCAN_CONTROLS_ACC is 

	signal OUT_2A_C: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_1B_K: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_2C_E: STD_LOGIC;
	signal OUT_4D_R: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2G_G: STD_LOGIC;
	signal OUT_2H_G: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_2A_C <= NOT(MS_1401_TAKE_I_TO_B_CYCLE AND MS_FILE_OP_DOT_D_CY_DOT_2ND_SCAN AND MS_FILE_OP_TAKE_EXTENSION_CYCLE );
	OUT_2B_D <= NOT(MS_ALT_ROUTINE_DOT_2ND_SCAN AND MS_LAST_I_CYCLE_B );
	OUT_1B_K <= NOT(MS_MPLY_DOT_U_OR_Y_DOT_B_DOT_AW_DOT_1 AND MS_FILE_OP_DOT_LAST_INSN_RO_CYCLE );
	OUT_4C_D <= NOT(PS_DATA_MOVE_OP_CODE AND PS_OP_MOD_REG_NOT_8_BIT AND PS_LAST_INSN_RO_CYCLE_1 );
	OUT_2C_E <= NOT(OUT_4C_D AND OUT_4D_R AND MS_STORE_AR_SET_C_CYCLE_CTRL_A );
	OUT_4D_R <= NOT(PS_LAST_INSN_RO_CYCLE_1 AND PS_1ST_SCAN_FIRST_OP_CODES );
	OUT_2D_C <= NOT(MS_CLEAR_OP_TAKE_1ST_SCAN AND MS_MPLY_DOT_N_DOT_C );
	OUT_2E_D <= NOT(MS_G_OP_SET_C_CYCLE_CTRL_B AND MS_DATA_MOVE_A_CYCLE_CTRL_SET AND MS_WORD_MARK_OP_DOT_A_CYCLE );
	OUT_2F_C <= NOT(MS_EDIT_SET_A_CYCLE_CTRL AND MS_EDIT_SET_B_CYCLE_CTRL_A );
	OUT_2G_G <= NOT(MS_STD_A_CYCLE_OPS_DOT_A_CYCLE AND MS_EDIT_SET_B_CYCLE_CTRL_C AND MS_TLU_SET_B_CYCLE_CTRL );
	OUT_2H_G <= NOT(MS_SET_A_CYCLE_CTRL_ON_Z_OP AND MS_CMP_MODE_SET_A_CYCLE_CTRL_A AND MS_TLU_SET_A_CYCLE_CTRL_B );
	OUT_2I_C <= NOT(MS_STORE_AR_SET_C_CYCLE_CTRL_B AND MS_STORE_AR_SET_A_CYCLE_CTRL_A AND MS_STORE_AR_SET_A_CYCLE_CTRL_B );
	OUT_DOT_1B <= OUT_2A_C OR OUT_2B_D OR OUT_1B_K OR PS_MPLY_DOT_MQ_DOT_B_DOT_T_DOT_1_DOT_B1_9 OR PS_SET_NO_SCAN_CTRL_STAR_BR_OPS;
	OUT_DOT_1C <= OUT_2C_E OR OUT_2D_C;
	OUT_DOT_2E <= OUT_2E_D OR PS_REGEN_1ST_SCAN_CTRL_STAR_ARITH OR OUT_2F_C OR OUT_2G_G OR OUT_2H_G OR OUT_2I_C;

	PS_SET_NO_SCAN_CTRL <= OUT_DOT_1B;
	PS_SET_1ST_SCAN_CTRL <= OUT_DOT_1C;
	PS_RGEN_1ST_SCAN_CTRL <= OUT_DOT_2E;


end;
