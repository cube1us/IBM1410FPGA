-- VHDL for IBM SMS ALD page 13.64.07.1
-- Title: COMPUTE DISABLE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/5/2020 10:34:34 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_64_07_1_COMPUTE_DISABLE_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_F_CYCLE_REQUIRED:	 in STD_LOGIC;
		MS_F_CH_UNOVLP_IN_PROCESS:	 in STD_LOGIC;
		MS_COMP_DSBLE_F_CH:	 in STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 in STD_LOGIC;
		PS_I_RING_5_TIME:	 in STD_LOGIC;
		PS_BRANCH_ON_STATUS_CH_2:	 in STD_LOGIC;
		PS_F1_REG_FULL:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_F_CH_OVLP_IN_PROCESS:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_F_CH_INT_END_OF_XFER_DELAYED:	 in STD_LOGIC;
		PS_COMP_DISABLE_CYCLE_JRJ:	 out STD_LOGIC);
end ALD_13_64_07_1_COMPUTE_DISABLE_ACC;

architecture behavioral of ALD_13_64_07_1_COMPUTE_DISABLE_ACC is 

	signal OUT_2D_B: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_2F_R: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_2G_B: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_3H_F: STD_LOGIC;
	signal OUT_3I_G: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;

begin

	OUT_2D_B <= NOT MS_F_CYCLE_REQUIRED;
	OUT_2E_E <= NOT(MS_F_CH_UNOVLP_IN_PROCESS AND MS_COMP_DSBLE_F_CH AND OUT_3F_C );
	OUT_3F_C <= NOT(PS_F_CH_IN_PROCESS AND PS_I_RING_5_TIME AND PS_BRANCH_ON_STATUS_CH_2 );
	OUT_2F_R <= NOT OUT_DOT_4G;
	OUT_4G_F <= NOT PS_F1_REG_FULL;
	OUT_2G_B <= NOT OUT_DOT_3H;
	OUT_4H_C <= NOT(PS_F_CH_INPUT_MODE AND PS_F_CH_OVLP_IN_PROCESS );
	OUT_3H_F <= NOT MS_F2_REG_FULL;
	OUT_3I_G <= NOT(PS_F_CH_OVLP_IN_PROCESS AND PS_F_CH_OUTPUT_MODE AND PS_F_CH_INT_END_OF_XFER_DELAYED );
	OUT_DOT_1D <= OUT_2D_B OR OUT_2E_E OR OUT_2F_R OR OUT_2G_B;
	OUT_DOT_4G <= OUT_4G_F OR OUT_4H_C;
	OUT_DOT_3H <= OUT_3H_F OR OUT_3I_G;

	PS_COMP_DISABLE_CYCLE_JRJ <= OUT_DOT_1D;


end;
