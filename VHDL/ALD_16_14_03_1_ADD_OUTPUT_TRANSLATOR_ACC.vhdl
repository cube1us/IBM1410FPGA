-- VHDL for IBM SMS ALD page 16.14.03.1
-- Title: ADD OUTPUT TRANSLATOR -ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/29/2020 5:07:30 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_14_03_1_ADD_OUTPUT_TRANSLATOR_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_ADDER_MX_Q0:	 in STD_LOGIC;
		MB_B0_SHIFT:	 in STD_LOGIC;
		MB_B1_SHIFT:	 in STD_LOGIC;
		MB_B2_SHIFT:	 in STD_LOGIC;
		MB_B3_SHIFT:	 in STD_LOGIC;
		MB_ADDER_OUT_NOT_1_BIT:	 in STD_LOGIC;
		MB_ADDER_MX_Q2:	 in STD_LOGIC;
		MB_ADDER_OUT_1_BIT:	 in STD_LOGIC;
		MB_B0_OR_B1_SHIFT:	 in STD_LOGIC;
		MB_B2_OR_B3_SHIFT:	 in STD_LOGIC;
		PB_Q0_DOT_ANY_SHIFT:	 out STD_LOGIC;
		PB_Q0_DOT_B0_SHIFT:	 out STD_LOGIC;
		PB_Q0_DOT_B1_SHIFT:	 out STD_LOGIC;
		PB_Q0_DOT_B2_SHIFT:	 out STD_LOGIC;
		PB_Q0_DOT_B3_SHIFT:	 out STD_LOGIC;
		PB_Q2_DOT_B0_OR_B2_SHIFT:	 out STD_LOGIC;
		PB_Q2_DOT_B1_OR_B3_SHIFT:	 out STD_LOGIC;
		PB_Q2_DOT_B0_OR_B1_SHIFT:	 out STD_LOGIC;
		PB_Q2_DOT_B2_OR_B3_SHIFT:	 out STD_LOGIC);
end ALD_16_14_03_1_ADD_OUTPUT_TRANSLATOR_ACC;

architecture behavioral of ALD_16_14_03_1_ADD_OUTPUT_TRANSLATOR_ACC is 

	signal OUT_4A_B: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_4D_A: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_4F_B: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_4H_A: STD_LOGIC;
	signal OUT_4I_D: STD_LOGIC;

begin

	OUT_4A_B <= NOT MB_ADDER_MX_Q0;
	OUT_4B_B <= NOT(MB_ADDER_MX_Q0 OR MB_B0_SHIFT );
	OUT_4C_C <= NOT(MB_ADDER_MX_Q0 OR MB_B1_SHIFT );
	OUT_4D_A <= NOT(MB_ADDER_MX_Q0 OR MB_B2_SHIFT );
	OUT_4E_D <= NOT(MB_ADDER_MX_Q0 OR MB_B3_SHIFT );
	OUT_4F_B <= NOT(MB_ADDER_OUT_NOT_1_BIT OR MB_ADDER_MX_Q2 );
	OUT_4G_C <= NOT(MB_ADDER_MX_Q2 OR MB_ADDER_OUT_1_BIT );
	OUT_4H_A <= NOT(MB_ADDER_MX_Q2 OR MB_B0_OR_B1_SHIFT );
	OUT_4I_D <= NOT(MB_ADDER_MX_Q2 OR MB_B2_OR_B3_SHIFT );

	PB_Q0_DOT_ANY_SHIFT <= OUT_4A_B;
	PB_Q0_DOT_B0_SHIFT <= OUT_4B_B;
	PB_Q0_DOT_B1_SHIFT <= OUT_4C_C;
	PB_Q0_DOT_B2_SHIFT <= OUT_4D_A;
	PB_Q0_DOT_B3_SHIFT <= OUT_4E_D;
	PB_Q2_DOT_B0_OR_B2_SHIFT <= OUT_4F_B;
	PB_Q2_DOT_B1_OR_B3_SHIFT <= OUT_4G_C;
	PB_Q2_DOT_B0_OR_B1_SHIFT <= OUT_4H_A;
	PB_Q2_DOT_B2_OR_B3_SHIFT <= OUT_4I_D;


end;
