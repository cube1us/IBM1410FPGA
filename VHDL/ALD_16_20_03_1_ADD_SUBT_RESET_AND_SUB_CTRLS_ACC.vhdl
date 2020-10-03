-- VHDL for IBM SMS ALD page 16.20.03.1
-- Title: ADD SUBT RESET AND SUB CTRLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/2/2020 12:30:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_03_1_ADD_SUBT_RESET_AND_SUB_CTRLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ADD_TYPE_OP_CODES:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PB_A_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_A_CH_WM_BIT:	 in STD_LOGIC;
		PS_TRUE_LATCH:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_UNITS_OR_BODY_LATCH:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_RESET_TYPE_OP_CODES:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		MB_RA_OR_RS_OR_A_OR_S_DOT_B_DOT_NOT_BW:	 out STD_LOGIC;
		MB_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_NOT_BW_DOT_NOT_AW:	 out STD_LOGIC;
		MB_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_NOT_BW_DOT_AW:	 out STD_LOGIC;
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X:	 out STD_LOGIC;
		MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y:	 out STD_LOGIC;
		MS_RA_OR_RS_DOT_B_DOT_U_OR_Y_DOT_1401:	 out STD_LOGIC;
		MS_RA_OR_RS_DOT_B_DOT_X_DOT_1401:	 out STD_LOGIC);
end ALD_16_20_03_1_ADD_SUBT_RESET_AND_SUB_CTRLS_ACC;

architecture behavioral of ALD_16_20_03_1_ADD_SUBT_RESET_AND_SUB_CTRLS_ACC is 

	signal OUT_4A_M: STD_LOGIC;
	signal OUT_3A_P: STD_LOGIC;
	signal OUT_2A_C: STD_LOGIC;
	signal OUT_5B_E: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_3B_B: STD_LOGIC;
	signal OUT_1B_D: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3E_K: STD_LOGIC;
	signal OUT_3F_G: STD_LOGIC;
	signal OUT_3G_P: STD_LOGIC;
	signal OUT_3H_C: STD_LOGIC;
	signal OUT_3I_P: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;
	signal OUT_DOT_1H: STD_LOGIC;

begin

	OUT_4A_M <= NOT OUT_5B_E;
	OUT_3A_P <= NOT(PS_ADD_TYPE_OP_CODES AND PS_B_CYCLE );
	OUT_2A_C <= NOT OUT_3A_P;
	OUT_5B_E <= NOT(PS_1ST_SCAN AND PS_ADD_TYPE_OP_CODES AND PS_B_CYCLE );
	OUT_4B_D <= NOT OUT_5B_E;
	OUT_3B_B <= NOT(OUT_4A_M AND PB_B_CH_NOT_WM_BIT AND PB_A_CH_NOT_WM_BIT );
	OUT_1B_D <= NOT(OUT_2A_C AND PB_B_CH_NOT_WM_BIT );
	OUT_3C_A <= NOT(OUT_4A_M AND PB_B_CH_NOT_WM_BIT AND PB_A_CH_WM_BIT );
	OUT_3D_D <= NOT(OUT_4B_D AND PS_TRUE_LATCH AND PS_EXTENSION_LATCH );
	OUT_3E_K <= NOT(OUT_4B_D AND PS_UNITS_OR_BODY_LATCH );
	OUT_3F_G <= NOT(PS_RESET_TYPE_OP_CODES AND PS_1401_MODE_1 );
	OUT_3G_P <= NOT(PS_UNITS_OR_BODY_LATCH AND PS_B_CYCLE );
	OUT_3H_C <= NOT(PS_RESET_TYPE_OP_CODES AND PS_1401_MODE_1 );
	OUT_3I_P <= NOT(PS_EXTENSION_LATCH AND PS_B_CYCLE );
	OUT_DOT_1F <= OUT_3F_G OR OUT_3G_P;
	OUT_DOT_1H <= OUT_3H_C OR OUT_3I_P;

	MB_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_NOT_BW_DOT_NOT_AW <= OUT_3B_B;
	MB_RA_OR_RS_OR_A_OR_S_DOT_B_DOT_NOT_BW <= OUT_1B_D;
	MB_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_NOT_BW_DOT_AW <= OUT_3C_A;
	MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_T_DOT_X <= OUT_3D_D;
	MS_RA_OR_RS_OR_A_OR_S_DOT_1_DOT_B_DOT_U_OR_Y <= OUT_3E_K;
	MS_RA_OR_RS_DOT_B_DOT_U_OR_Y_DOT_1401 <= OUT_DOT_1F;
	MS_RA_OR_RS_DOT_B_DOT_X_DOT_1401 <= OUT_DOT_1H;


end;