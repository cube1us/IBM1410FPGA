-- VHDL for IBM SMS ALD page 17.13.05.1
-- Title: EDIT CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 5:15:24 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_13_05_1_EDIT_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		PS_NOT_DECIMAL_CONTROL:	 in STD_LOGIC;
		PS_BLANK_0_OR_COMMA:	 in STD_LOGIC;
		PS_ASTERISK_FILL:	 in STD_LOGIC;
		PS_0_OR_DECIMAL:	 in STD_LOGIC;
		PS_BLANK:	 in STD_LOGIC;
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		MS_BLANKED_0_OR_COMMA:	 in STD_LOGIC;
		MS_BLANKED_CREDIT_SYMBOL:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_COMMA:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CY_DOT_1ST_SCAN:	 in STD_LOGIC;
		MS_SPACE:	 in STD_LOGIC;
		PS_0_SUPPRESS:	 in STD_LOGIC;
		PS_NOT_ASTERISK_FILL:	 in STD_LOGIC;
		MS_WRITE_EDIT_ASTERISK:	 out STD_LOGIC;
		MS_WRITE_EDIT_BLANK:	 out STD_LOGIC);
end ALD_17_13_05_1_EDIT_CONTROLS;

architecture behavioral of ALD_17_13_05_1_EDIT_CONTROLS is 

	signal OUT_4B_G: STD_LOGIC;
	signal OUT_4C_G: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_4E_E: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_2F_G: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_2G_G: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;
	signal OUT_DOT_2F: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;

begin

	OUT_4B_G <= NOT(PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION AND PS_0_SUPPRESS AND PS_NOT_DECIMAL_CONTROL );
	OUT_4C_G <= NOT(PS_BLANK_0_OR_COMMA AND PS_ASTERISK_FILL );
	OUT_3C_C <= NOT(OUT_DOT_4C AND OUT_4D_D AND OUT_4E_E );
	OUT_1C_D <= NOT OUT_3C_C;
	OUT_4D_D <= NOT(PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION AND PS_0_OR_DECIMAL AND PS_ASTERISK_FILL );
	OUT_4E_E <= NOT(PS_ASTERISK_FILL AND PS_BLANK AND PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION );
	OUT_4F_E <= NOT(PS_EXTENSION_LATCH AND PS_COMMA AND PS_E_OP_DOT_B_CY_DOT_1ST_SCAN );
	OUT_2F_G <= NOT(MS_BLANKED_0_OR_COMMA AND MS_BLANKED_CREDIT_SYMBOL );
	OUT_1F_C <= NOT OUT_DOT_2F;
	OUT_4G_C <= NOT(PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION AND PS_0_OR_DECIMAL );
	OUT_2G_G <= NOT(OUT_4F_E AND OUT_DOT_3G AND MS_SPACE );
	OUT_4H_C <= NOT(PS_0_SUPPRESS AND PS_NOT_ASTERISK_FILL );
	OUT_DOT_4C <= OUT_4B_G OR OUT_4C_G;
	OUT_DOT_2F <= OUT_2F_G OR OUT_2G_G;
	OUT_DOT_3G <= OUT_4G_C OR OUT_4H_C;

	MS_WRITE_EDIT_ASTERISK <= OUT_1C_D;
	MS_WRITE_EDIT_BLANK <= OUT_1F_C;


end;
