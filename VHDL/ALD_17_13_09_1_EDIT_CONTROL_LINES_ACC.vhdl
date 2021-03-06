-- VHDL for IBM SMS ALD page 17.13.09.1
-- Title: EDIT CONTROL LINES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 8:36:56 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_13_09_1_EDIT_CONTROL_LINES_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_WRITE_B_CHAR_OR_SPEC_CHAR:	 in STD_LOGIC;
		PS_1ST_OR_2ND_SCAN:	 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_3RD_SCAN_CONDITIONS:	 in STD_LOGIC;
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION:	 in STD_LOGIC;
		PS_NOT_DECIMAL_CONTROL:	 in STD_LOGIC;
		PS_DECIMAL:	 in STD_LOGIC;
		PS_NOT_DECIMAL:	 in STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_C:	 out STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_D:	 out STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_E:	 out STD_LOGIC;
		MS_EDIT_SET_B_CYCLE_CTRL_F:	 out STD_LOGIC);
end ALD_17_13_09_1_EDIT_CONTROL_LINES_ACC;

architecture behavioral of ALD_17_13_09_1_EDIT_CONTROL_LINES_ACC is 

	signal OUT_3B_E: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;

begin

	OUT_3B_E <= NOT(PS_WRITE_B_CHAR_OR_SPEC_CHAR AND PS_1ST_OR_2ND_SCAN AND PS_B_CH_NOT_WM_BIT );
	OUT_2B_C <= OUT_3B_E;
	OUT_3C_D <= NOT(PS_B_CH_WM_BIT_1 AND PS_3RD_SCAN_CONDITIONS AND PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION );
	OUT_3E_E <= NOT(PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION AND PS_NOT_DECIMAL_CONTROL AND PS_DECIMAL );
	OUT_3G_C <= NOT(PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION AND PS_NOT_DECIMAL AND PS_WRITE_B_CHAR_OR_SPEC_CHAR );

	MS_EDIT_SET_B_CYCLE_CTRL_C <= OUT_2B_C;
	MS_EDIT_SET_B_CYCLE_CTRL_D <= OUT_3C_D;
	MS_EDIT_SET_B_CYCLE_CTRL_E <= OUT_3E_E;
	MS_EDIT_SET_B_CYCLE_CTRL_F <= OUT_3G_C;


end;
