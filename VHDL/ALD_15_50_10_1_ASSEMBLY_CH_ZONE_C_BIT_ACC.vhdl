-- VHDL for IBM SMS ALD page 15.50.10.1
-- Title: ASSEMBLY CH ZONE C BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/16/2020 4:05:45 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_ASSEMBLY_CH_A_BIT_INSERT:	 in STD_LOGIC;
		PS_B_CH_VC_NOT_ZONE_C_BIT:	 in STD_LOGIC;
		PB_USE_B_CH_ZONES:	 in STD_LOGIC;
		MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED:	 in STD_LOGIC;
		PS_A_CH_VC_NOT_ZONE_C_BIT:	 in STD_LOGIC;
		PS_USE_A_CH_ZONES:	 in STD_LOGIC;
		PS_ASM_CH_NOT_ZN_C_BIT_STAR_ADD_ZN:	 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN:	 in STD_LOGIC;
		MS_SET_ASTERISK:	 in STD_LOGIC;
		PB_B_CH_PL_OR_INV_MIN_SIGN_GATED:	 in STD_LOGIC;
		PS_B_CH_VC_ZONE_C_BIT:	 in STD_LOGIC;
		MB_USE_NO_ZONES:	 in STD_LOGIC;
		PS_A_CH_VC_ZONE_C_BIT:	 in STD_LOGIC;
		PS_ASM_CH_ZONE_C_BIT_STAR_ADDER_ZN:	 in STD_LOGIC;
		MS_SET_GROUP_MARK:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NOT_ZONE_C_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_NOT_ZONE_C_BIT:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_ZONE_C_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_ZONE_C_BIT:	 out STD_LOGIC);
end ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC;

architecture behavioral of ALD_15_50_10_1_ASSEMBLY_CH_ZONE_C_BIT_ACC is 

	signal OUT_5A_A: STD_LOGIC;
	signal OUT_4A_NoPin: STD_LOGIC;
	signal OUT_3A_A: STD_LOGIC;
	signal OUT_5B_A: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_1B_A: STD_LOGIC;
	signal OUT_5C_C: STD_LOGIC;
	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_5D_G: STD_LOGIC;
	signal OUT_4D_E: STD_LOGIC;
	signal OUT_3D_P: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_A: STD_LOGIC;
	signal OUT_5F_B: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_3F_NoPin: STD_LOGIC;
	signal OUT_1F_A: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_F: STD_LOGIC;
	signal OUT_3H_Q: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;

begin

	OUT_5A_A <= NOT MB_ASSEMBLY_CH_A_BIT_INSERT;
	OUT_4A_NoPin <= OUT_5A_A;
	OUT_3A_A <= NOT(OUT_4A_NoPin OR OUT_3B_NoPin OR OUT_4C_NoPin );
	OUT_5B_A <= NOT PS_B_CH_VC_NOT_ZONE_C_BIT;
	OUT_4B_B <= NOT OUT_5B_A;
	OUT_3B_NoPin <= OUT_4B_B AND PB_USE_B_CH_ZONES;
	OUT_1B_A <= NOT OUT_DOT_1A;
	OUT_5C_C <= NOT MB_B_CH_MIN_OR_INV_PLUS_SIGN_GATED;
	OUT_4C_NoPin <= OUT_5C_C;
	OUT_5D_G <= NOT(PS_A_CH_VC_NOT_ZONE_C_BIT AND PS_USE_A_CH_ZONES );
	OUT_4D_E <= NOT(OUT_5D_G AND MS_SET_DOLLAR_SIGN AND MS_SET_ASTERISK );
	OUT_3D_P <= NOT OUT_DOT_4D;
	OUT_5E_NoPin <= PB_B_CH_PL_OR_INV_MIN_SIGN_GATED;
	OUT_3E_A <= NOT(OUT_5E_NoPin OR OUT_3F_NoPin OR OUT_4G_NoPin );
	OUT_5F_B <= NOT PS_B_CH_VC_ZONE_C_BIT;
	OUT_4F_D <= NOT OUT_5F_B;
	OUT_3F_NoPin <= OUT_4F_D AND PB_USE_B_CH_ZONES;
	OUT_1F_A <= NOT OUT_DOT_3E;
	OUT_5G_E <= NOT MB_USE_NO_ZONES;
	OUT_4G_NoPin <= OUT_5G_E;
	OUT_5H_NoPin <= NOT(PS_A_CH_VC_ZONE_C_BIT AND PS_USE_A_CH_ZONES );
	OUT_4H_F <= NOT(OUT_5H_NoPin AND MS_SET_GROUP_MARK );
	OUT_3H_Q <= NOT OUT_DOT_4H;
	OUT_DOT_1A <= OUT_3A_A AND OUT_3D_P;
	OUT_DOT_4D <= OUT_4D_E OR PS_ASM_CH_NOT_ZN_C_BIT_STAR_ADD_ZN;
	OUT_DOT_3E <= OUT_3E_A AND OUT_3H_Q;
	OUT_DOT_4H <= OUT_4H_F OR PS_ASM_CH_ZONE_C_BIT_STAR_ADDER_ZN;

	PS_ASSEMBLY_CH_NOT_ZONE_C_BIT <= OUT_1B_A;
	PS_ASSEMBLY_CH_ZONE_C_BIT <= OUT_1F_A;
	MB_ASSEMBLY_CH_NOT_ZONE_C_BIT <= OUT_DOT_1A;
	MB_ASSEMBLY_CH_ZONE_C_BIT <= OUT_DOT_3E;


end;