-- VHDL for IBM SMS ALD page 14.15.05.1
-- Title: AR BUS TENS POS 2 AND 4 BITS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/19/2020 9:19:44 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_05_1_AR_BUS_TENS_POS_2_AND_4_BITS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_A_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_ADDR_GEN_T_POS_3_DIGIT:	 in STD_LOGIC;
		MS_RO_FIXED_ADDR:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_ADDR_GEN_T_POS_2_DIGIT:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_TP2B:	 in STD_LOGIC;
		MS_ADDR_GEN_TP_24_BIT:	 in STD_LOGIC;
		MS_A_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		MS_ADDR_GEN_T_POS_4_DIGIT:	 in STD_LOGIC;
		MS_ADDR_GEN_T_POS_5_DIGIT:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		MS_ADDR_GEN_TP_48_BIT:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_TP4B:	 in STD_LOGIC;
		PS_AR_BUS_TP2B:	 out STD_LOGIC;
		PS_AR_BUS_TP4B:	 out STD_LOGIC);
end ALD_14_15_05_1_AR_BUS_TENS_POS_2_AND_4_BITS;

architecture behavioral of ALD_14_15_05_1_AR_BUS_TENS_POS_2_AND_4_BITS is 

	signal OUT_3A_A: STD_LOGIC;
	signal OUT_3B_A: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;

begin

	OUT_3A_A <= NOT(MS_A_AR_GT_OUT_TP2B AND MS_C_AR_GT_OUT_TP2B AND MS_I_AR_GT_OUT_TP2B );
	OUT_3B_A <= NOT(MS_B_AR_GT_OUT_TP2B AND MS_ADDR_GEN_T_POS_3_DIGIT AND MS_RO_FIXED_ADDR );
	OUT_3C_A <= NOT(MS_D_AR_GT_OUT_TP2B AND MS_ADDR_GEN_TP_24_BIT AND MS_ADDR_GEN_T_POS_2_DIGIT );
	OUT_3D_A <= NOT(MS_E_AR_GT_OUT_TP2B AND MS_F_AR_GT_OUT_TP2B );
	OUT_3F_D <= NOT(MS_A_AR_GT_OUT_TP4B AND MS_C_AR_GT_OUT_TP4B AND MS_I_AR_GT_OUT_TP4B );
	OUT_3G_D <= NOT(MS_B_AR_GT_OUT_TP4B AND MS_ADDR_GEN_T_POS_4_DIGIT AND MS_ADDR_GEN_T_POS_5_DIGIT );
	OUT_3H_D <= NOT(MS_D_AR_GT_OUT_TP4B AND MS_ADDR_GEN_TP_24_BIT AND MS_ADDR_GEN_TP_48_BIT );
	OUT_3I_D <= NOT(MS_E_AR_GT_OUT_TP4B AND MS_F_AR_GT_OUT_TP4B );
	OUT_DOT_1A <= OUT_3A_A OR OUT_3B_A OR OUT_3C_A OR OUT_3D_A;
	OUT_DOT_1F <= OUT_3F_D OR OUT_3G_D OR OUT_3H_D OR OUT_3I_D;

	PS_AR_BUS_TP2B <= OUT_DOT_1A;
	PS_AR_BUS_TP4B <= OUT_DOT_1F;


end;