-- VHDL for IBM SMS ALD page 36.10.02.1
-- Title: MEM SENSE AMPS CHAR 1
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/17/2020 4:42:55 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_36_10_02_1_MEM_SENSE_AMPS_CHAR_1 is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PV_SENSE_CHAR_1_1_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_1_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_1_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_1_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_2_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_2_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_2_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_2_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_4_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_4_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_4_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_4_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_8_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_8_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_8_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_8_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_A_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_A_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_A_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_A_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_B_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_B_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_B_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_B_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_C_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_C_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_C_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_C_BIT_D2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_WM_BIT_B1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_WM_BIT_B2:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_WM_BIT_D1:	 in STD_LOGIC;
		PV_SENSE_CHAR_1_WM_BIT_D2:	 in STD_LOGIC;
		PY_SENSE_STROBE_1:	 in STD_LOGIC;
		MY_SA_CHAR_1_1_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_2_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_4_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_8_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_A_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_B_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_C_BIT:	 out STD_LOGIC;
		MY_SA_CHAR_1_WM_BIT:	 out STD_LOGIC);
end ALD_36_10_02_1_MEM_SENSE_AMPS_CHAR_1;

architecture behavioral of ALD_36_10_02_1_MEM_SENSE_AMPS_CHAR_1 is 

	signal OUT_4A_D: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_2G_D: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;

begin

	OUT_4A_D <= NOT(PV_SENSE_CHAR_1_1_BIT_D1 AND PV_SENSE_CHAR_1_1_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2A_D <= NOT(PV_SENSE_CHAR_1_1_BIT_B1 AND PV_SENSE_CHAR_1_1_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4B_D <= NOT(PV_SENSE_CHAR_1_2_BIT_D1 AND PV_SENSE_CHAR_1_2_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2B_D <= NOT(PV_SENSE_CHAR_1_2_BIT_B1 AND PV_SENSE_CHAR_1_2_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4C_D <= NOT(PV_SENSE_CHAR_1_4_BIT_D1 AND PV_SENSE_CHAR_1_4_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2C_D <= NOT(PV_SENSE_CHAR_1_4_BIT_B1 AND PV_SENSE_CHAR_1_4_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4D_D <= NOT(PV_SENSE_CHAR_1_8_BIT_D1 AND PV_SENSE_CHAR_1_8_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2D_D <= NOT(PV_SENSE_CHAR_1_8_BIT_B1 AND PV_SENSE_CHAR_1_8_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4E_D <= NOT(PV_SENSE_CHAR_1_A_BIT_D1 AND PV_SENSE_CHAR_1_A_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2E_D <= NOT(PV_SENSE_CHAR_1_A_BIT_B1 AND PV_SENSE_CHAR_1_A_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4F_D <= NOT(PV_SENSE_CHAR_1_B_BIT_D1 AND PV_SENSE_CHAR_1_B_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2F_D <= NOT(PV_SENSE_CHAR_1_B_BIT_B1 AND PV_SENSE_CHAR_1_B_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4G_D <= NOT(PV_SENSE_CHAR_1_C_BIT_D1 AND PV_SENSE_CHAR_1_C_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2G_D <= NOT(PV_SENSE_CHAR_1_C_BIT_B1 AND PV_SENSE_CHAR_1_C_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_4H_D <= NOT(PV_SENSE_CHAR_1_WM_BIT_D1 AND PV_SENSE_CHAR_1_WM_BIT_D2 AND PY_SENSE_STROBE_1 );
	OUT_2H_D <= NOT(PV_SENSE_CHAR_1_WM_BIT_B1 AND PV_SENSE_CHAR_1_WM_BIT_B2 AND PY_SENSE_STROBE_1 );
	OUT_DOT_1A <= OUT_4A_D AND OUT_2A_D;
	OUT_DOT_1B <= OUT_4B_D AND OUT_2B_D;
	OUT_DOT_1C <= OUT_4C_D AND OUT_2C_D;
	OUT_DOT_1D <= OUT_4D_D AND OUT_2D_D;
	OUT_DOT_1E <= OUT_4E_D AND OUT_2E_D;
	OUT_DOT_1F <= OUT_4F_D AND OUT_2F_D;
	OUT_DOT_1G <= OUT_4G_D AND OUT_2G_D;
	OUT_DOT_1H <= OUT_4H_D AND OUT_2H_D;

	MY_SA_CHAR_1_1_BIT <= OUT_DOT_1A;
	MY_SA_CHAR_1_2_BIT <= OUT_DOT_1B;
	MY_SA_CHAR_1_4_BIT <= OUT_DOT_1C;
	MY_SA_CHAR_1_8_BIT <= OUT_DOT_1D;
	MY_SA_CHAR_1_A_BIT <= OUT_DOT_1E;
	MY_SA_CHAR_1_B_BIT <= OUT_DOT_1F;
	MY_SA_CHAR_1_C_BIT <= OUT_DOT_1G;
	MY_SA_CHAR_1_WM_BIT <= OUT_DOT_1H;


end;
