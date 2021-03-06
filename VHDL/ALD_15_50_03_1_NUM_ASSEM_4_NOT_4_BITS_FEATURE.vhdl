-- VHDL for IBM SMS ALD page 15.50.03.1
-- Title: NUM ASSEM 4 NOT 4 BITS FEATURE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/14/2020 7:51:20 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_03_1_NUM_ASSEM_4_NOT_4_BITS_FEATURE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PB_ADDER_OUT_NOT_4_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_4_BIT:	 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN:	 in STD_LOGIC;
		MB_USE_NO_NUMERICS:	 in STD_LOGIC;
		PB_USE_ADDER_NU_1:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ZERO_INSERT:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ONE_INSERT:	 in STD_LOGIC;
		PB_USE_B_CH_NU:	 in STD_LOGIC;
		MS_SET_GROUP_MARK:	 in STD_LOGIC;
		MS_SET_ASTERISK:	 in STD_LOGIC;
		PB_ADDER_OUT_4_BIT:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_A_CH_4_BIT:	 in STD_LOGIC;
		PS_USE_A_CH_NU:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_4_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_4_BIT:	 out STD_LOGIC;
		MS_ASSEMBLY_CH_4_BIT:	 out STD_LOGIC;
		MY_ASSEMBLY_CH_4_BIT:	 out STD_LOGIC;
		LAMP_11C8H10:	 out STD_LOGIC;
		LAMP_11C8H11:	 out STD_LOGIC);
end ALD_15_50_03_1_NUM_ASSEM_4_NOT_4_BITS_FEATURE;

architecture behavioral of ALD_15_50_03_1_NUM_ASSEM_4_NOT_4_BITS_FEATURE is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_2B_B: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_4E_P: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_3F_E: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_3H_H: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_3I_B: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PB_ADDER_OUT_NOT_4_BIT AND PB_USE_ADDER_NU_1 );
	OUT_5B_NoPin <= NOT(PS_B_CH_NOT_4_BIT AND PB_USE_B_CH_NU );
	OUT_4B_F <= NOT(OUT_5A_NoPin AND OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_3B_C <= NOT OUT_DOT_4B;
	OUT_2B_B <= NOT OUT_3B_C;
	LAMP_11C8H10 <= OUT_2B_B;
	OUT_5C_NoPin <= NOT(PS_A_CH_NOT_4_BIT AND PS_USE_A_CH_NU );
	OUT_4D_C <= NOT(MB_USE_NO_NUMERICS AND MS_SET_DOLLAR_SIGN );
	OUT_4E_P <= NOT(MB_ASSEMBLY_CH_NU_ZERO_INSERT AND MB_ASSEMBLY_CH_NU_ONE_INSERT );
	OUT_4F_D <= NOT(MS_SET_GROUP_MARK AND MS_SET_ASTERISK );
	OUT_3F_E <= OUT_DOT_4F;
	OUT_5G_NoPin <= NOT(PB_ADDER_OUT_4_BIT AND PB_USE_ADDER_NU_1 );
	OUT_4G_F <= NOT(OUT_5G_NoPin AND OUT_5H_NoPin AND OUT_5I_NoPin );
	OUT_5H_NoPin <= NOT(PS_B_CH_4_BIT AND PB_USE_B_CH_NU );

	SMS_AEK_3H: entity SMS_AEK
	    port map (
		IN1 => OUT_3F_E,	-- Pin P
		OUT1 => OUT_3H_H,
		IN2 => OPEN );

	OUT_2H_B <= NOT OUT_3H_H;
	LAMP_11C8H11 <= OUT_2H_B;
	OUT_5I_NoPin <= NOT(PS_A_CH_4_BIT AND PS_USE_A_CH_NU );
	OUT_3I_B <= NOT OUT_3F_E;
	OUT_DOT_4B <= OUT_4B_F OR OUT_4D_C OR OUT_4E_P;
	OUT_DOT_4F <= OUT_4F_D OR OUT_4G_F;

	MS_ASSEMBLY_CH_NOT_4_BIT <= OUT_3B_C;
	PS_ASSEMBLY_CH_4_BIT <= OUT_3F_E;
	MS_ASSEMBLY_CH_4_BIT <= OUT_3H_H;
	MY_ASSEMBLY_CH_4_BIT <= OUT_3I_B;


end;
