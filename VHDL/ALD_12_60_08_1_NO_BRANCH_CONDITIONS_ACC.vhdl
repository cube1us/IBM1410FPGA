-- VHDL for IBM SMS ALD page 12.60.08.1
-- Title: NO BRANCH CONDITIONS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/12/2020 10:41:20 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_60_08_1_NO_BRANCH_CONDITIONS_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_1_OR_1401_AND_3_TIME:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		PS_STOP_DOT_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_NO_BRANCH_COND_STAR_1412_19:	 in STD_LOGIC;
		PS_I_RING_1_OR_6_TIME:	 in STD_LOGIC;
		PS_CLEAR_OP_CODE:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_1412_19:	 in STD_LOGIC;
		MS_CND_TEST_NO_BRANCH:	 in STD_LOGIC;
		MS_EXTERNAL_CND_NO_BRANCH:	 in STD_LOGIC;
		PS_OP_MOD_REG_1_BIT:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		MS_CHAR_TEST_NO_BRANCH:	 in STD_LOGIC;
		PS_OP_MOD_REG_2_BIT:	 in STD_LOGIC;
		MS_CMP_ZONE_UNEQUAL:	 in STD_LOGIC;
		PS_B_CYCLE:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		MS_BIT_TEST_NO_BRANCH:	 in STD_LOGIC;
		PS_ZN_OR_WM_TST_BRANCH_OP_CODE:	 in STD_LOGIC;
		PS_1401_MODE:	 in STD_LOGIC;
		MS_1401_BRANCH_LATCH:	 in STD_LOGIC;
		MS_NO_BRANCH_LATCH:	 in STD_LOGIC;
		MS_NO_BRANCH_CND_INTERRUPT:	 in STD_LOGIC;
		PS_PROCESS_ROUTINE:	 in STD_LOGIC;
		PS_NO_SCAN:	 in STD_LOGIC;
		MS_OVERLAP_CH_2_NO_BRANCH:	 in STD_LOGIC;
		MS_1401_BRANCH_LAST_EX_CYCLE:	 in STD_LOGIC;
		MS_1401_NO_OP_DOT_LIROC:	 in STD_LOGIC;
		PS_EVEN_HUNDREDS_ADDR:	 in STD_LOGIC;
		PS_NO_BRANCH_CONDITIONS:	 out STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_BR_CND:	 out STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN:	 out STD_LOGIC);
end ALD_12_60_08_1_NO_BRANCH_CONDITIONS_ACC;

architecture behavioral of ALD_12_60_08_1_NO_BRANCH_CONDITIONS_ACC is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_2A_G: STD_LOGIC;
	signal OUT_5B_E: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_2C_G: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_4D_E: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_4E_E: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_3F_K: STD_LOGIC;
	signal OUT_2F_E: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_5H_C: STD_LOGIC;
	signal OUT_2H_E: STD_LOGIC;
	signal OUT_5I_B: STD_LOGIC;
	signal OUT_DOT_2A: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;

begin

	OUT_5A_C <= NOT(PS_I_RING_1_OR_1401_AND_3_TIME AND PS_STOP_DOT_BRANCH_OP_CODE AND PS_LAST_INSN_RO_CYCLE );
	OUT_2A_G <= NOT(OUT_5A_C AND MS_CND_TEST_NO_BRANCH AND MS_EXTERNAL_CND_NO_BRANCH );
	OUT_5B_E <= NOT(PS_LAST_INSN_RO_CYCLE AND PS_CLEAR_OP_CODE AND PS_I_RING_1_OR_6_TIME );
	OUT_2B_D <= NOT(OUT_5A_C AND MS_EXTERNAL_CND_NO_BRANCH AND MS_CND_TEST_NO_BRANCH );
	OUT_5C_NoPin <= NOT(PS_B_CH_WM_BIT_1 AND PS_OP_MOD_REG_1_BIT );
	OUT_2C_G <= NOT(OUT_5B_E AND OUT_DOT_4D );
	OUT_5D_NoPin <= NOT(PS_OP_MOD_REG_2_BIT AND MS_CMP_ZONE_UNEQUAL );
	OUT_4D_E <= NOT(OUT_5C_NoPin AND OUT_5D_NoPin );
	OUT_3D_A <= OUT_5G_E;
	OUT_4E_E <= NOT(PS_B_CYCLE AND PS_1ST_SCAN AND PS_ZN_OR_WM_TST_BRANCH_OP_CODE );
	OUT_2E_D <= NOT(MS_CHAR_TEST_NO_BRANCH AND MS_BIT_TEST_NO_BRANCH AND MS_NO_BRANCH_CND_INTERRUPT );
	OUT_5F_C <= NOT(PS_1401_MODE AND MS_1401_BRANCH_LATCH );
	OUT_4F_D <= NOT(OUT_5F_C AND MS_NO_BRANCH_LATCH );
	OUT_3F_K <= NOT(OUT_4F_D AND PS_1ST_SCAN );
	OUT_2F_E <= NOT(OUT_DOT_4D AND MS_CHAR_TEST_NO_BRANCH AND MS_BIT_TEST_NO_BRANCH );
	OUT_5G_E <= NOT(PS_NO_SCAN AND PS_PROCESS_ROUTINE AND PS_B_CYCLE );
	OUT_2G_C <= NOT(OUT_3D_A AND MS_OVERLAP_CH_2_NO_BRANCH AND OUT_DOT_3H );
	OUT_5H_C <= NOT(PS_CLEAR_OP_CODE AND PS_B_CYCLE );
	OUT_2H_E <= NOT(MS_NO_BRANCH_CND_INTERRUPT AND MS_1401_NO_OP_DOT_LIROC AND MS_1401_BRANCH_LAST_EX_CYCLE );
	OUT_5I_B <= NOT PS_EVEN_HUNDREDS_ADDR;
	OUT_DOT_2A <= OUT_2A_G OR PS_NO_BRANCH_COND_STAR_1412_19 OR OUT_2C_G OR OUT_2E_D;
	OUT_DOT_2B <= OUT_2B_D OR OUT_2F_E OR OUT_2G_C OR OUT_2H_E OR PS_LAST_EXECUTE_CYCLE_STAR_1412_19;
	OUT_DOT_3H <= OUT_3F_K OR OUT_5H_C OR OUT_5I_B;
	OUT_DOT_4D <= OUT_4D_E OR OUT_4E_E;

	MS_B_CYCLE_DOT_NO_SCAN <= OUT_3D_A;
	PS_NO_BRANCH_CONDITIONS <= OUT_DOT_2A;
	PS_LAST_EXECUTE_CYCLE_STAR_BR_CND <= OUT_DOT_2B;


end;
