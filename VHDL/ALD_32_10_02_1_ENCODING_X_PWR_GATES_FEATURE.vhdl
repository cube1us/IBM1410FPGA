-- VHDL for IBM SMS ALD page 32.10.02.1
-- Title: ENCODING X PWR GATES FEATURE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/16/2020 1:28:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_32_10_02_1_ENCODING_X_PWR_GATES_FEATURE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_MEM_AR_NOT_TP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_TP2B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_TP8B:	 in STD_LOGIC;
		MY_MEM_AR_TP0B:	 in STD_LOGIC;
		MY_MEM_AR_TP1B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_TP1B:	 in STD_LOGIC;
		MY_MEM_AR_TP2B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_TP4B:	 in STD_LOGIC;
		MY_MEM_AR_TP8B:	 in STD_LOGIC;
		MY_MEM_AR_TP4B:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_00_09:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_10_19:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_20_29:	 out STD_LOGIC;
		MY_MEM_AR_NOT_TP0B_JRJ:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_30_39:	 out STD_LOGIC;
		MY_MEM_AR_NOT_TP1B_JRJ:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_90_99:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_40_49:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_50_59:	 out STD_LOGIC;
		MY_MEM_AR_NOT_TP2B_JRJ:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_60_69:	 out STD_LOGIC;
		MY_MEM_AR_NOT_TP8B_JRJ:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_70_79:	 out STD_LOGIC;
		MY_MEM_AR_NOT_TP4B_JRJ:	 out STD_LOGIC;
		PY_X_LSMS_GATE_SEL_80_89:	 out STD_LOGIC);
end ALD_32_10_02_1_ENCODING_X_PWR_GATES_FEATURE;

architecture behavioral of ALD_32_10_02_1_ENCODING_X_PWR_GATES_FEATURE is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_4B_P: STD_LOGIC;
	signal OUT_4C_G: STD_LOGIC;
	signal OUT_4D_P: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_2E_P: STD_LOGIC;
	signal OUT_1E_F: STD_LOGIC;
	signal OUT_4F_P: STD_LOGIC;
	signal OUT_4G_G: STD_LOGIC;
	signal OUT_1G_R: STD_LOGIC;
	signal OUT_4H_P: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_2I_G: STD_LOGIC;

begin

	OUT_4A_G <= NOT(MY_MEM_AR_NOT_TP0B OR MY_MEM_AR_NOT_TP1B OR MY_MEM_AR_TP2B OR MY_MEM_AR_NOT_TP4B OR MY_MEM_AR_TP8B );
	OUT_4B_P <= NOT(MY_MEM_AR_TP0B OR MY_MEM_AR_TP1B OR MY_MEM_AR_NOT_TP2B OR MY_MEM_AR_NOT_TP4B OR MY_MEM_AR_NOT_TP8B );
	OUT_4C_G <= NOT(MY_MEM_AR_TP0B OR MY_MEM_AR_NOT_TP1B OR MY_MEM_AR_TP2B OR MY_MEM_AR_NOT_TP4B OR MY_MEM_AR_NOT_TP8B );
	OUT_4D_P <= NOT(MY_MEM_AR_NOT_TP0B OR MY_MEM_AR_TP1B OR MY_MEM_AR_TP2B OR MY_MEM_AR_NOT_TP4B OR MY_MEM_AR_NOT_TP8B );
	OUT_1D_C <= NOT(MY_MEM_AR_TP0B );
	OUT_4E_G <= NOT(MY_MEM_AR_TP0B OR MY_MEM_AR_NOT_TP1B OR MY_MEM_AR_NOT_TP2B OR MY_MEM_AR_TP4B OR MY_MEM_AR_NOT_TP8B );
	OUT_2E_P <= NOT(MY_MEM_AR_NOT_TP0B OR MY_MEM_AR_TP1B OR MY_MEM_AR_NOT_TP2B OR MY_MEM_AR_NOT_TP4B OR MY_MEM_AR_TP8B );
	OUT_1E_F <= NOT(MY_MEM_AR_TP1B );
	OUT_4F_P <= NOT(MY_MEM_AR_NOT_TP0B OR MY_MEM_AR_TP1B OR MY_MEM_AR_NOT_TP2B OR MY_MEM_AR_TP4B OR MY_MEM_AR_NOT_TP8B );
	OUT_4G_G <= NOT(MY_MEM_AR_NOT_TP0B OR MY_MEM_AR_NOT_TP1B OR MY_MEM_AR_TP2B OR MY_MEM_AR_TP4B OR MY_MEM_AR_NOT_TP8B );
	OUT_1G_R <= NOT(MY_MEM_AR_TP2B );
	OUT_4H_P <= NOT(MY_MEM_AR_NOT_TP0B OR MY_MEM_AR_NOT_TP1B OR MY_MEM_AR_NOT_TP2B OR MY_MEM_AR_TP4B OR MY_MEM_AR_TP8B );
	OUT_1H_C <= NOT(MY_MEM_AR_TP8B );
	OUT_4I_G <= NOT(MY_MEM_AR_TP0B OR MY_MEM_AR_NOT_TP1B OR MY_MEM_AR_NOT_TP2B OR MY_MEM_AR_NOT_TP4B OR MY_MEM_AR_TP8B );
	OUT_2I_G <= NOT(MY_MEM_AR_TP4B );

	PY_X_LSMS_GATE_SEL_00_09 <= OUT_4A_G;
	PY_X_LSMS_GATE_SEL_10_19 <= OUT_4B_P;
	PY_X_LSMS_GATE_SEL_20_29 <= OUT_4C_G;
	PY_X_LSMS_GATE_SEL_30_39 <= OUT_4D_P;
	MY_MEM_AR_NOT_TP0B_JRJ <= OUT_1D_C;
	PY_X_LSMS_GATE_SEL_40_49 <= OUT_4E_G;
	PY_X_LSMS_GATE_SEL_90_99 <= OUT_2E_P;
	MY_MEM_AR_NOT_TP1B_JRJ <= OUT_1E_F;
	PY_X_LSMS_GATE_SEL_50_59 <= OUT_4F_P;
	PY_X_LSMS_GATE_SEL_60_69 <= OUT_4G_G;
	MY_MEM_AR_NOT_TP2B_JRJ <= OUT_1G_R;
	PY_X_LSMS_GATE_SEL_70_79 <= OUT_4H_P;
	MY_MEM_AR_NOT_TP8B_JRJ <= OUT_1H_C;
	PY_X_LSMS_GATE_SEL_80_89 <= OUT_4I_G;
	MY_MEM_AR_NOT_TP4B_JRJ <= OUT_2I_G;


end;