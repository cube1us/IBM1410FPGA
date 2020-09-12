-- VHDL for IBM SMS ALD page 15.49.01.1
-- Title: BLANK ASSEMBLY CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/12/2020 1:27:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN:	 in STD_LOGIC;
		PS_COMPARE_TYPE_OP_CODES:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN:	 in STD_LOGIC;
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT:	 in STD_LOGIC;
		MS_STOP_AT_F_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_A_CH_INVALID:	 in STD_LOGIC;
		MV_ASTERISK_INS_CONSOLE_SW_OFF:	 in STD_LOGIC;
		PS_LOAD_CYCLE:	 in STD_LOGIC;
		PS_USE_NO_WM_STAR_EDIT:	 in STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE:	 in STD_LOGIC;
		PS_MOVE_CYCLE:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PB_1401_MODE:	 in STD_LOGIC;
		MS_X_CYCLE_DOT_NOT_CR_DISABLE:	 in STD_LOGIC;
		MS_MPLY_DOT_N_DOT_C:	 in STD_LOGIC;
		PS_A_OR_B_CYCLE:	 in STD_LOGIC;
		PS_C_CYCLE:	 in STD_LOGIC;
		PS_CLEAR_WORD_MARK_OP_CODE:	 in STD_LOGIC;
		PB_B_CH_NOT_GROUP_MARK_WM:	 in STD_LOGIC;
		PS_A_RING_3_TIME:	 in STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		PB_ANY_LIST_INPUT_CYCLE:	 in STD_LOGIC;
		PS_USE_NO_ZONES_STAR_ARITH:	 in STD_LOGIC;
		PS_USE_NO_ZONES_STAR_EDIT:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_OUTPUT_CYCLE:	 in STD_LOGIC;
		MS_WRITE_EDIT_BLANK:	 in STD_LOGIC;
		PS_A_CH_VALID_OR_AST_SWITCH_OFF:	 in STD_LOGIC;
		PS_A_CH_CHAR_A_BIT_ONLY:	 in STD_LOGIC;
		PS_EVEN_PARITY_CYCLE:	 in STD_LOGIC;
		MB_A_OR_S_DOT_B_DOT_Y_OR_X_DOT_S_OR_NOT_BW_DOT_1401:	 in STD_LOGIC;
		PS_OUTPUT_WM_CYCLE:	 in STD_LOGIC;
		PB_OUTPUT_WM_CYCLE:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_OUTPUT_CYCLE:	 in STD_LOGIC;
		PB_USE_NO_WM:	 out STD_LOGIC;
		MS_1401_STORE_AR_DOT_C_CYCLE:	 out STD_LOGIC;
		MB_USE_NO_ZONES:	 out STD_LOGIC;
		MB_USE_NO_NUMERICS:	 out STD_LOGIC);
end ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC;

architecture behavioral of ALD_15_49_01_1_BLANK_ASSEMBLY_CONTROL_ACC is 

	signal OUT_5A_K: STD_LOGIC;
	signal OUT_4A_G: STD_LOGIC;
	signal OUT_3A_G: STD_LOGIC;
	signal OUT_2A_C: STD_LOGIC;
	signal OUT_1A_R: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_4C_P: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_G: STD_LOGIC;
	signal OUT_1C_K: STD_LOGIC;
	signal OUT_5D_K: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_1D_B: STD_LOGIC;
	signal OUT_4E_B: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_1E_R: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_1F_B: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_1G_A: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_1H_B: STD_LOGIC;
	signal OUT_2I_F: STD_LOGIC;
	signal OUT_1I_B: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;
	signal OUT_DOT_2H: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;

begin

	OUT_5A_K <= NOT(PS_COMPARE_TYPE_OP_CODES AND PS_B_CYCLE_1 );
	OUT_4A_G <= NOT(PS_LOAD_CYCLE AND PS_INPUT_CYCLE_NOT_LAST_INPUT );
	OUT_3A_G <= NOT(PS_B_CYCLE_1 AND PS_1401_STORE_AR_OP_CODES );
	OUT_2A_C <= NOT(OUT_5A_K AND OUT_3A_G AND MS_B_CYCLE_DOT_NO_SCAN );
	OUT_1A_R <= NOT(MS_STOP_AT_H_DOT_B_CY_DOT_1ST_SCAN );
	OUT_4B_G <= NOT(PS_A_CH_INVALID AND MV_ASTERISK_INS_CONSOLE_SW_OFF );
	OUT_3B_D <= NOT(MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT AND OUT_5D_K AND MS_STOP_AT_F_DOT_B_CYCLE );
	OUT_2B_D <= NOT(OUT_DOT_4B AND MS_MPLY_DOT_N_DOT_C AND OUT_4C_P );
	OUT_1B_C <= NOT OUT_DOT_2B;
	OUT_4C_P <= NOT(PS_MOVE_CYCLE AND PS_OUTPUT_CYCLE );
	OUT_3C_C <= NOT OUT_DOT_2C;
	OUT_2C_G <= NOT(MS_FILE_OP_DOT_D_CYCLE );
	OUT_1C_K <= NOT OUT_DOT_1F;
	OUT_5D_K <= NOT(PS_C_CYCLE AND PS_1401_STORE_AR_OP_CODES );
	OUT_4D_C <= NOT(PS_CLEAR_WORD_MARK_OP_CODE AND PS_A_OR_B_CYCLE );
	OUT_2D_E <= NOT(OUT_4D_C AND OUT_DOT_1D AND MS_X_CYCLE_DOT_NOT_CR_DISABLE );
	OUT_1D_B <= NOT MS_CONTROL_REG_DISABLE;
	OUT_4E_B <= NOT OUT_1E_R;
	OUT_3E_E <= NOT(PS_1401_STORE_AR_OP_CODES AND PS_A_RING_3_TIME AND PS_A_CYCLE );
	OUT_2E_E <= NOT(OUT_3E_E AND OUT_DOT_1D AND MS_WRITE_EDIT_BLANK );
	OUT_1E_R <= NOT PS_LOAD_CYCLE;
	OUT_4F_E <= NOT(PS_X_CYCLE AND MS_1401_MODE AND MS_CONTROL_REG_DISABLE );
	OUT_2F_C <= NOT(OUT_4F_E AND OUT_4G_C AND OUT_DOT_3H );
	OUT_1F_B <= NOT(OUT_4E_B AND PB_1401_MODE AND PB_ANY_LIST_INPUT_CYCLE AND PB_B_CH_NOT_GROUP_MARK_WM );
	OUT_4G_C <= NOT(PS_OUTPUT_CYCLE AND PS_OUTPUT_WM_CYCLE );
	OUT_1G_A <= NOT OUT_DOT_2G;
	OUT_4H_G <= NOT(PS_INPUT_CYCLE_NOT_LAST_INPUT AND PS_EVEN_PARITY_CYCLE );
	OUT_3H_G <= NOT(PS_A_CH_VALID_OR_AST_SWITCH_OFF AND PS_A_CH_CHAR_A_BIT_ONLY );
	OUT_2H_C <= NOT(MS_WRITE_EDIT_BLANK AND MS_MPLY_DOT_N_DOT_C AND OUT_DOT_1D );
	OUT_1H_B <= NOT OUT_DOT_2H;
	OUT_2I_F <= NOT(OUT_DOT_3H );
	OUT_1I_B <= NOT(PB_OUTPUT_WM_CYCLE AND PB_OUTPUT_CYCLE AND PS_B_CH_NOT_WM_BIT );
	OUT_DOT_4B <= OUT_4A_G OR OUT_4B_G;
	OUT_DOT_2B <= OUT_2A_C OR OUT_1A_R OR OUT_3B_D;
	OUT_DOT_2C <= OUT_2B_D OR PS_USE_NO_WM_STAR_EDIT OR OUT_2C_G OR OUT_2D_E;
	OUT_DOT_1D <= OUT_1B_C OR OUT_1D_B;
	OUT_DOT_1F <= OUT_3C_C AND OUT_1F_B;
	OUT_DOT_1G <= OUT_1G_A AND MB_A_OR_S_DOT_B_DOT_Y_OR_X_DOT_S_OR_NOT_BW_DOT_1401;
	OUT_DOT_2G <= OUT_2E_E OR OUT_2F_C OR PS_USE_NO_ZONES_STAR_ARITH OR PS_USE_NO_ZONES_STAR_EDIT;
	OUT_DOT_3H <= OUT_4H_G OR OUT_3H_G;
	OUT_DOT_2H <= OUT_2H_C OR OUT_2I_F;
	OUT_DOT_1H <= OUT_1H_B AND OUT_1I_B;

	PB_USE_NO_WM <= OUT_1C_K;
	MS_1401_STORE_AR_DOT_C_CYCLE <= OUT_5D_K;
	MB_USE_NO_ZONES <= OUT_DOT_1G;
	MB_USE_NO_NUMERICS <= OUT_DOT_1H;


end;
