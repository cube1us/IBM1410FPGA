-- VHDL for IBM SMS ALD page 16.14.10.1
-- Title: ADD OUTPUT TRANSLATOR-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/30/2020 4:49:50 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_14_10_1_ADD_OUTPUT_TRANSLATOR_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_Q0_DOT_B1_SHIFT:	 in STD_LOGIC;
		PB_Q0_DOT_B2_SHIFT:	 in STD_LOGIC;
		PB_Q2_DOT_B0_OR_B2_SHIFT:	 in STD_LOGIC;
		PB_Q4_DOT_B0_SHIFT:	 in STD_LOGIC;
		PB_Q4_DOT_B3_SHIFT:	 in STD_LOGIC;
		PB_Q6_DOT_B1_SHIFT:	 in STD_LOGIC;
		PB_Q6_DOT_B2_SHIFT:	 in STD_LOGIC;
		PB_Q8_DOT_B0_SHIFT:	 in STD_LOGIC;
		PB_Q8_DOT_B3_SHIFT:	 in STD_LOGIC;
		PB_Q0_DOT_B0_SHIFT:	 in STD_LOGIC;
		PB_Q2_DOT_B1_OR_B3_SHIFT:	 in STD_LOGIC;
		PB_Q0_DOT_B3_SHIFT:	 in STD_LOGIC;
		PB_Q4_DOT_B1_SHIFT:	 in STD_LOGIC;
		PB_Q4_DOT_B2_SHIFT:	 in STD_LOGIC;
		PB_Q6_DOT_B0_SHIFT:	 in STD_LOGIC;
		PB_Q6_DOT_B3_SHIFT:	 in STD_LOGIC;
		PB_Q8_DOT_B1_SHIFT:	 in STD_LOGIC;
		PB_Q8_DOT_B2_SHIFT:	 in STD_LOGIC;
		PB_ADDER_OUT_NOT_C_BIT:	 out STD_LOGIC;
		PB_ADDER_OUT_C_BIT:	 out STD_LOGIC);
end ALD_16_14_10_1_ADD_OUTPUT_TRANSLATOR_ACC;

architecture behavioral of ALD_16_14_10_1_ADD_OUTPUT_TRANSLATOR_ACC is 

	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_4F_A: STD_LOGIC;
	signal OUT_4G_A: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_4H_A: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_4B_C <= NOT(PB_Q0_DOT_B1_SHIFT OR PB_Q0_DOT_B2_SHIFT OR PB_Q2_DOT_B0_OR_B2_SHIFT );
	OUT_4C_B <= NOT(PB_Q4_DOT_B0_SHIFT OR PB_Q4_DOT_B3_SHIFT OR PB_Q6_DOT_B1_SHIFT );
	OUT_2C_D <= NOT OUT_DOT_3C;
	OUT_4D_C <= NOT(PB_Q6_DOT_B2_SHIFT OR PB_Q8_DOT_B0_SHIFT OR PB_Q8_DOT_B3_SHIFT );
	OUT_4F_A <= NOT(PB_Q0_DOT_B0_SHIFT OR PB_Q2_DOT_B1_OR_B3_SHIFT OR PB_Q0_DOT_B3_SHIFT );
	OUT_4G_A <= NOT(PB_Q4_DOT_B1_SHIFT OR PB_Q4_DOT_B2_SHIFT OR PB_Q6_DOT_B0_SHIFT );
	OUT_2G_E <= NOT OUT_DOT_3G;
	OUT_4H_A <= NOT(PB_Q6_DOT_B3_SHIFT OR PB_Q8_DOT_B1_SHIFT OR PB_Q8_DOT_B2_SHIFT );
	OUT_DOT_3C <= OUT_4B_C AND OUT_4C_B AND OUT_4D_C;
	OUT_DOT_3G <= OUT_4F_A AND OUT_4G_A AND OUT_4H_A;

	PB_ADDER_OUT_NOT_C_BIT <= OUT_2C_D;
	PB_ADDER_OUT_C_BIT <= OUT_2G_E;


end;
