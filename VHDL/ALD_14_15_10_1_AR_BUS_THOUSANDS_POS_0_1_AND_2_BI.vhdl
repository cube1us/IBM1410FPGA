-- VHDL for IBM SMS ALD page 14.15.10.1
-- Title: AR BUS THOUSANDS POS 0 1 AND 2 BI
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/19/2020 9:19:53 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_10_1_AR_BUS_THOUSANDS_POS_0_1_AND_2_BI is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_A_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_THP0B:	 in STD_LOGIC;
		MS_A_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_THP1B:	 in STD_LOGIC;
		MS_A_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_THP2B:	 in STD_LOGIC;
		MS_RO_INDEX_AR:	 in STD_LOGIC;
		MS_RO_FIXED_ADDR:	 in STD_LOGIC;
		PS_AR_BUS_THP0B:	 out STD_LOGIC;
		PS_AR_BUS_THP1B:	 out STD_LOGIC;
		PS_AR_BUS_THP2B:	 out STD_LOGIC);
end ALD_14_15_10_1_AR_BUS_THOUSANDS_POS_0_1_AND_2_BI;

architecture behavioral of ALD_14_15_10_1_AR_BUS_THOUSANDS_POS_0_1_AND_2_BI is 

	signal OUT_3A_A: STD_LOGIC;
	signal OUT_3B_A: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3F_A: STD_LOGIC;
	signal OUT_3G_A: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_3I_A: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;
	signal OUT_DOT_1G: STD_LOGIC;

begin

	OUT_3A_A <= NOT(MS_A_AR_GT_OUT_THP0B AND MS_C_AR_GT_OUT_THP0B AND MS_I_AR_GT_OUT_THP0B );
	OUT_3B_A <= NOT(MS_D_AR_GT_OUT_THP0B AND MS_E_AR_GT_OUT_THP0B AND MS_B_AR_GT_OUT_THP0B );
	OUT_3C_D <= NOT(MS_F_AR_GT_OUT_THP0B );
	OUT_3D_D <= NOT(MS_A_AR_GT_OUT_THP1B AND MS_C_AR_GT_OUT_THP1B AND MS_I_AR_GT_OUT_THP1B );
	OUT_3E_D <= NOT(MS_D_AR_GT_OUT_THP1B AND MS_E_AR_GT_OUT_THP1B AND MS_B_AR_GT_OUT_THP1B );
	OUT_3F_A <= NOT(MS_F_AR_GT_OUT_THP1B );
	OUT_3G_A <= NOT(MS_A_AR_GT_OUT_THP2B AND MS_C_AR_GT_OUT_THP2B AND MS_I_AR_GT_OUT_THP2B );
	OUT_3H_D <= NOT(MS_B_AR_GT_OUT_THP2B AND MS_E_AR_GT_OUT_THP2B AND MS_F_AR_GT_OUT_THP2B );
	OUT_3I_A <= NOT(MS_D_AR_GT_OUT_THP2B AND MS_RO_INDEX_AR AND MS_RO_FIXED_ADDR );
	OUT_DOT_1A <= OUT_3A_A OR OUT_3B_A OR OUT_3C_D;
	OUT_DOT_1D <= OUT_3D_D OR OUT_3E_D OR OUT_3F_A;
	OUT_DOT_1G <= OUT_3G_A OR OUT_3H_D OR OUT_3I_A;

	PS_AR_BUS_THP0B <= OUT_DOT_1A;
	PS_AR_BUS_THP1B <= OUT_DOT_1D;
	PS_AR_BUS_THP2B <= OUT_DOT_1G;


end;
