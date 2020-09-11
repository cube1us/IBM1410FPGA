-- VHDL for IBM SMS ALD page 15.41.07.1
-- Title: CHANNEL CHARACTER DETECTION-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/11/2020 10:36:34 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_41_07_1_CHANNEL_CHARACTER_DETECTION_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_B_CH_NOT_1_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_2_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_4_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_8_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_A_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_B_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_B_CH_C_BIT:	 in STD_LOGIC;
		MS_B_CH_GROUP_MARK_DOT_WM:	 out STD_LOGIC;
		PB_B_CH_GROUP_MARK_WM:	 out STD_LOGIC;
		PS_B_CH_GROUP_MARK_DOT_WM:	 out STD_LOGIC;
		PS_B_CH_NOT_GROUP_MARK_WM:	 out STD_LOGIC;
		PB_B_CH_NOT_GROUP_MARK_WM:	 out STD_LOGIC);
end ALD_15_41_07_1_CHANNEL_CHARACTER_DETECTION_ACC;

architecture behavioral of ALD_15_41_07_1_CHANNEL_CHARACTER_DETECTION_ACC is 

	signal OUT_4A_G: STD_LOGIC;
	signal OUT_3A_E: STD_LOGIC;
	signal OUT_4B_A: STD_LOGIC;
	signal OUT_1B_B: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_Q: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_3D_K: STD_LOGIC;
	signal OUT_4E_A: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;

begin

	OUT_4A_G <= NOT(PB_B_CH_NOT_1_BIT OR PB_B_CH_NOT_2_BIT OR PB_B_CH_NOT_4_BIT OR PB_B_CH_NOT_8_BIT );
	OUT_3A_E <= NOT OUT_DOT_4A;
	OUT_4B_A <= NOT(PB_B_CH_NOT_A_BIT OR PB_B_CH_NOT_B_BIT OR PB_B_CH_NOT_WM_BIT OR PB_B_CH_C_BIT );
	OUT_1B_B <= NOT OUT_3A_E;
	OUT_3C_C <= NOT OUT_DOT_4D;
	OUT_2C_Q <= OUT_3C_C;
	OUT_4D_G <= NOT(PB_B_CH_C_BIT OR PB_B_CH_NOT_WM_BIT OR PB_B_CH_NOT_B_BIT OR PB_B_CH_NOT_A_BIT );
	OUT_3D_K <= NOT(OUT_DOT_4D );
	OUT_4E_A <= NOT(PB_B_CH_NOT_8_BIT OR PB_B_CH_NOT_4_BIT OR PB_B_CH_NOT_2_BIT OR PB_B_CH_NOT_1_BIT );
	OUT_DOT_4A <= OUT_4A_G AND OUT_4B_A;
	OUT_DOT_4D <= OUT_4D_G AND OUT_4E_A;

	MS_B_CH_GROUP_MARK_DOT_WM <= OUT_3A_E;
	PS_B_CH_GROUP_MARK_DOT_WM <= OUT_1B_B;
	PS_B_CH_NOT_GROUP_MARK_WM <= OUT_2C_Q;
	PB_B_CH_NOT_GROUP_MARK_WM <= OUT_3D_K;
	PB_B_CH_GROUP_MARK_WM <= OUT_DOT_4A;


end;
