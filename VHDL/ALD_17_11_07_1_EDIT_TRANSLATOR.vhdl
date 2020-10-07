-- VHDL for IBM SMS ALD page 17.11.07.1
-- Title: EDIT TRANSLATOR
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/6/2020 8:07:58 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_11_07_1_EDIT_TRANSLATOR is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_8_AND_NOT_1_BIT:	 in STD_LOGIC;
		PS_B_CH_4_AND_NOT_2_BIT:	 in STD_LOGIC;
		PS_B_CH_B_AND_NOT_A_BIT:	 in STD_LOGIC;
		PS_B_CH_8_AND_1_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_4_AND_2_BIT:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CYCLE_1:	 in STD_LOGIC;
		PS_B_CH_B_AND_A_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_8_AND_NOT_1_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_4_AND_NOT_2_BIT:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_ASTERISK:	 out STD_LOGIC;
		PS_ASTERISK_OR_DOLLAR_SIGN:	 out STD_LOGIC;
		PS_DOLLAR_SIGN:	 out STD_LOGIC;
		MS_SPACE:	 out STD_LOGIC);
end ALD_17_11_07_1_EDIT_TRANSLATOR;

architecture behavioral of ALD_17_11_07_1_EDIT_TRANSLATOR is 

	signal OUT_3B_C: STD_LOGIC;
	signal OUT_1B_C: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_1D_R: STD_LOGIC;
	signal OUT_3F_G: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;

begin

	OUT_3B_C <= NOT(PS_B_CH_B_AND_NOT_A_BIT AND PS_B_CH_8_AND_NOT_1_BIT AND PS_B_CH_4_AND_NOT_2_BIT );
	OUT_1B_C <= NOT(OUT_3B_C );
	OUT_1C_C <= NOT(OUT_3B_C AND OUT_3D_D );
	OUT_3D_D <= NOT(PS_B_CH_B_AND_NOT_A_BIT AND PS_B_CH_8_AND_1_BIT AND PS_B_CH_NOT_4_AND_2_BIT );
	OUT_1D_R <= NOT(OUT_3D_D );
	OUT_3F_G <= NOT(PS_E_OP_DOT_B_CYCLE_1 AND PS_B_CH_B_AND_A_BIT );
	OUT_3H_G <= NOT(PS_B_CH_NOT_8_AND_NOT_1_BIT AND PS_B_CH_NOT_4_AND_NOT_2_BIT AND PS_1ST_SCAN );
	OUT_DOT_1F <= OUT_3F_G OR OUT_3H_G;

	PS_ASTERISK <= OUT_1B_C;
	PS_ASTERISK_OR_DOLLAR_SIGN <= OUT_1C_C;
	PS_DOLLAR_SIGN <= OUT_1D_R;
	MS_SPACE <= OUT_DOT_1F;


end;
