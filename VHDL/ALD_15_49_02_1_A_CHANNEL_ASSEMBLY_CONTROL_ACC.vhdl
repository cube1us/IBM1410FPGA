-- VHDL for IBM SMS ALD page 15.49.02.1
-- Title: A CHANNEL ASSEMBLY CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/12/2020 5:27:44 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_49_02_1_A_CHANNEL_ASSEMBLY_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE:	 in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		PS_OP_MOD_REG_4_BIT:	 in STD_LOGIC;
		MS_I_CYCLE:	 in STD_LOGIC;
		PS_LOAD_CYCLE:	 in STD_LOGIC;
		MS_CONTROL_REG_DISABLE:	 in STD_LOGIC;
		PS_BLOCK_USE_A_CH_WM:	 in STD_LOGIC;
		MV_ASTERISK_INS_CONSOLE_SW_OFF:	 in STD_LOGIC;
		MS_A_CH_VALID:	 in STD_LOGIC;
		PS_INPUT_CYCLE:	 in STD_LOGIC;
		MS_F_CH_OUTPUT_WM_CYCLE_STAR_1414_STAR:	 in STD_LOGIC;
		MS_E_CH_LAST_INPUT_CYCLE:	 in STD_LOGIC;
		MS_F_CH_LAST_INPUT_CYCLE:	 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_E_CH_SELECT_UNIT_2:	 in STD_LOGIC;
		PS_E_CH_UNIT_NUMBER_1:	 in STD_LOGIC;
		PB_USE_A_CH_WM:	 out STD_LOGIC;
		PS_A_CH_VALID_OR_AST_SWITCH_OFF:	 out STD_LOGIC;
		PB_OUTPUT_WM_CYCLE:	 out STD_LOGIC;
		PS_INPUT_CYCLE_NOT_LAST_INPUT:	 out STD_LOGIC;
		PS_OUTPUT_WM_CYCLE:	 out STD_LOGIC);
end ALD_15_49_02_1_A_CHANNEL_ASSEMBLY_CONTROL_ACC;

architecture behavioral of ALD_15_49_02_1_A_CHANNEL_ASSEMBLY_CONTROL_ACC is 

	signal OUT_2B_C: STD_LOGIC;
	signal OUT_3C_E: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_1D_M: STD_LOGIC;
	signal OUT_5E_K: STD_LOGIC;
	signal OUT_4G_G: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_2G_P: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_3H_E: STD_LOGIC;
	signal OUT_5I_E: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;

begin

	OUT_2B_C <= NOT(MS_STD_A_CYCLE_OPS_DOT_A_CYCLE AND OUT_3C_E );
	OUT_3C_E <= NOT(PS_DATA_MOVE_OP_CODE AND PS_B_CYCLE_1 AND PS_OP_MOD_REG_4_BIT );
	OUT_1C_D <= NOT OUT_1D_M;
	OUT_3D_D <= NOT(PS_LOAD_CYCLE AND OUT_5E_K AND OUT_4H_D );
	OUT_2D_C <= NOT(MS_I_CYCLE AND OUT_DOT_3D AND MS_CONTROL_REG_DISABLE );
	OUT_1D_M <= NOT OUT_DOT_2D;
	OUT_5E_K <= NOT(MV_ASTERISK_INS_CONSOLE_SW_OFF AND MS_A_CH_VALID );
	OUT_4G_G <= NOT(MS_F_CH_OUTPUT_WM_CYCLE_STAR_1414_STAR );
	OUT_3G_D <= NOT OUT_DOT_3H;
	OUT_2G_P <= NOT OUT_3G_D;
	OUT_5H_NoPin <= NOT(MS_E_CH_LAST_INPUT_CYCLE AND PS_INPUT_CYCLE AND MS_F_CH_LAST_INPUT_CYCLE );
	OUT_4H_D <= NOT OUT_5H_NoPin;
	OUT_3H_E <= NOT(OUT_5I_E );
	OUT_5I_E <= NOT(PS_E_CYCLE AND PS_E_CH_SELECT_UNIT_2 AND PS_E_CH_UNIT_NUMBER_1 );
	OUT_DOT_3H <= OUT_4G_G OR OUT_3H_E;
	OUT_DOT_3D <= OUT_3D_D OR PS_BLOCK_USE_A_CH_WM;
	OUT_DOT_2D <= OUT_2B_C OR OUT_2D_C;

	PB_USE_A_CH_WM <= OUT_1C_D;
	PS_A_CH_VALID_OR_AST_SWITCH_OFF <= OUT_5E_K;
	PB_OUTPUT_WM_CYCLE <= OUT_2G_P;
	PS_INPUT_CYCLE_NOT_LAST_INPUT <= OUT_4H_D;
	PS_OUTPUT_WM_CYCLE <= OUT_DOT_3H;


end;
