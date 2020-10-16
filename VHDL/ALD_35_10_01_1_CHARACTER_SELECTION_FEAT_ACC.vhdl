-- VHDL for IBM SMS ALD page 35.10.01.1
-- Title: CHARACTER SELECTION FEAT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/16/2020 5:51:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_35_10_01_1_CHARACTER_SELECTION_FEAT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_MEM_AR_TTHP2B:	 in STD_LOGIC;
		MY_MEM_AR_THP2B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP4B:	 in STD_LOGIC;
		MY_MEM_AR_TTHP8B:	 in STD_LOGIC;
		MY_MEM_AR_THP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP8B:	 in STD_LOGIC;
		MY_MEM_AR_TTHP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP0B:	 in STD_LOGIC;
		MY_MEM_AR_THP4B:	 in STD_LOGIC;
		MY_MEM_AR_TTHP1B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP2B:	 in STD_LOGIC;
		MY_MEM_AR_THP8B:	 in STD_LOGIC;
		MY_RO_CHR_0:	 out STD_LOGIC;
		MY_RO_CHR_1:	 out STD_LOGIC;
		MY_RO_CHR_2:	 out STD_LOGIC;
		MY_RO_CHR_3:	 out STD_LOGIC);
end ALD_35_10_01_1_CHARACTER_SELECTION_FEAT_ACC;

architecture behavioral of ALD_35_10_01_1_CHARACTER_SELECTION_FEAT_ACC is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_3A_G: STD_LOGIC;
	signal OUT_1A_A: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_P: STD_LOGIC;
	signal OUT_5D_G: STD_LOGIC;
	signal OUT_3E_F: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_3G_R: STD_LOGIC;
	signal OUT_1G_A: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;

begin

	OUT_5A_C <= NOT(MY_MEM_AR_THP2B OR MY_MEM_AR_NOT_THP4B );
	OUT_3A_G <= NOT(MY_MEM_AR_TTHP2B OR MY_MEM_AR_TTHP8B );
	OUT_1A_A <= NOT OUT_DOT_3A;
	OUT_5B_C <= NOT(MY_MEM_AR_THP0B OR MY_MEM_AR_NOT_THP8B );
	OUT_5C_G <= NOT(MY_MEM_AR_NOT_THP0B OR MY_MEM_AR_THP4B );
	OUT_3C_C <= NOT(MY_MEM_AR_TTHP0B OR MY_MEM_AR_TTHP1B );
	OUT_1C_P <= NOT OUT_DOT_3C;
	OUT_5D_G <= NOT(MY_MEM_AR_NOT_THP2B OR MY_MEM_AR_THP8B );
	OUT_3E_F <= NOT(MY_MEM_AR_TTHP0B OR MY_MEM_AR_TTHP2B );
	OUT_1E_D <= NOT OUT_3E_F;
	OUT_3G_R <= NOT(MY_MEM_AR_TTHP1B OR MY_MEM_AR_TTHP2B );
	OUT_1G_A <= NOT OUT_3G_R;
	OUT_DOT_3A <= OUT_5A_C OR OUT_3A_G OR OUT_5B_C;
	OUT_DOT_3C <= OUT_5C_G OR OUT_3C_C OR OUT_5D_G;

	MY_RO_CHR_0 <= OUT_1A_A;
	MY_RO_CHR_1 <= OUT_1C_P;
	MY_RO_CHR_2 <= OUT_1E_D;
	MY_RO_CHR_3 <= OUT_1G_A;


end;
