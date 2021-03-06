-- VHDL for IBM SMS ALD page 15.62.06.1
-- Title: E CH DATA FLOW CTRL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/26/2020 7:52:45 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_62_06_1_E_CH_DATA_FLOW_CTRL is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_E2_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_SET_E2_REG:	 in STD_LOGIC;
		MS_GATE_CONSOLE_TO_ASSEMBLY:	 in STD_LOGIC;
		PS_E1_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_E2_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_E1_REG_WM_BIT:	 in STD_LOGIC;
		MS_E1_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_E1_REG_NOT_WM_BIT:	 in STD_LOGIC;
		MS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_I_CYCLE_1:	 in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_COPY_E1_BCD_TO_E2_REG:	 out STD_LOGIC;
		MS_SET_E2_WORD_SEPARATOR:	 out STD_LOGIC;
		PS_COPY_INV_E1_WM_DOT_C_BIT:	 out STD_LOGIC;
		PS_COPY_E1_WM_DOT_C_BIT:	 out STD_LOGIC);
end ALD_15_62_06_1_E_CH_DATA_FLOW_CTRL;

architecture behavioral of ALD_15_62_06_1_E_CH_DATA_FLOW_CTRL is 

	signal OUT_1A_H: STD_LOGIC;
	signal OUT_5B_F: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_3C_P: STD_LOGIC;
	signal OUT_2C_L: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_3D_H: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_2E_F: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_2G_R: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_2H_R: STD_LOGIC;
	signal OUT_1H_B: STD_LOGIC;
	signal OUT_4I_K: STD_LOGIC;
	signal OUT_2I_B: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin


	SMS_AEK_1A: entity SMS_AEK
	    port map (
		IN1 => PS_E1_REG_WORD_SEPARATOR,	-- Pin P
		IN2 => OUT_DOT_2B,	-- Pin B
		OUT1 => OUT_1A_H );

	OUT_5B_F <= NOT MS_E2_REG_WORD_SEPARATOR;
	OUT_4B_F <= NOT MS_GATE_CONSOLE_TO_ASSEMBLY;
	OUT_4C_E <= NOT(PS_SET_E2_REG AND MS_GATE_CONSOLE_TO_ASSEMBLY );
	OUT_3C_P <= NOT(MS_E2_REG_WORD_SEPARATOR AND PS_E1_REG_WORD_SEPARATOR );
	OUT_2C_L <= OUT_DOT_3C;
	OUT_4D_D <= NOT(PS_E2_REG_WORD_SEPARATOR AND MS_E1_REG_WORD_SEPARATOR AND PS_E_CH_INPUT_MODE );
	OUT_3D_H <= NOT(MS_GATE_CONSOLE_TO_ASSEMBLY );
	OUT_2D_A <= NOT OUT_DOT_3D;
	OUT_4E_G <= NOT(PS_E2_REG_WORD_SEPARATOR AND PS_E1_REG_WORD_SEPARATOR );
	OUT_2E_F <= NOT OUT_DOT_4E;
	OUT_4F_C <= NOT(MS_GATE_CONSOLE_TO_ASSEMBLY AND PS_E_CH_OUTPUT_MODE AND PS_E1_REG_WM_BIT );
	OUT_2F_R <= NOT MS_GATE_CONSOLE_TO_ASSEMBLY;
	OUT_4G_NoPin <= NOT(PS_E1_REG_NOT_WM_BIT AND PS_E1_REG_WORD_SEPARATOR AND PS_E2_REG_WORD_SEPARATOR );
	OUT_2G_R <= NOT OUT_4G_NoPin;
	OUT_4H_C <= NOT(PS_E_CH_INPUT_MODE AND MS_E2_REG_WORD_SEPARATOR );
	OUT_3H_G <= NOT(MS_E_CH_IN_PROCESS AND PS_I_CYCLE_1 );
	OUT_2H_R <= NOT OUT_4H_C;
	OUT_1H_B <= NOT OUT_3H_G;
	OUT_4I_K <= NOT(MS_E1_REG_WORD_SEPARATOR AND PS_E_CH_OUTPUT_MODE );
	OUT_2I_B <= NOT OUT_4I_K;
	OUT_DOT_2B <= OUT_5B_F OR OUT_4B_F;
	OUT_DOT_3C <= OUT_4C_E OR OUT_3C_P;
	OUT_DOT_3D <= OUT_4D_D OR OUT_3D_H;
	OUT_DOT_4E <= OUT_4E_G OR OUT_4F_C;
	OUT_DOT_1H <= OUT_2F_R OR OUT_2G_R OR OUT_2H_R OR OUT_1H_B OR OUT_2I_B;
	OUT_DOT_1D <= OUT_2D_A OR OUT_2E_F;

	PS_COPY_E1_BCD_TO_E2_REG <= OUT_1A_H;
	MS_SET_E2_WORD_SEPARATOR <= OUT_2C_L;
	PS_COPY_E1_WM_DOT_C_BIT <= OUT_DOT_1H;
	PS_COPY_INV_E1_WM_DOT_C_BIT <= OUT_DOT_1D;


end;
