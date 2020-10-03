-- VHDL for IBM SMS ALD page 16.16.07.1
-- Title: SIGN CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/1/2020 2:00:42 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_16_07_1_SIGN_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_B_CH_PLUS:	 in STD_LOGIC;
		PB_USE_B_CH_SIGN:	 in STD_LOGIC;
		PB_B_CH_MINUS:	 in STD_LOGIC;
		PB_USE_INV_B_CH_SIGN:	 in STD_LOGIC;
		PS_A_CH_PLUS:	 in STD_LOGIC;
		PS_USE_A_CH_SIGN:	 in STD_LOGIC;
		PS_A_CH_MINUS:	 in STD_LOGIC;
		PS_USE_INV_A_CH_SIGN:	 in STD_LOGIC;
		PS_PLUS_SIGN_LATCH:	 in STD_LOGIC;
		PS_USE_SIGN_LATCH:	 in STD_LOGIC;
		MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED:	 out STD_LOGIC;
		MS_A_CH_PLUS_SIGN_GATED:	 out STD_LOGIC;
		MS_A_CH_INV_MINUS_SIGN_GTD:	 out STD_LOGIC;
		MS_PLUS_SIGN_LATCH_GATED:	 out STD_LOGIC);
end ALD_16_16_07_1_SIGN_CONTROL_ACC;

architecture behavioral of ALD_16_16_07_1_SIGN_CONTROL_ACC is 

	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3B_A: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_4E_K: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;

begin

	OUT_4A_NoPin <= PB_B_CH_PLUS AND PB_USE_B_CH_SIGN;
	OUT_3B_A <= NOT(OUT_4A_NoPin OR OUT_4C_NoPin );
	OUT_4C_NoPin <= PB_B_CH_MINUS AND PB_USE_INV_B_CH_SIGN;
	OUT_4E_K <= NOT(PS_A_CH_PLUS AND PS_USE_A_CH_SIGN );
	OUT_4G_C <= NOT(PS_A_CH_MINUS AND PS_USE_INV_A_CH_SIGN );
	OUT_4I_G <= NOT(PS_PLUS_SIGN_LATCH AND PS_USE_SIGN_LATCH );

	MB_B_CH_PLU_OR_INV_MIN_SIGN_GATED <= OUT_3B_A;
	MS_A_CH_PLUS_SIGN_GATED <= OUT_4E_K;
	MS_A_CH_INV_MINUS_SIGN_GTD <= OUT_4G_C;
	MS_PLUS_SIGN_LATCH_GATED <= OUT_4I_G;


end;