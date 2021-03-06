-- VHDL for IBM SMS ALD page 12.12.33.1
-- Title: CYCLE LENGTH CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/18/2020 1:51:47 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_33_1_CYCLE_LENGTH_CONTROLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		PS_A_RING_4_TIME:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		SWITCH_ROT_STOR_SCAN_DK6:	 in STD_LOGIC_VECTOR(5 downTo 0);
		MS_1401_MODE_DOT_A_RING_4_DOT_X_CYCLE:	 out STD_LOGIC;
		MS_1401_MODE_DOT_I_RING_5_OR_10_DOT_I_CY:	 out STD_LOGIC;
		PS_STOP_AT_K:	 out STD_LOGIC;
		MS_STORAGE_SCAN_LOAD:	 out STD_LOGIC;
		MV_STORAGE_SCAN_REGEN_MODE:	 out STD_LOGIC);
end ALD_12_12_33_1_CYCLE_LENGTH_CONTROLS_ACC;

architecture behavioral of ALD_12_12_33_1_CYCLE_LENGTH_CONTROLS_ACC is 

	signal OUT_4C_D: STD_LOGIC;
	signal OUT_4E_E: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_1G_C: STD_LOGIC;
	signal OUT_4H_X: STD_LOGIC;
	signal OUT_1H_K: STD_LOGIC;
	signal OUT_5I_A: STD_LOGIC;
	signal OUT_5I_B: STD_LOGIC;
	signal OUT_5I_D: STD_LOGIC;
	signal OUT_5I_E: STD_LOGIC;
	signal OUT_3I_X: STD_LOGIC;
	signal OUT_DOT_5I: STD_LOGIC;
	signal OUT_DOT_4I: STD_LOGIC;

begin

	OUT_4C_D <= NOT(PS_A_RING_4_TIME AND PS_X_CYCLE AND PS_1401_MODE_1 );
	OUT_4E_E <= NOT(PS_1401_MODE_1 AND PS_I_RING_5_OR_10_TIME AND PS_I_CYCLE );
	OUT_3G_D <= NOT OUT_4H_X;
	OUT_2G_C <= NOT(OUT_3G_D AND MS_ADDRESS_SET_ROUTINE AND PS_STORAGE_SCAN_ROUTINE );
	OUT_1G_C <= NOT(OUT_4C_D AND OUT_4E_E AND OUT_2G_C );
	OUT_4H_X <= OUT_DOT_5I;
	OUT_1H_K <= OUT_2G_C;
	OUT_5I_A <= NOT SWITCH_ROT_STOR_SCAN_DK6(1);
	OUT_5I_B <= NOT SWITCH_ROT_STOR_SCAN_DK6(2);
	OUT_5I_D <= NOT SWITCH_ROT_STOR_SCAN_DK6(4);
	OUT_5I_E <= NOT SWITCH_ROT_STOR_SCAN_DK6(5);
	OUT_3I_X <= OUT_DOT_4I;
	OUT_DOT_5I <= OUT_5I_A AND OUT_5I_B;
	OUT_DOT_4I <= OUT_5I_D AND OUT_5I_E;

	MS_1401_MODE_DOT_A_RING_4_DOT_X_CYCLE <= OUT_4C_D;
	MS_1401_MODE_DOT_I_RING_5_OR_10_DOT_I_CY <= OUT_4E_E;
	PS_STOP_AT_K <= OUT_1G_C;
	MS_STORAGE_SCAN_LOAD <= OUT_1H_K;
	MV_STORAGE_SCAN_REGEN_MODE <= OUT_3I_X;


end;
