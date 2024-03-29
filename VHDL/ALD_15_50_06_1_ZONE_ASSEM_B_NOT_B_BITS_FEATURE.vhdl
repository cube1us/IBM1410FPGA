-- VHDL for IBM SMS ALD page 15.50.06.1
-- Title: ZONE ASSEM B.NOT B BITS FEATURE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/31/2023 11:30:10 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_06_1_ZONE_ASSEM_B_NOT_B_BITS_FEATURE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_NOT_B_BIT:	 in STD_LOGIC;
		MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED:	 in STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1:	 in STD_LOGIC;
		PS_A_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_ADDER_ZONES_NOT_B_BIT:	 in STD_LOGIC;
		MB_USE_NO_ZONES:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_A_BIT_INSERT:	 in STD_LOGIC;
		MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2:	 in STD_LOGIC;
		PB_USE_B_CH_ZONES:	 in STD_LOGIC;
		PS_USE_A_CH_ZONES:	 in STD_LOGIC;
		MS_SET_GROUP_MARK:	 in STD_LOGIC;
		MS_SET_ASTERISK:	 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN:	 in STD_LOGIC;
		PS_ASM_CH_B_BIT_STAR_ADDER_ZONES:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_A_CH_B_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_B_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_B_BIT:	 out STD_LOGIC;
		MS_ASSEMBLY_CH_B_BIT:	 out STD_LOGIC;
		MY_ASSEMBLY_CH_B_BIT:	 out STD_LOGIC;
		LAMP_11C8E10:	 out STD_LOGIC;
		LAMP_11C8E11:	 out STD_LOGIC);
end ALD_15_50_06_1_ZONE_ASSEM_B_NOT_B_BITS_FEATURE;

architecture behavioral of ALD_15_50_06_1_ZONE_ASSEM_B_NOT_B_BITS_FEATURE is 

	signal OUT_5B_C: STD_LOGIC;
	signal OUT_5C_D: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_3D_F: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_4G_E: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_2I_B: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;

begin

	OUT_5B_C <= NOT(PB_USE_B_CH_ZONES AND PS_B_CH_NOT_B_BIT );
	OUT_5C_D <= NOT(PS_A_CH_NOT_B_BIT AND PS_USE_A_CH_ZONES );
	OUT_4C_E <= NOT(OUT_5B_C AND OUT_5C_D AND MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_1 );
	OUT_3C_C <= NOT OUT_DOT_4C;
	OUT_2C_C <= NOT OUT_DOT_3C;
	LAMP_11C8E10 <= OUT_2C_C;
	OUT_4D_C <= NOT(MB_USE_NO_ZONES AND MB_ASSEMBLY_CH_A_BIT_INSERT AND MS_ZONE_ADDER_NOT_A_DOT_NOT_B_DOT_C_2 );
	OUT_3D_F <= NOT MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED;
	OUT_3E_E <= OUT_DOT_4F;
	OUT_4F_D <= NOT(MS_SET_GROUP_MARK AND MS_SET_ASTERISK AND MS_SET_DOLLAR_SIGN );
	OUT_5G_C <= NOT(PS_B_CH_B_BIT AND PB_USE_B_CH_ZONES );
	OUT_4G_E <= NOT(OUT_5G_C AND OUT_5H_D AND MB_B_MN_OR_IN_PL_OR_PL_OR_INV_MN_GATED );

	SMS_AEK_2G: entity SMS_AEK
	    port map (
		IN1 => OUT_3E_E,	-- Pin D
		OUT1 => OUT_2G_C,
		IN2 => OPEN );

	OUT_5H_D <= NOT(PS_USE_A_CH_ZONES AND PS_A_CH_B_BIT );
	OUT_2H_C <= NOT OUT_2G_C;
	LAMP_11C8E11 <= OUT_2H_C;
	OUT_2I_B <= NOT OUT_3E_E;
	OUT_DOT_4C <= OUT_4C_E OR PS_ADDER_ZONES_NOT_B_BIT OR OUT_4D_C;
	OUT_DOT_4F <= OUT_4F_D OR PS_ASM_CH_B_BIT_STAR_ADDER_ZONES OR OUT_4G_E;
	OUT_DOT_3C <= OUT_3C_C OR OUT_3D_F;

	PS_ASSEMBLY_CH_B_BIT <= OUT_3E_E;
	MS_ASSEMBLY_CH_B_BIT <= OUT_2G_C;
	MY_ASSEMBLY_CH_B_BIT <= OUT_2I_B;
	MS_ASSEMBLY_CH_NOT_B_BIT <= OUT_DOT_3C;


end;
