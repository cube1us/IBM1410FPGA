-- VHDL for IBM SMS ALD page 16.14.01.1
-- Title: ADD OUTPUT TRANSLATOR-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/29/2020 1:24:34 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_14_01_1_ADD_OUTPUT_TRANSLATOR_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_AB0_DOT_BB0_DOT_NC:	 in STD_LOGIC;
		PB_AB1_DOT_BB1_DOT_C:	 in STD_LOGIC;
		PB_AB0_DOT_BB0_DOT_C:	 in STD_LOGIC;
		PB_AB0_DOT_BB1_DOT_NC:	 in STD_LOGIC;
		PB_AB1_DOT_BB0_DOT_NC:	 in STD_LOGIC;
		PB_AB0_DOT_BB1_DOT_C:	 in STD_LOGIC;
		PB_AB1_DOT_BB1_DOT_NC:	 in STD_LOGIC;
		PB_AB1_DOT_BB0_DOT_C:	 in STD_LOGIC;
		MB_B0_SHIFT:	 out STD_LOGIC;
		PS_B3_SHIFT:	 out STD_LOGIC;
		MB_B3_SHIFT:	 out STD_LOGIC;
		PS_B1_SHIFT:	 out STD_LOGIC;
		MB_B1_SHIFT:	 out STD_LOGIC;
		PS_B2_SHIFT:	 out STD_LOGIC;
		MB_B2_SHIFT:	 out STD_LOGIC);
end ALD_16_14_01_1_ADD_OUTPUT_TRANSLATOR_ACC;

architecture behavioral of ALD_16_14_01_1_ADD_OUTPUT_TRANSLATOR_ACC is 

	signal OUT_4B_B: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_4F_A: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_4H_B: STD_LOGIC;

begin

	OUT_4B_B <= NOT PB_AB0_DOT_BB0_DOT_NC;
	OUT_2C_C <= NOT OUT_4D_C;
	OUT_4D_C <= NOT PB_AB1_DOT_BB1_DOT_C;
	OUT_2E_E <= NOT OUT_4F_A;
	OUT_4F_A <= NOT(PB_AB0_DOT_BB0_DOT_C OR PB_AB0_DOT_BB1_DOT_NC OR PB_AB1_DOT_BB0_DOT_NC );
	OUT_2G_B <= NOT OUT_4H_B;
	OUT_4H_B <= NOT(PB_AB0_DOT_BB1_DOT_C OR PB_AB1_DOT_BB1_DOT_NC OR PB_AB1_DOT_BB0_DOT_C );

	MB_B0_SHIFT <= OUT_4B_B;
	PS_B3_SHIFT <= OUT_2C_C;
	MB_B3_SHIFT <= OUT_4D_C;
	PS_B1_SHIFT <= OUT_2E_E;
	MB_B1_SHIFT <= OUT_4F_A;
	PS_B2_SHIFT <= OUT_2G_B;
	MB_B2_SHIFT <= OUT_4H_B;


end;
