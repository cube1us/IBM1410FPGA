-- VHDL for IBM SMS ALD page 12.12.62.1
-- Title: E CYCLE REQUIRED
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/29/2020 2:09:17 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_62_1_E_CYCLE_REQUIRED is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE:	 in STD_LOGIC;
		MS_E_CH_INT_END_OF_TRANSFER:	 in STD_LOGIC;
		MS_E1_REG_FULL:	 in STD_LOGIC;
		MS_E_CYCLE_DOT_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_E_CH_IN_PROCESS:	 in STD_LOGIC;
		MS_E_CH_READY_C:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		MS_E_CH_READY_A:	 in STD_LOGIC;
		PS_E2_REG_FULL:	 in STD_LOGIC;
		MS_E_CH_READY_B:	 in STD_LOGIC;
		PS_E_CYCLE_REQUIRED:	 out STD_LOGIC;
		MS_E_CYCLE_REQUIRED:	 out STD_LOGIC);
end ALD_12_12_62_1_E_CYCLE_REQUIRED;

architecture behavioral of ALD_12_12_62_1_E_CYCLE_REQUIRED is 

	signal OUT_4B_D: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_4D_B: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_4E_F: STD_LOGIC;
	signal OUT_3E_B: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_2F_Q: STD_LOGIC;
	signal OUT_4G_E: STD_LOGIC;
	signal OUT_3G_F: STD_LOGIC;
	signal OUT_4H_R: STD_LOGIC;
	signal OUT_3H_R: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;
	signal OUT_DOT_3F: STD_LOGIC;

begin

	OUT_4B_D <= NOT(PS_E_CH_OUTPUT_MODE AND MS_E_CH_INT_END_OF_TRANSFER AND PS_E_CH_IN_PROCESS );
	OUT_4C_B <= NOT MS_E1_REG_FULL;
	OUT_4D_B <= NOT MS_E_CYCLE_DOT_ANY_LAST_GATE;
	OUT_3D_R <= NOT OUT_DOT_4D;
	OUT_4E_F <= NOT MS_E_CYCLE_DOT_ANY_LAST_GATE;
	OUT_3E_B <= NOT OUT_DOT_4E;
	OUT_3F_C <= NOT MS_E_CH_READY_C;
	OUT_2F_Q <= OUT_DOT_3F;
	OUT_4G_E <= NOT(PS_E_CH_IN_PROCESS AND PS_E_CH_INPUT_MODE AND MS_E_CH_INT_END_OF_TRANSFER );
	OUT_3G_F <= NOT MS_E_CH_READY_A;
	OUT_4H_R <= NOT PS_E2_REG_FULL;
	OUT_3H_R <= NOT MS_E_CH_READY_B;
	OUT_2H_C <= NOT OUT_DOT_3F;
	OUT_DOT_4D <= OUT_4B_D OR OUT_4C_B OR OUT_4D_B;
	OUT_DOT_4E <= OUT_4E_F OR OUT_4G_E OR OUT_4H_R;
	OUT_DOT_3F <= OUT_3D_R OR OUT_3E_B OR OUT_3F_C OR OUT_3G_F OR OUT_3H_R;

	PS_E_CYCLE_REQUIRED <= OUT_2F_Q;
	MS_E_CYCLE_REQUIRED <= OUT_2H_C;


end;
