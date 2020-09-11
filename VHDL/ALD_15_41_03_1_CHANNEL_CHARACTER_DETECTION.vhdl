-- VHDL for IBM SMS ALD page 15.41.03.1
-- Title: CHANNEL CHARACTER DETECTION
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/9/2020 6:28:06 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_41_03_1_CHANNEL_CHARACTER_DETECTION is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_A_CH_A_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_8_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_2_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_1_BIT:	 in STD_LOGIC;
		MS_A_CH_CHAR_NOT_A_BIT:	 out STD_LOGIC;
		PS_A_CH_CHAR_A_BIT_ONLY:	 out STD_LOGIC);
end ALD_15_41_03_1_CHANNEL_CHARACTER_DETECTION;

architecture behavioral of ALD_15_41_03_1_CHANNEL_CHARACTER_DETECTION is 

	signal OUT_5B_5: STD_LOGIC;
	signal OUT_4C_6: STD_LOGIC;
	signal OUT_1C_R: STD_LOGIC;
	signal OUT_3D_2: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_3E_4: STD_LOGIC;
	signal OUT_1E_A: STD_LOGIC;
	signal OUT_4F_9: STD_LOGIC;
	signal OUT_5G_8: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_2E: STD_LOGIC;

begin

	OUT_5B_5 <= NOT(PS_A_CH_NOT_1_BIT AND PS_A_CH_NOT_2_BIT );
	OUT_4C_6 <= NOT(PS_A_CH_NOT_B_BIT );
	OUT_1C_R <= OUT_DOT_2C;
	OUT_3D_2 <= NOT(PS_A_CH_A_BIT AND PS_A_CH_NOT_8_BIT AND PS_A_CH_NOT_4_BIT );
	OUT_1D_C <= NOT(OUT_1C_R );
	OUT_3E_4 <= NOT(PS_A_CH_A_BIT AND PS_A_CH_NOT_8_BIT AND PS_A_CH_NOT_4_BIT );
	OUT_1E_A <= NOT(OUT_DOT_2E );
	OUT_4F_9 <= NOT(PS_A_CH_NOT_B_BIT );
	OUT_5G_8 <= NOT(PS_A_CH_NOT_1_BIT AND PS_A_CH_NOT_2_BIT );
	OUT_DOT_2C <= OUT_5B_5 OR OUT_4C_6 OR OUT_3D_2;
	OUT_DOT_2E <= OUT_3E_4 OR OUT_4F_9 OR OUT_5G_8;

	MS_A_CH_CHAR_NOT_A_BIT <= OUT_1D_C;
	PS_A_CH_CHAR_A_BIT_ONLY <= OUT_1E_A;


end;