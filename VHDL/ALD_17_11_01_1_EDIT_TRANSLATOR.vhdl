-- VHDL for IBM SMS ALD page 17.11.01.1
-- Title: EDIT TRANSLATOR
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/6/2020 8:07:51 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_11_01_1_EDIT_TRANSLATOR is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_1_BIT:	 in STD_LOGIC;
		PS_B_CH_8_BIT:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_2_BIT:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_B_CH_2_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_A_BIT:	 in STD_LOGIC;
		PS_B_CH_1_BIT:	 in STD_LOGIC;
		PS_NOT_CTRL_0:	 out STD_LOGIC;
		PS_NOT_ASTERISK:	 out STD_LOGIC;
		PS_NOT_DOLLAR_SIGN:	 out STD_LOGIC);
end ALD_17_11_01_1_EDIT_TRANSLATOR;

architecture behavioral of ALD_17_11_01_1_EDIT_TRANSLATOR is 

	signal OUT_2C_G: STD_LOGIC;
	signal OUT_2D_G: STD_LOGIC;
	signal OUT_1D_L: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_2F_G: STD_LOGIC;
	signal OUT_3G_G: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;

begin

	OUT_2C_G <= NOT(PS_B_CH_8_BIT AND PS_B_CH_NOT_B_BIT AND PS_B_CH_NOT_A_BIT );
	OUT_2D_G <= NOT(PS_B_CH_NOT_4_BIT AND PS_B_CH_2_BIT AND PS_B_CH_NOT_1_BIT );
	OUT_1D_L <= OUT_DOT_2D;
	OUT_2E_G <= NOT(PS_B_CH_B_BIT AND PS_B_CH_NOT_A_BIT AND PS_B_CH_8_BIT );
	OUT_2F_G <= NOT(PS_B_CH_4_BIT AND PS_B_CH_NOT_2_BIT AND PS_B_CH_NOT_1_BIT );
	OUT_3G_G <= NOT(PS_B_CH_B_BIT AND PS_B_CH_NOT_A_BIT AND PS_B_CH_8_BIT );
	OUT_4H_G <= NOT(PS_B_CH_1_BIT AND PS_B_CH_NOT_4_BIT AND PS_B_CH_2_BIT );
	OUT_DOT_1G <= OUT_3G_G OR OUT_4H_G;
	OUT_DOT_1E <= OUT_2E_G OR OUT_2F_G;
	OUT_DOT_2D <= OUT_2C_G OR OUT_2D_G;

	PS_NOT_CTRL_0 <= OUT_1D_L;
	PS_NOT_DOLLAR_SIGN <= OUT_DOT_1G;
	PS_NOT_ASTERISK <= OUT_DOT_1E;


end;