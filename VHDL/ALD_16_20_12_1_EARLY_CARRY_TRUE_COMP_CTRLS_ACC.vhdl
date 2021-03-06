-- VHDL for IBM SMS ALD page 16.20.12.1
-- Title: EARLY CARRY TRUE COMP CTRLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/3/2020 9:48:34 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PB_B_CH_PLUS:	 in STD_LOGIC;
		PB_A_CH_PLUS:	 in STD_LOGIC;
		PB_B_CH_MINUS:	 in STD_LOGIC;
		PB_A_CH_MINUS:	 in STD_LOGIC;
		PS_ADD_OP_CODE:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_UNITS_LATCH:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_SUBT_OP_CODE:	 in STD_LOGIC;
		MS_1401_MODE_1:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		PS_A_RING_2_TIME:	 in STD_LOGIC;
		MB_START_TRUE_ADD_1:	 out STD_LOGIC;
		MB_START_TRUE_ADD_2:	 out STD_LOGIC;
		MB_START_COMPL_ADD_1:	 out STD_LOGIC;
		MB_START_COMPL_ADD_2:	 out STD_LOGIC;
		PB_1401_MODE:	 out STD_LOGIC;
		MB_START_COMPL_INDEX:	 out STD_LOGIC;
		MB_START_TRUE_INDEX:	 out STD_LOGIC;
		MB_START_1401_INDEX:	 out STD_LOGIC);
end ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC;

architecture behavioral of ALD_16_20_12_1_EARLY_CARRY_TRUE_COMP_CTRLS_ACC is 

	signal OUT_5A_A: STD_LOGIC;
	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3A_A: STD_LOGIC;
	signal OUT_1A_B: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3B_B: STD_LOGIC;
	signal OUT_1B_A: STD_LOGIC;
	signal OUT_5C_B: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_3C_H: STD_LOGIC;
	signal OUT_1C_K: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_1D_B: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_5F_E: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_5G_M: STD_LOGIC;
	signal OUT_3G_B: STD_LOGIC;
	signal OUT_1G_A: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_3H_K: STD_LOGIC;
	signal OUT_1H_K: STD_LOGIC;
	signal OUT_5I_Q: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_1I_B: STD_LOGIC;

begin

	OUT_5A_A <= NOT MS_LOGIC_GATE_E_1;
	OUT_4A_NoPin <= OUT_5C_B AND PB_A_CH_PLUS;
	OUT_3A_A <= NOT(OUT_4A_NoPin OR OUT_4B_NoPin );
	OUT_1A_B <= NOT(OUT_5A_A AND PB_B_CH_PLUS AND OUT_3B_B );
	OUT_4B_NoPin <= PB_A_CH_MINUS AND OUT_5D_C;
	OUT_3B_B <= NOT OUT_3A_A;
	OUT_1B_A <= NOT(OUT_5A_A AND PB_B_CH_MINUS AND OUT_3D_C );
	OUT_5C_B <= NOT OUT_3E_C;
	OUT_4C_NoPin <= PB_A_CH_PLUS AND OUT_5D_C;
	OUT_3C_H <= NOT(OUT_4C_NoPin OR OUT_4D_NoPin );
	OUT_1C_K <= NOT(OUT_5A_A AND PB_B_CH_PLUS AND OUT_3D_C );
	OUT_5D_C <= NOT OUT_3F_C;
	OUT_4D_NoPin <= OUT_5C_B AND PB_A_CH_MINUS;
	OUT_3D_C <= NOT OUT_3C_H;
	OUT_1D_B <= NOT(OUT_5A_A AND OUT_3B_B AND PB_B_CH_MINUS );
	OUT_3E_C <= NOT(PS_ADD_OP_CODE AND OUT_4F_C );
	OUT_5F_E <= NOT(PS_B_CYCLE AND PS_UNITS_LATCH AND PS_1ST_SCAN );
	OUT_4F_C <= NOT OUT_5F_E;
	OUT_3F_C <= NOT(OUT_4F_C AND PS_SUBT_OP_CODE );
	OUT_5G_M <= NOT MS_1401_MODE_1;
	OUT_3G_B <= NOT(OUT_5G_M OR OUT_5I_Q OR OUT_5H_P );
	OUT_1G_A <= NOT(OUT_5A_A AND OUT_3G_B AND PB_B_CH_MINUS );
	OUT_5H_P <= NOT PS_X_CYCLE;
	OUT_3H_K <= NOT OUT_5H_P;
	OUT_1H_K <= NOT(OUT_5A_A AND OUT_3G_B AND PB_B_CH_PLUS );
	OUT_5I_Q <= NOT PS_A_RING_2_TIME;
	OUT_3I_D <= NOT OUT_5I_Q;
	OUT_1I_B <= NOT(OUT_5A_A AND OUT_5G_M AND OUT_3H_K AND OUT_3I_D );

	MB_START_TRUE_ADD_1 <= OUT_1A_B;
	MB_START_TRUE_ADD_2 <= OUT_1B_A;
	MB_START_COMPL_ADD_1 <= OUT_1C_K;
	MB_START_COMPL_ADD_2 <= OUT_1D_B;
	PB_1401_MODE <= OUT_5G_M;
	MB_START_COMPL_INDEX <= OUT_1G_A;
	MB_START_TRUE_INDEX <= OUT_1H_K;
	MB_START_1401_INDEX <= OUT_1I_B;


end;
