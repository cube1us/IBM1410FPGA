-- VHDL for IBM SMS ALD page 17.11.03.1
-- Title: EDIT TRANSLATOR
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/6/2020 8:07:54 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_11_03_1_EDIT_TRANSLATOR is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_A_BIT:	 in STD_LOGIC;
		PS_B_CH_2_BIT:	 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_8_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_B_CH_8_BIT:	 in STD_LOGIC;
		PS_B_CH_1_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_2_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_1_BIT:	 in STD_LOGIC;
		PS_NOT_BLANK:	 out STD_LOGIC;
		PS_NOT_C_CHAR:	 out STD_LOGIC;
		PS_NOT_R_CHAR:	 out STD_LOGIC;
		PS_NOT_SPACE:	 out STD_LOGIC);
end ALD_17_11_03_1_EDIT_TRANSLATOR;

architecture behavioral of ALD_17_11_03_1_EDIT_TRANSLATOR is 

	signal OUT_2A_E: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_1B_B: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_2F_F: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;

begin

	OUT_2A_E <= NOT(PS_B_CH_NOT_B_BIT AND PS_B_CH_NOT_A_BIT AND PS_B_CH_NOT_8_BIT );
	OUT_2B_D <= NOT(PS_B_CH_NOT_4_BIT AND PS_B_CH_NOT_2_BIT AND PS_B_CH_NOT_1_BIT );
	OUT_1B_B <= OUT_DOT_2B;
	OUT_2C_C <= NOT(PS_B_CH_B_BIT AND PS_B_CH_A_BIT AND PS_B_CH_NOT_8_BIT );
	OUT_2D_E <= NOT(PS_B_CH_NOT_4_BIT AND PS_B_CH_1_BIT AND PS_B_CH_2_BIT );
	OUT_2E_D <= NOT(PS_B_CH_B_BIT AND PS_B_CH_NOT_A_BIT AND PS_B_CH_8_BIT );
	OUT_2F_F <= NOT(PS_B_CH_NOT_2_BIT AND PS_B_CH_1_BIT AND PS_B_CH_NOT_4_BIT );
	OUT_3G_C <= NOT(PS_B_CH_B_BIT AND PS_B_CH_A_BIT AND PS_B_CH_NOT_8_BIT );
	OUT_4H_C <= NOT(PS_B_CH_NOT_4_BIT AND PS_B_CH_NOT_2_BIT AND PS_B_CH_NOT_1_BIT );
	OUT_DOT_2B <= OUT_2A_E OR OUT_2B_D;
	OUT_DOT_1C <= OUT_2C_C OR OUT_2D_E;
	OUT_DOT_1E <= OUT_2E_D OR OUT_2F_F;
	OUT_DOT_1G <= OUT_3G_C OR OUT_4H_C;

	PS_NOT_BLANK <= OUT_1B_B;
	PS_NOT_C_CHAR <= OUT_DOT_1C;
	PS_NOT_R_CHAR <= OUT_DOT_1E;
	PS_NOT_SPACE <= OUT_DOT_1G;


end;
