-- VHDL for IBM SMS ALD page 14.15.01.1
-- Title: AR BUS UNITS POS 0 AND 1 BITS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/19/2020 9:19:33 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_01_1_AR_BUS_UNITS_POS_0_AND_1_BITS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_A_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_UP0B:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_04_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_08_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_02_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_01_BIT:	 in STD_LOGIC;
		MS_RO_FIXED_ADDR:	 in STD_LOGIC;
		MS_A_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_UP1B:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_18_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_UP_12_BIT:	 in STD_LOGIC;
		MS_ADDR_GEN_U_POS_5_DIGIT:	 in STD_LOGIC;
		PS_AR_BUS_UP0B:	 out STD_LOGIC;
		PS_AR_BUS_UP1B:	 out STD_LOGIC);
end ALD_14_15_01_1_AR_BUS_UNITS_POS_0_AND_1_BITS;

architecture behavioral of ALD_14_15_01_1_AR_BUS_UNITS_POS_0_AND_1_BITS is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3F_A: STD_LOGIC;
	signal OUT_3G_A: STD_LOGIC;
	signal OUT_3H_A: STD_LOGIC;
	signal OUT_3I_E: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;

begin

	OUT_3A_D <= NOT(MS_A_AR_GT_OUT_UP0B AND MS_C_AR_GT_OUT_UP0B AND MS_I_AR_GT_OUT_UP0B );
	OUT_3B_D <= NOT(MS_B_AR_GT_OUT_UP0B AND MS_E_AR_GT_OUT_UP0B AND MS_F_AR_GT_OUT_UP0B );
	OUT_3C_D <= NOT(MS_D_AR_GT_OUT_UP0B AND MS_ADDR_GEN_UP_04_BIT AND MS_ADDR_GEN_UP_08_BIT );
	OUT_3D_D <= NOT(MS_ADDR_GEN_UP_02_BIT AND MS_ADDR_GEN_UP_01_BIT AND MS_RO_FIXED_ADDR );
	OUT_3F_A <= NOT(MS_A_AR_GT_OUT_UP1B AND MS_C_AR_GT_OUT_UP1B AND MS_I_AR_GT_OUT_UP1B );
	OUT_3G_A <= NOT(MS_B_AR_GT_OUT_UP1B AND MS_E_AR_GT_OUT_UP1B AND MS_F_AR_GT_OUT_UP1B );
	OUT_3H_A <= NOT(MS_D_AR_GT_OUT_UP1B AND MS_ADDR_GEN_UP_01_BIT AND MS_RO_FIXED_ADDR );
	OUT_3I_E <= NOT(MS_ADDR_GEN_UP_18_BIT AND MS_ADDR_GEN_UP_12_BIT AND MS_ADDR_GEN_U_POS_5_DIGIT );
	OUT_DOT_1A <= OUT_3A_D OR OUT_3B_D OR OUT_3C_D OR OUT_3D_D;
	OUT_DOT_1F <= OUT_3F_A OR OUT_3G_A OR OUT_3H_A OR OUT_3I_E;

	PS_AR_BUS_UP0B <= OUT_DOT_1A;
	PS_AR_BUS_UP1B <= OUT_DOT_1F;


end;