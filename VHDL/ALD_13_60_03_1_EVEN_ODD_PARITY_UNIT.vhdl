-- VHDL for IBM SMS ALD page 13.60.03.1
-- Title: EVEN-ODD PARITY UNIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/30/2020 1:52:23 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_60_03_1_EVEN_ODD_PARITY_UNIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_1:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_2:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_4:	 in STD_LOGIC;
		PS_E_CH_BUFFER_SELECT:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_T:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_B:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_F:	 in STD_LOGIC;
		MS_E_CH_SEL_ODD_PARITY_STAR_1412_19:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_K:	 in STD_LOGIC;
		PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF:	 in STD_LOGIC;
		MS_E_CH_SELECT_UNIT_U:	 in STD_LOGIC;
		MS_E_CH_SELECT_ANY_BUFFER:	 out STD_LOGIC;
		PS_E_CH_SELECT_ANY_BUFFER:	 out STD_LOGIC;
		PS_E_CH_SELECT_ODD_PARITY_UNIT:	 out STD_LOGIC;
		PS_E_CH_SELECT_7_BIT_UNIT:	 out STD_LOGIC);
end ALD_13_60_03_1_EVEN_ODD_PARITY_UNIT;

architecture behavioral of ALD_13_60_03_1_EVEN_ODD_PARITY_UNIT is 

	signal OUT_5A_E: STD_LOGIC;
	signal OUT_4A_D: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_2C_G: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_2E_R: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_5A_E <= NOT(MS_E_CH_SELECT_UNIT_1 AND MS_E_CH_SELECT_UNIT_2 AND MS_E_CH_SELECT_UNIT_4 );
	OUT_4A_D <= NOT OUT_DOT_5A;
	OUT_3B_C <= NOT OUT_4A_D;
	OUT_2C_G <= NOT(OUT_4A_D AND MS_E_CH_SELECT_UNIT_B AND MS_E_CH_SELECT_UNIT_T );
	OUT_2D_G <= NOT(MS_E_CH_SELECT_UNIT_F AND MS_E_CH_SEL_ODD_PARITY_STAR_1412_19 AND MS_E_CH_SELECT_UNIT_K );
	OUT_2E_R <= NOT(OUT_4A_D AND MS_E_CH_SELECT_UNIT_B );
	OUT_2F_C <= NOT(MS_E_CH_SELECT_UNIT_U );
	OUT_DOT_5A <= OUT_5A_E OR PS_E_CH_BUFFER_SELECT;
	OUT_DOT_1C <= OUT_2C_G OR OUT_2D_G;
	OUT_DOT_2E <= OUT_2E_R OR PS_E_CH_SELECT_7_BIT_UNIT_STAR_SIF OR OUT_2F_C;

	MS_E_CH_SELECT_ANY_BUFFER <= OUT_4A_D;
	PS_E_CH_SELECT_ANY_BUFFER <= OUT_3B_C;
	PS_E_CH_SELECT_ODD_PARITY_UNIT <= OUT_DOT_1C;
	PS_E_CH_SELECT_7_BIT_UNIT <= OUT_DOT_2E;


end;
