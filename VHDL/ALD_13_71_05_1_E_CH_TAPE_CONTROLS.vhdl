-- VHDL for IBM SMS ALD page 13.71.05.1
-- Title: E CH TAPE CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/14/2020 11:11:18 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_71_05_1_E_CH_TAPE_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CH_DISCON_LATCH:	 in STD_LOGIC;
		MC_WRITE_CONDITION_STAR_E_CH:	 in STD_LOGIC;
		PS_E_CH_SELECT_TAPE_DATA:	 in STD_LOGIC;
		PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD:	 in STD_LOGIC;
		PS_A_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_M_OR_L_OP_CODES:	 in STD_LOGIC;
		PS_W_OR_X_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_M_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_E_CH_TAPE_CALL:	 in STD_LOGIC;
		PS_I_RING_7_OR_1401_6_OR_8:	 in STD_LOGIC;
		PS_E_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_UNIT_CTRL_OP_CODE:	 in STD_LOGIC;
		MS_E_CH_BUSY_BUS:	 in STD_LOGIC;
		PS_PERCENT_OR_COML_AT:	 in STD_LOGIC;
		PS_U_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_R_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_B_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MC_DISCONNECT_CALL_STAR_E_CH:	 out STD_LOGIC;
		MC_READ_TAPE_CALL_STAR_E_CH:	 out STD_LOGIC;
		MC_WRITE_TAPE_CALL_STAR_E_CH:	 out STD_LOGIC;
		MC_WRITE_TAPE_MK_CALL_STAR_E_CH:	 out STD_LOGIC;
		MC_ERASE_CALL_STAR_E_CH:	 out STD_LOGIC;
		MC_REWIND_UNLOAD_STAR_E_CH:	 out STD_LOGIC;
		MC_REWIND_CALL_STAR_E_CH:	 out STD_LOGIC;
		MC_BACKSPACE_CALL_STAR_E_CH:	 out STD_LOGIC);
end ALD_13_71_05_1_E_CH_TAPE_CONTROLS;

architecture behavioral of ALD_13_71_05_1_E_CH_TAPE_CONTROLS is 

	signal OUT_5A_B: STD_LOGIC;
	signal OUT_4A_D: STD_LOGIC;
	signal OUT_2A_H: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_4B_E: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_2B_K: STD_LOGIC;
	signal OUT_1B_A: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2C_E: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_3E_P: STD_LOGIC;
	signal OUT_2E_H: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_2F_A: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_1G_E: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_1H_G: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;

begin

	OUT_5A_B <= NOT(MC_WRITE_CONDITION_STAR_E_CH );
	OUT_4A_D <= NOT(OUT_5A_B AND PS_E_CH_DISCON_LATCH AND PS_E_CH_SELECT_TAPE_DATA );
	OUT_2A_H <= OUT_4A_D;
	OUT_5B_C <= NOT(PS_E_CH_TAPE_CALL AND PS_UNIT_CTRL_OP_CODE AND PS_A_SYMBOL_OP_MODIFIER );
	OUT_4B_E <= NOT(PS_DOLLAR_SIGN_OR_R_SYMBOL_OP_MOD AND PS_M_OR_L_OP_CODES AND PS_E_CH_TAPE_CALL );
	OUT_3B_C <= NOT(OUT_5B_C AND OUT_4B_E );
	OUT_2B_K <= NOT(OUT_3B_C );
	OUT_1B_A <= OUT_2B_K;
	OUT_4C_C <= NOT(PS_E_CH_TAPE_CALL AND PS_M_OR_L_OP_CODES AND PS_W_OR_X_SYMBOL_OP_MODIFIER );
	OUT_2C_E <= OUT_4C_C;
	OUT_4D_D <= NOT(PS_E_CH_TAPE_CALL AND PS_M_SYMBOL_OP_MODIFIER AND PS_UNIT_CTRL_OP_CODE );
	OUT_2D_G <= OUT_4D_D;
	OUT_4E_C <= NOT(PS_I_RING_7_OR_1401_6_OR_8 AND PS_UNIT_CTRL_OP_CODE AND PS_E_SYMBOL_OP_MODIFIER );
	OUT_3E_P <= NOT(MS_E_CH_BUSY_BUS AND PS_PERCENT_OR_COML_AT );
	OUT_2E_H <= OUT_DOT_3E;
	OUT_4F_E <= NOT(PS_UNIT_CTRL_OP_CODE AND PS_U_SYMBOL_OP_MODIFIER AND PS_E_CH_TAPE_CALL );
	OUT_2F_A <= OUT_4F_E;
	OUT_4G_C <= NOT(PS_E_CH_TAPE_CALL AND PS_UNIT_CTRL_OP_CODE AND PS_R_SYMBOL_OP_MODIFIER );
	OUT_1G_E <= OUT_4G_C;
	OUT_4H_D <= NOT(PS_E_CH_TAPE_CALL AND PS_UNIT_CTRL_OP_CODE AND PS_B_SYMBOL_OP_MODIFIER );
	OUT_1H_G <= OUT_4H_D;
	OUT_DOT_3E <= OUT_4E_C OR OUT_3E_P;

	MC_DISCONNECT_CALL_STAR_E_CH <= OUT_2A_H;
	MC_READ_TAPE_CALL_STAR_E_CH <= OUT_1B_A;
	MC_WRITE_TAPE_CALL_STAR_E_CH <= OUT_2C_E;
	MC_WRITE_TAPE_MK_CALL_STAR_E_CH <= OUT_2D_G;
	MC_ERASE_CALL_STAR_E_CH <= OUT_2E_H;
	MC_REWIND_UNLOAD_STAR_E_CH <= OUT_2F_A;
	MC_REWIND_CALL_STAR_E_CH <= OUT_1G_E;
	MC_BACKSPACE_CALL_STAR_E_CH <= OUT_1H_G;


end;
