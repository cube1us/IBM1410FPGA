-- VHDL for IBM SMS ALD page 15.41.04.1
-- Title: CHANNEL CHARACTER DETECTION-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/11/2020 10:27:26 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_41_04_1_CHANNEL_CHARACTER_DETECTION_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_B_CH_1_BIT:	 in STD_LOGIC;
		PB_B_CH_2_BIT:	 in STD_LOGIC;
		PB_B_CH_4_BIT:	 in STD_LOGIC;
		PB_B_CH_8_BIT:	 in STD_LOGIC;
		PB_B_CH_A_BIT:	 in STD_LOGIC;
		PB_B_CH_B_BIT:	 in STD_LOGIC;
		MB_B_CH_NOT_BLANK:	 out STD_LOGIC;
		PB_B_CH_BLANK:	 out STD_LOGIC);
end ALD_15_41_04_1_CHANNEL_CHARACTER_DETECTION_ACC;

architecture behavioral of ALD_15_41_04_1_CHANNEL_CHARACTER_DETECTION_ACC is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_4D_A: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_4A_G <= NOT(PB_B_CH_1_BIT OR PB_B_CH_2_BIT OR PB_B_CH_4_BIT OR PB_B_CH_8_BIT );
	OUT_4B_B <= NOT(PB_B_CH_A_BIT OR PB_B_CH_B_BIT );
	OUT_4D_A <= NOT(PB_B_CH_1_BIT OR PB_B_CH_2_BIT OR PB_B_CH_4_BIT OR PB_B_CH_8_BIT );
	OUT_4E_C <= NOT(PB_B_CH_A_BIT OR PB_B_CH_B_BIT );
	OUT_DOT_1A <= OUT_4A_G AND OUT_4B_B;
	OUT_DOT_1D <= OUT_4D_A AND OUT_4E_C;

	MB_B_CH_NOT_BLANK <= OUT_DOT_1A;
	PB_B_CH_BLANK <= OUT_DOT_1D;


end;