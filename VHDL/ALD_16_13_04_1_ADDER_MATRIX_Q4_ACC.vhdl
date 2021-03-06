-- VHDL for IBM SMS ALD page 16.13.04.1
-- Title: ADDER MATRIX Q4-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/29/2020 10:58:13 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_13_04_1_ADDER_MATRIX_Q4_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_ADD_AQ0:	 in STD_LOGIC;
		MB_ADD_BQ4:	 in STD_LOGIC;
		MB_ADD_AQ2:	 in STD_LOGIC;
		MB_ADD_BQ2:	 in STD_LOGIC;
		MB_ADD_AQ4:	 in STD_LOGIC;
		MB_ADD_BQ0:	 in STD_LOGIC;
		MB_ADD_AQ6:	 in STD_LOGIC;
		MB_ADD_BQ8:	 in STD_LOGIC;
		MB_ADD_AQ8:	 in STD_LOGIC;
		MB_ADD_BQ6:	 in STD_LOGIC;
		PB_ADD_AQ0_DOT_BQ4:	 out STD_LOGIC;
		PB_ADD_AQ2_DOT_BQ2:	 out STD_LOGIC;
		MB_ADDER_MX_Q4:	 out STD_LOGIC;
		PB_ADD_AQ4_DOT_BQ0:	 out STD_LOGIC;
		PB_ADD_AQ6_DOT_BQ8:	 out STD_LOGIC;
		PB_ADD_BQ8:	 out STD_LOGIC;
		PB_ADD_AQ8_DOT_BQ6:	 out STD_LOGIC);
end ALD_16_13_04_1_ADDER_MATRIX_Q4_ACC;

architecture behavioral of ALD_16_13_04_1_ADDER_MATRIX_Q4_ACC is 

	signal OUT_4A_B: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_2D_A: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_2E_A: STD_LOGIC;
	signal OUT_4G_B: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_4I_C: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_4A_B <= NOT(MB_ADD_AQ0 OR MB_ADD_BQ4 );
	OUT_4C_C <= NOT(MB_ADD_AQ2 OR MB_ADD_BQ2 );
	OUT_2D_A <= NOT(OUT_4A_B OR OUT_4C_C );
	OUT_4E_D <= NOT(MB_ADD_AQ4 OR MB_ADD_BQ0 );
	OUT_2E_A <= NOT(OUT_4E_D OR OUT_4G_B OR OUT_4I_C );
	OUT_4G_B <= NOT(MB_ADD_AQ6 OR MB_ADD_BQ8 );
	OUT_4H_C <= NOT MB_ADD_BQ8;
	OUT_4I_C <= NOT(MB_ADD_AQ8 OR MB_ADD_BQ6 );
	OUT_DOT_1D <= OUT_2E_A AND OUT_2D_A;

	PB_ADD_AQ0_DOT_BQ4 <= OUT_4A_B;
	PB_ADD_AQ2_DOT_BQ2 <= OUT_4C_C;
	PB_ADD_AQ4_DOT_BQ0 <= OUT_4E_D;
	PB_ADD_AQ6_DOT_BQ8 <= OUT_4G_B;
	PB_ADD_BQ8 <= OUT_4H_C;
	PB_ADD_AQ8_DOT_BQ6 <= OUT_4I_C;
	MB_ADDER_MX_Q4 <= OUT_DOT_1D;


end;
