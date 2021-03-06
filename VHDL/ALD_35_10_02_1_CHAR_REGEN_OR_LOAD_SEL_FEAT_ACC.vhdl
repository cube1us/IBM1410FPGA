-- VHDL for IBM SMS ALD page 35.10.02.1
-- Title: CHAR REGEN OR LOAD SEL FEAT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/17/2020 11:33:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_RO_CHR_0:	 in STD_LOGIC;
		MY_RO_CHR_1:	 in STD_LOGIC;
		MY_LOAD_MEMORY:	 in STD_LOGIC;
		MY_REGEN_MEMORY:	 in STD_LOGIC;
		MY_RO_CHR_2:	 in STD_LOGIC;
		MY_RO_CHR_3:	 in STD_LOGIC;
		PY_LD_CHR_0:	 out STD_LOGIC;
		MY_LD_CHR_0:	 out STD_LOGIC;
		MY_REGEN_CHR_0:	 out STD_LOGIC;
		PY_SEL_CHR_0:	 out STD_LOGIC;
		PY_LD_CHR_1:	 out STD_LOGIC;
		MY_LD_CHR_1:	 out STD_LOGIC;
		MY_REGEN_CHR_1:	 out STD_LOGIC;
		PY_SEL_CHR_1:	 out STD_LOGIC;
		PY_LD_CHR_2:	 out STD_LOGIC;
		MY_LD_CHR_2:	 out STD_LOGIC;
		MY_REGEN_CHR_2:	 out STD_LOGIC;
		PY_SEL_CHR_2:	 out STD_LOGIC;
		PY_LD_CHR_3:	 out STD_LOGIC;
		MY_LD_CHR_3:	 out STD_LOGIC;
		MY_REGEN_CHR_3:	 out STD_LOGIC;
		PY_SEL_CHR_3:	 out STD_LOGIC);
end ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC;

architecture behavioral of ALD_35_10_02_1_CHAR_REGEN_OR_LOAD_SEL_FEAT_ACC is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_3A_A: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_1A_G: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4C_F: STD_LOGIC;
	signal OUT_3C_E: STD_LOGIC;
	signal OUT_2C_A: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_4D_R: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_3E_L: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_1E_G: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_3G_Q: STD_LOGIC;
	signal OUT_2G_P: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_4H_R: STD_LOGIC;

begin

	OUT_4A_G <= NOT(MY_RO_CHR_0 OR MY_LOAD_MEMORY );
	OUT_3A_A <= OUT_4A_G;
	OUT_2A_D <= NOT OUT_3A_A;
	OUT_1A_G <= NOT(OUT_2A_D );
	OUT_4B_C <= NOT(MY_RO_CHR_0 OR MY_REGEN_MEMORY );
	OUT_4C_F <= NOT(MY_RO_CHR_1 OR MY_LOAD_MEMORY );
	OUT_3C_E <= OUT_4C_F;
	OUT_2C_A <= NOT OUT_3C_E;
	OUT_1C_C <= NOT(OUT_2C_A );
	OUT_4D_R <= NOT(MY_RO_CHR_1 OR MY_REGEN_MEMORY );
	OUT_4E_G <= NOT(MY_RO_CHR_2 OR MY_LOAD_MEMORY );
	OUT_3E_L <= OUT_4E_G;
	OUT_2E_D <= NOT OUT_3E_L;
	OUT_1E_G <= NOT(OUT_2E_D );
	OUT_4F_C <= NOT(MY_RO_CHR_2 OR MY_REGEN_MEMORY );
	OUT_4G_F <= NOT(MY_RO_CHR_3 OR MY_LOAD_MEMORY );
	OUT_3G_Q <= OUT_4G_F;
	OUT_2G_P <= NOT OUT_3G_Q;
	OUT_1G_C <= NOT(OUT_2G_P );
	OUT_4H_R <= NOT(MY_RO_CHR_3 OR MY_REGEN_MEMORY );

	MY_REGEN_CHR_0 <= OUT_3A_A;
	MY_LD_CHR_0 <= OUT_2A_D;
	PY_LD_CHR_0 <= OUT_1A_G;
	PY_SEL_CHR_0 <= OUT_4B_C;
	MY_REGEN_CHR_1 <= OUT_3C_E;
	MY_LD_CHR_1 <= OUT_2C_A;
	PY_LD_CHR_1 <= OUT_1C_C;
	PY_SEL_CHR_1 <= OUT_4D_R;
	MY_REGEN_CHR_2 <= OUT_3E_L;
	MY_LD_CHR_2 <= OUT_2E_D;
	PY_LD_CHR_2 <= OUT_1E_G;
	PY_SEL_CHR_2 <= OUT_4F_C;
	MY_REGEN_CHR_3 <= OUT_3G_Q;
	MY_LD_CHR_3 <= OUT_2G_P;
	PY_LD_CHR_3 <= OUT_1G_C;
	PY_SEL_CHR_3 <= OUT_4H_R;


end;
