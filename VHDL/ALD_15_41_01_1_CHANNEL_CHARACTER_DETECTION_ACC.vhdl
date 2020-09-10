-- VHDL for IBM SMS ALD page 15.41.01.1
-- Title: CHANNEL CHARACTER DETECTION-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/9/2020 6:28:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_41_01_1_CHANNEL_CHARACTER_DETECTION_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E1_INPUT_C_BIT:	 in STD_LOGIC;
		PS_E1_INPUT_1_BIT:	 in STD_LOGIC;
		MS_E1_INPUT_B_BIT:	 in STD_LOGIC;
		PS_E1_INPUT_A_BIT:	 in STD_LOGIC;
		PS_E1_INPUT_8_BIT:	 in STD_LOGIC;
		PS_E1_INPUT_4_BIT:	 in STD_LOGIC;
		MS_E1_INPUT_2_BIT:	 in STD_LOGIC;
		MS_E_CH_WORD_SEPARATOR:	 out STD_LOGIC);
end ALD_15_41_01_1_CHANNEL_CHARACTER_DETECTION_ACC;

architecture behavioral of ALD_15_41_01_1_CHANNEL_CHARACTER_DETECTION_ACC is 

	signal OUT_5B_C: STD_LOGIC;
	signal OUT_4C_P: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_1D_L: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;

begin

	OUT_5B_C <= NOT(PS_E1_INPUT_C_BIT AND PS_E1_INPUT_1_BIT );
	OUT_4C_P <= NOT(MS_E1_INPUT_B_BIT AND PS_E1_INPUT_A_BIT );
	OUT_3D_D <= NOT(PS_E1_INPUT_8_BIT AND PS_E1_INPUT_4_BIT AND MS_E1_INPUT_2_BIT );
	OUT_1D_L <= OUT_DOT_2D;
	OUT_DOT_2D <= OUT_5B_C OR OUT_4C_P OR OUT_3D_D;

	MS_E_CH_WORD_SEPARATOR <= OUT_1D_L;


end;
