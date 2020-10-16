-- VHDL for IBM SMS ALD page 33.10.01.1
-- Title: Y LSMS DRVR ECDR 1-5 FEATURE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/16/2020 3:19:48 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_33_10_01_1_Y_LSMS_DRVR_ECDR_1_5_FEATURE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_MEM_AR_HP8B:	 in STD_LOGIC;
		MY_MEM_AR_HP4B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP8B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP4B:	 in STD_LOGIC;
		MY_Y_WR_1:	 in STD_LOGIC;
		MY_MEM_AR_HP2B:	 in STD_LOGIC;
		MY_Y_RD_1:	 in STD_LOGIC;
		MY_MEM_AR_HP1B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP2B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP1B:	 in STD_LOGIC;
		MY_MEM_AR_HP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP8B_Z:	 out STD_LOGIC;
		PY_Y_LSMS_DRVR_1:	 out STD_LOGIC;
		MY_MEM_AR_NOT_HP4B_Z:	 out STD_LOGIC;
		PY_Y_LSMS_DRVR_2:	 out STD_LOGIC;
		PY_Y_LSMS_DRVR_3:	 out STD_LOGIC;
		MY_MEM_AR_NOT_HP2B_Z:	 out STD_LOGIC;
		PY_Y_LSMS_DRVR_4:	 out STD_LOGIC;
		MY_MEM_AR_NOT_HP1B_Z:	 out STD_LOGIC;
		PY_Y_LSMS_DRVR_5:	 out STD_LOGIC;
		MY_MEM_AR_NOT_HP0B_Z:	 out STD_LOGIC);
end ALD_33_10_01_1_Y_LSMS_DRVR_ECDR_1_5_FEATURE;

architecture behavioral of ALD_33_10_01_1_Y_LSMS_DRVR_ECDR_1_5_FEATURE is 

	signal OUT_4A_F: STD_LOGIC;
	signal OUT_1A_G: STD_LOGIC;
	signal OUT_4B_R: STD_LOGIC;
	signal OUT_2B_G: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_4D_F: STD_LOGIC;
	signal OUT_4E_R: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_1E_F: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_1F_R: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_4H_R: STD_LOGIC;
	signal OUT_1I_F: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_4A_F <= NOT(MY_MEM_AR_HP8B OR MY_Y_WR_1 );
	OUT_1A_G <= NOT(MY_MEM_AR_HP8B );
	OUT_4B_R <= NOT(MY_Y_RD_1 OR MY_MEM_AR_NOT_HP8B );
	OUT_2B_G <= NOT(MY_MEM_AR_HP4B OR MY_Y_WR_1 );
	OUT_1B_C <= NOT(MY_MEM_AR_HP4B );
	OUT_2C_C <= NOT(MY_MEM_AR_NOT_HP4B OR MY_Y_RD_1 );
	OUT_4D_F <= NOT(MY_MEM_AR_HP2B OR MY_Y_WR_1 );
	OUT_4E_R <= NOT(MY_Y_RD_1 OR MY_MEM_AR_NOT_HP2B );
	OUT_2E_G <= NOT(MY_MEM_AR_HP1B OR MY_Y_WR_1 );
	OUT_1E_F <= NOT(MY_MEM_AR_HP2B );
	OUT_2F_C <= NOT(MY_MEM_AR_NOT_HP1B OR MY_Y_RD_1 );
	OUT_1F_R <= NOT(MY_MEM_AR_HP1B );
	OUT_4G_F <= NOT(MY_MEM_AR_HP0B OR MY_Y_WR_1 );
	OUT_4H_R <= NOT(MY_MEM_AR_NOT_HP0B OR MY_Y_RD_1 );
	OUT_1I_F <= NOT(MY_MEM_AR_HP0B );
	OUT_DOT_4A <= OUT_4A_F OR OUT_4B_R;
	OUT_DOT_2B <= OUT_2B_G OR OUT_2C_C;
	OUT_DOT_4D <= OUT_4D_F OR OUT_4E_R;
	OUT_DOT_1G <= OUT_4G_F OR OUT_4H_R;
	OUT_DOT_2E <= OUT_2E_G OR OUT_2F_C;

	MY_MEM_AR_NOT_HP8B_Z <= OUT_1A_G;
	MY_MEM_AR_NOT_HP4B_Z <= OUT_1B_C;
	MY_MEM_AR_NOT_HP2B_Z <= OUT_1E_F;
	MY_MEM_AR_NOT_HP1B_Z <= OUT_1F_R;
	MY_MEM_AR_NOT_HP0B_Z <= OUT_1I_F;
	PY_Y_LSMS_DRVR_1 <= OUT_DOT_4A;
	PY_Y_LSMS_DRVR_2 <= OUT_DOT_2B;
	PY_Y_LSMS_DRVR_3 <= OUT_DOT_4D;
	PY_Y_LSMS_DRVR_5 <= OUT_DOT_1G;
	PY_Y_LSMS_DRVR_4 <= OUT_DOT_2E;


end;