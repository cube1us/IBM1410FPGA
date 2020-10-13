-- VHDL for IBM SMS ALD page 18.14.06.1
-- Title: A AND B REG SET CHECKS FEAT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/13/2020 11:04:34 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_14_06_1_A_AND_B_REG_SET_CHECKS_FEAT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_GATE_E_1:	 in STD_LOGIC;
		PS_2ND_OR_3RD_CHECK_TEST:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		PS_B_DATA_REG_RESET:	 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		MS_ADDRESS_EXIT_SAMPLE:	 in STD_LOGIC;
		MS_1ST_TRIGGER_CHECK:	 in STD_LOGIC;
		MS_LOGIC_GATE_T:	 in STD_LOGIC;
		MS_LOG_GT_E_DOT_2ND_OR_3RD_CHK_TEST:	 out STD_LOGIC;
		MS_B_REG_RESET_ERROR:	 out STD_LOGIC;
		LAMP_15A1C20:	 out STD_LOGIC);
end ALD_18_14_06_1_A_AND_B_REG_SET_CHECKS_FEAT_ACC;

architecture behavioral of ALD_18_14_06_1_A_AND_B_REG_SET_CHECKS_FEAT_ACC is 

	signal OUT_5B_D: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_3B_E: STD_LOGIC;
	signal OUT_3B_H: STD_LOGIC;
	signal OUT_5C_P: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_2C_NoPin: STD_LOGIC;
	signal OUT_1D_F: STD_LOGIC;
	signal OUT_4E_R: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_2E_NoPin: STD_LOGIC;
	signal OUT_4F_R: STD_LOGIC;
	signal OUT_2G_E: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;

begin

	OUT_5B_D <= NOT(PS_LOGIC_GATE_E_1 AND PS_2ND_OR_3RD_CHECK_TEST );
	OUT_4B_C <= NOT OUT_5B_D;

	SMS_DEZ_3B: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEOFF => OUT_3B_H,	-- Pin F
		ACSET => OUT_DOT_4B,	-- Pin G
		DCRESET => MS_PROGRAM_RESET_3,	-- Pin B
		GATEON => OUT_3B_E,	-- Pin A
		OUTOFF => OUT_3B_E,
		OUTON => OUT_3B_H,
		DCRFORCE => OPEN );

	OUT_5C_P <= NOT(PS_B_DATA_REG_RESET );
	OUT_4C_B <= NOT OUT_5C_P;
	OUT_2C_NoPin <= NOT(OUT_3B_E AND OUT_3E_C );
	OUT_1D_F <= NOT(OUT_2C_NoPin AND OUT_2E_NoPin AND PS_ERROR_SAMPLE );
	OUT_4E_R <= NOT MS_ADDRESS_EXIT_SAMPLE;

	SMS_DEZ_3E: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEOFF => OUT_3E_D,	-- Pin L
		ACSET => OUT_DOT_4E,	-- Pin R
		DCRESET => MS_PROGRAM_RESET_3,	-- Pin P
		GATEON => OUT_3E_C,	-- Pin Q
		OUTOFF => OUT_3E_C,
		OUTON => OUT_3E_D,
		DCRFORCE => OPEN,
		DCSET => OPEN,
		DCSFORCE => OPEN );

	OUT_2E_NoPin <= NOT(OUT_3B_H AND OUT_3E_D );
	OUT_4F_R <= NOT OUT_4H_D;
	OUT_2G_E <= NOT OUT_1D_F;
	LAMP_15A1C20 <= OUT_2G_E;
	OUT_5H_D <= NOT(MS_1ST_TRIGGER_CHECK AND MS_LOGIC_GATE_T );
	OUT_4H_D <= NOT(OUT_5H_D );
	OUT_DOT_4B <= OUT_4B_C OR OUT_4C_B;
	OUT_DOT_4E <= OUT_4E_R OR OUT_4F_R;

	MS_LOG_GT_E_DOT_2ND_OR_3RD_CHK_TEST <= OUT_5B_D;
	MS_B_REG_RESET_ERROR <= OUT_1D_F;


end;
