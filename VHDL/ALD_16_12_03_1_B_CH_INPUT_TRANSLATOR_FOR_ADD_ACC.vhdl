-- VHDL for IBM SMS ALD page 16.12.03.1
-- Title: B CH INPUT TRANSLATOR FOR ADD-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/28/2020 7:31:22 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_12_03_1_B_CH_INPUT_TRANSLATOR_FOR_ADD_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_B_CH_NOT_8_BIT:	 in STD_LOGIC;
		PB_TRUE_ADD_B:	 in STD_LOGIC;
		PB_B_CH_NOT_4_BIT:	 in STD_LOGIC;
		PB_B_CH_1_BIT:	 in STD_LOGIC;
		PB_B_CH_2_BIT:	 in STD_LOGIC;
		PB_COMP_ADD_B:	 in STD_LOGIC;
		PB_B_CH_4_BIT:	 in STD_LOGIC;
		MB_ADD_BQ2:	 out STD_LOGIC);
end ALD_16_12_03_1_B_CH_INPUT_TRANSLATOR_FOR_ADD_ACC;

architecture behavioral of ALD_16_12_03_1_B_CH_INPUT_TRANSLATOR_FOR_ADD_ACC is 

	signal OUT_4C_A: STD_LOGIC;
	signal OUT_4E_A: STD_LOGIC;
	signal OUT_4G_K: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;

begin

	OUT_4C_A <= NOT(PB_B_CH_NOT_8_BIT AND PB_B_CH_2_BIT AND PB_B_CH_NOT_4_BIT AND PB_TRUE_ADD_B );
	OUT_4E_A <= NOT(PB_TRUE_ADD_B AND PB_B_CH_NOT_4_BIT AND PB_B_CH_2_BIT AND PB_B_CH_1_BIT );
	OUT_4G_K <= NOT(PB_B_CH_2_BIT AND PB_COMP_ADD_B AND PB_B_CH_4_BIT );
	OUT_DOT_1C <= OUT_4C_A AND OUT_4E_A AND OUT_4G_K;

	MB_ADD_BQ2 <= OUT_DOT_1C;


end;
