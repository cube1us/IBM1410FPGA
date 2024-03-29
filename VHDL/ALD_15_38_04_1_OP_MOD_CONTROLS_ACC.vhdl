-- VHDL for IBM SMS ALD page 15.38.04.1
-- Title: OP MOD CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/4/2023 2:39:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_38_04_1_OP_MOD_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_2:	 in STD_LOGIC;
		PS_I_RING_1_TIME:	 in STD_LOGIC;
		PS_2_CHAR_ONLY_OP_CODES:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_I_RING_6_TIME:	 in STD_LOGIC;
		PS_1_ADDR_PLUS_MOD_OP_CODES:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_I_RING_11_TIME:	 in STD_LOGIC;
		PS_2_ADDR_PLUS_MOD_OP_CODES:	 in STD_LOGIC;
		MS_1401_DATA_MOVE_OP:	 in STD_LOGIC;
		PS_A_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_CHAR_TEST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_1401_COND_TEST_OP_CODE:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_I_RING_8_TIME:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_B_CH_NOT_B_AND_NOT_A_BIT:	 in STD_LOGIC;
		PS_I_RING_OP_TIME:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_1401_DATA_MOVE_OP_CODES:	 in STD_LOGIC;
		PS_I_RING_2_TIME:	 in STD_LOGIC;
		PS_SET_OP_MOD_REG:	 out STD_LOGIC;
		PS_OP_MOD_TIME:	 out STD_LOGIC;
		MS_OP_MOD_CHAR_TIME_STAR_ARS:	 out STD_LOGIC;
		MS_1401_DOT_I_CYCLE:	 out STD_LOGIC;
		MS_RESET_OP_MOD_REG:	 out STD_LOGIC;
		PS_1401_DATA_MOVE_SET_OP_MOD:	 out STD_LOGIC);
end ALD_15_38_04_1_OP_MOD_CONTROLS_ACC;

architecture behavioral of ALD_15_38_04_1_OP_MOD_CONTROLS_ACC is 

	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3A_R: STD_LOGIC;
	signal OUT_2A_P: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_1B_H: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_2C_P: STD_LOGIC;
	signal OUT_1C_G: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_1D_K: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_4F_K: STD_LOGIC;
	signal OUT_4G_P: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_4I_NoPin: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_4A_NoPin <= NOT(PS_I_RING_1_TIME AND PS_2_CHAR_ONLY_OP_CODES );
	OUT_3A_R <= NOT PS_2ND_CLOCK_PULSE_2;
	OUT_2A_P <= NOT(PS_B_CH_NOT_WM_BIT AND PS_I_CYCLE );
	OUT_4B_NoPin <= NOT(PS_I_RING_6_TIME AND PS_1_ADDR_PLUS_MOD_OP_CODES );
	OUT_3B_F <= NOT(OUT_4A_NoPin AND OUT_4B_NoPin AND OUT_4C_NoPin );
	OUT_2B_C <= NOT(OUT_DOT_2C AND PS_LOGIC_GATE_D_1 );

	SMS_AEK_1B: entity SMS_AEK
	    port map (
		IN1 => OUT_DOT_2B,	-- Pin P
		OUT1 => OUT_1B_H,
		IN2 => OPEN );

	OUT_4C_NoPin <= NOT(PS_I_RING_11_TIME AND PS_2_ADDR_PLUS_MOD_OP_CODES );
	OUT_3C_D <= NOT(PS_1401_MODE AND PS_I_CYCLE AND MS_1401_DATA_MOVE_OP );
	OUT_2C_P <= NOT(OUT_3C_D );
	OUT_1C_G <= NOT(OUT_DOT_2C AND MS_1401_MODE );
	OUT_4D_D <= NOT(PS_1401_COND_TEST_OP_CODE AND PS_1401_MODE AND PS_LOGIC_GATE_D_1 );
	OUT_1D_K <= NOT(PS_I_CYCLE AND PS_A_CH_NOT_WM_BIT );
	OUT_4E_C <= NOT(PS_I_RING_8_TIME AND PS_B_CH_WM_BIT_2 );
	OUT_4F_K <= NOT(PS_LOGIC_GATE_E_1 AND PS_1401_MODE );
	OUT_4G_P <= NOT(PS_B_CH_NOT_B_AND_NOT_A_BIT AND PS_I_RING_OP_TIME );
	OUT_3G_D <= NOT(OUT_DOT_4E AND OUT_DOT_4G AND OUT_4H_G );
	OUT_2G_C <= NOT OUT_DOT_3G;
	OUT_4H_G <= NOT(PS_1401_DATA_MOVE_OP_CODES AND PS_I_RING_1_TIME );
	OUT_3H_D <= NOT(PS_I_RING_8_TIME AND MS_1401_MODE AND PS_LOGIC_GATE_D_1 );
	OUT_2H_C <= NOT(OUT_3H_D AND MS_PROGRAM_RESET_1 );
	OUT_4I_NoPin <= NOT(PS_1401_DATA_MOVE_OP_CODES AND PS_I_RING_2_TIME );
	OUT_3I_D <= NOT OUT_4I_NoPin;
	OUT_DOT_2B <= OUT_3A_R OR OUT_2A_P OR OUT_2B_C;
	OUT_DOT_2C <= OUT_3B_F OR OUT_2C_P;
	OUT_DOT_1C <= OUT_1C_G OR OUT_1D_K;
	OUT_DOT_4E <= OUT_4D_D OR OUT_4E_C;
	OUT_DOT_4G <= OUT_4F_K OR OUT_4G_P;
	OUT_DOT_3G <= OUT_3G_D OR OUT_2H_C;

	PS_SET_OP_MOD_REG <= OUT_1B_H;
	MS_1401_DOT_I_CYCLE <= OUT_3C_D;
	MS_RESET_OP_MOD_REG <= OUT_2G_C;
	PS_1401_DATA_MOVE_SET_OP_MOD <= OUT_3I_D;
	PS_OP_MOD_TIME <= OUT_DOT_2C;
	MS_OP_MOD_CHAR_TIME_STAR_ARS <= OUT_DOT_1C;


end;
