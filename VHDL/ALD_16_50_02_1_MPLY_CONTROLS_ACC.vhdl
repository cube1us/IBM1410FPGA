-- VHDL for IBM SMS ALD page 16.50.02.1
-- Title: MPLY CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/6/2020 9:09:22 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_50_02_1_MPLY_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_MPLY_OP_CODE:	 in STD_LOGIC;
		PS_NOT_MPLY_DIV_LAST_LATCH:	 in STD_LOGIC;
		PS_MPLY_DIV_LAST_LATCH:	 in STD_LOGIC;
		PS_TRUE_LATCH:	 in STD_LOGIC;
		PS_COMPLEMENT_LATCH:	 in STD_LOGIC;
		MS_MPLY_DOT_X_DOT_B_DOT_REGEN_1:	 out STD_LOGIC;
		MS_MPLY_DOT_X_DOT_B_DOT_NOT_MDL:	 out STD_LOGIC;
		MS_MPLY_DOT_X_DOT_B_DOT_MDL:	 out STD_LOGIC;
		MS_MPLY_DOT_X_DOT_B_DOT_T:	 out STD_LOGIC;
		MS_MPLY_DOT_X_DOT_B_DOT_S:	 out STD_LOGIC);
end ALD_16_50_02_1_MPLY_CONTROLS_ACC;

architecture behavioral of ALD_16_50_02_1_MPLY_CONTROLS_ACC is 

	signal OUT_4C_H: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_2E_R: STD_LOGIC;
	signal OUT_2F_P: STD_LOGIC;
	signal OUT_2G_K: STD_LOGIC;

begin

	OUT_4C_H <= NOT(PS_MPLY_OP_CODE AND PS_B_CYCLE AND PS_EXTENSION_LATCH );
	OUT_3C_A <= NOT OUT_4C_H;
	OUT_2D_A <= NOT(OUT_3C_A AND PS_NOT_MPLY_DIV_LAST_LATCH );
	OUT_2E_R <= NOT(OUT_3C_A AND PS_MPLY_DIV_LAST_LATCH );
	OUT_2F_P <= NOT(OUT_3C_A AND PS_TRUE_LATCH );
	OUT_2G_K <= NOT(OUT_3C_A AND PS_COMPLEMENT_LATCH );

	MS_MPLY_DOT_X_DOT_B_DOT_REGEN_1 <= OUT_4C_H;
	MS_MPLY_DOT_X_DOT_B_DOT_NOT_MDL <= OUT_2D_A;
	MS_MPLY_DOT_X_DOT_B_DOT_MDL <= OUT_2E_R;
	MS_MPLY_DOT_X_DOT_B_DOT_T <= OUT_2F_P;
	MS_MPLY_DOT_X_DOT_B_DOT_S <= OUT_2G_K;


end;