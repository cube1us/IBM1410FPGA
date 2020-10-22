-- VHDL for IBM SMS ALD page 39.50.45.1
-- Title: MISC POWERING FOR MEM-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/22/2020 8:09:01 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_39_50_45_1_MISC_POWERING_FOR_MEM_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_LOAD_MEMORY:	 in STD_LOGIC;
		MY_REGEN_MEMORY:	 in STD_LOGIC;
		PY_1ST_CHECK_TEST_STAR_SEE_NOTE_STAR:	 in STD_LOGIC;
		PY_2ND_CHECK_TEST_STAR_SEE_NOTE_STAR:	 in STD_LOGIC;
		MY_READ_CALL:	 in STD_LOGIC;
		MY_WRITE_CALL:	 in STD_LOGIC;
		MS_COMPUTER_RESET_2:	 in STD_LOGIC;
		MY_START_MEM_CLOCK:	 in STD_LOGIC;
		MY_LOAD_MEMORY_Z:	 out STD_LOGIC;
		MY_REGEN_MEMORY_Z:	 out STD_LOGIC;
		PY_1ST_CHECK_TEST_Z:	 out STD_LOGIC;
		PY_2ND_CHECK_TEST_Z:	 out STD_LOGIC;
		MY_READ_CALL_M:	 out STD_LOGIC;
		MY_WRITE_CALL_M:	 out STD_LOGIC;
		PY_COMPUTER_RESET:	 out STD_LOGIC;
		MY_START_MEM_CLOCK_M:	 out STD_LOGIC);
end ALD_39_50_45_1_MISC_POWERING_FOR_MEM_ACC;

architecture behavioral of ALD_39_50_45_1_MISC_POWERING_FOR_MEM_ACC is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_3A_G: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_4C_F: STD_LOGIC;
	signal OUT_3C_F: STD_LOGIC;
	signal OUT_4D_R: STD_LOGIC;
	signal OUT_3D_R: STD_LOGIC;
	signal OUT_5E_E: STD_LOGIC;
	signal OUT_5F_L: STD_LOGIC;
	signal OUT_2H_F: STD_LOGIC;
	signal OUT_4I_A: STD_LOGIC;

begin

	OUT_4A_G <= NOT(MY_LOAD_MEMORY );
	OUT_3A_G <= NOT(OUT_4A_G );
	OUT_4B_C <= NOT(MY_REGEN_MEMORY );
	OUT_3B_C <= NOT(OUT_4B_C );
	OUT_4C_F <= NOT(PY_1ST_CHECK_TEST_STAR_SEE_NOTE_STAR );
	OUT_3C_F <= NOT(OUT_4C_F );
	OUT_4D_R <= NOT(PY_2ND_CHECK_TEST_STAR_SEE_NOTE_STAR );
	OUT_3D_R <= NOT(OUT_4D_R );
	OUT_5E_E <= MY_READ_CALL;
	OUT_5F_L <= MY_WRITE_CALL;
	OUT_2H_F <= NOT(MS_COMPUTER_RESET_2 );
	OUT_4I_A <= MY_START_MEM_CLOCK;

	MY_LOAD_MEMORY_Z <= OUT_3A_G;
	MY_REGEN_MEMORY_Z <= OUT_3B_C;
	PY_1ST_CHECK_TEST_Z <= OUT_3C_F;
	PY_2ND_CHECK_TEST_Z <= OUT_3D_R;
	MY_READ_CALL_M <= OUT_5E_E;
	MY_WRITE_CALL_M <= OUT_5F_L;
	PY_COMPUTER_RESET <= OUT_2H_F;
	MY_START_MEM_CLOCK_M <= OUT_4I_A;


end;
