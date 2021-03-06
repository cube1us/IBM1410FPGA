-- VHDL for IBM SMS ALD page 14.15.02.1
-- Title: AR BUS UNITS POS 2 AND 4 BITS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/19/2020 9:19:38 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_02_1_AR_BUS_UNITS_POS_2_AND_4_BITS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_A_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_ADDR_GEN_U_POS_0_DIGIT:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_02_BIT:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_12_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_24_BIT:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_UP2B:	 in STD_LOGIC;
		MS_A_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_04_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_U_POS_5_DIGIT:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_48_BIT:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_UP4B:	 in STD_LOGIC;
		PS_AR_BUS_UP2B:	 out STD_LOGIC;
		PS_AR_BUS_UP4B:	 out STD_LOGIC);
end ALD_14_15_02_1_AR_BUS_UNITS_POS_2_AND_4_BITS;

architecture behavioral of ALD_14_15_02_1_AR_BUS_UNITS_POS_2_AND_4_BITS is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3F_A: STD_LOGIC;
	signal OUT_3G_A: STD_LOGIC;
	signal OUT_3H_A: STD_LOGIC;
	signal OUT_3I_A: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;

begin

	OUT_3A_D <= NOT(MS_A_AR_GT_OUT_UP2B AND MS_C_AR_GT_OUT_UP2B AND MS_I_AR_GT_OUT_UP2B );
	OUT_3B_D <= NOT(MS_B_AR_GT_OUT_UP2B AND MS_ADDR_GEN_U_POS_0_DIGIT AND MS_ADDR_GEN_UP_02_BIT );
	OUT_3C_D <= NOT(MS_D_AR_GT_OUT_UP2B AND MS_ADDR_GEN_UP_12_BIT AND MS_ADDR_GEN_UP_24_BIT );
	OUT_3D_D <= NOT(MS_E_AR_GT_OUT_UP2B AND MS_F_AR_GT_OUT_UP2B );
	OUT_3F_A <= NOT(MS_A_AR_GT_OUT_UP4B AND MS_C_AR_GT_OUT_UP4B AND MS_I_AR_GT_OUT_UP4B );
	OUT_3G_A <= NOT(MS_B_AR_GT_OUT_UP4B AND MS_ADDR_GEN_UP_04_BIT AND MS_ADDR_GEN_U_POS_5_DIGIT );
	OUT_3H_A <= NOT(MS_D_AR_GT_OUT_UP4B AND MS_ADDR_GEN_UP_24_BIT AND MS_ADDR_GEN_UP_48_BIT );
	OUT_3I_A <= NOT(MS_E_AR_GT_OUT_UP4B AND MS_F_AR_GT_OUT_UP4B );
	OUT_DOT_1A <= OUT_3A_D OR OUT_3B_D OR OUT_3C_D OR OUT_3D_D;
	OUT_DOT_1F <= OUT_3F_A OR OUT_3G_A OR OUT_3H_A OR OUT_3I_A;

	PS_AR_BUS_UP2B <= OUT_DOT_1A;
	PS_AR_BUS_UP4B <= OUT_DOT_1F;


end;
