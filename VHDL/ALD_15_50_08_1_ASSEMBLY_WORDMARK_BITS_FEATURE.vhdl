-- VHDL for IBM SMS ALD page 15.50.08.1
-- Title: ASSEMBLY WORDMARK BITS FEATURE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/16/2020 11:13:43 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_08_1_ASSEMBLY_WORDMARK_BITS_FEATURE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_USE_NO_WM:	 in STD_LOGIC;
		PB_USE_B_CH_WM:	 in STD_LOGIC;
		PB_A_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PB_USE_A_CH_WM:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 in STD_LOGIC;
		PS_SET_WM:	 in STD_LOGIC;
		PB_A_CH_WM_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_WM_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_WM_BIT:	 out STD_LOGIC;
		MS_ASSEMBLY_CH_WM_BIT:	 out STD_LOGIC;
		MY_ASSEMBLY_CH_WM_BIT:	 out STD_LOGIC;
		LAMP_11C8C10:	 out STD_LOGIC;
		LAMP_11C8C11:	 out STD_LOGIC);
end ALD_15_50_08_1_ASSEMBLY_WORDMARK_BITS_FEATURE;

architecture behavioral of ALD_15_50_08_1_ASSEMBLY_WORDMARK_BITS_FEATURE is 

	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_5C_A: STD_LOGIC;
	signal OUT_4C_F: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_2C_B: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_4F_H: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;
	signal OUT_2H_A: STD_LOGIC;
	signal OUT_3I_R: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;

begin

	OUT_5B_NoPin <= NOT(PS_B_CH_NOT_WM_BIT AND PB_USE_B_CH_WM );
	OUT_5C_A <= NOT PB_USE_NO_WM;
	OUT_4C_F <= NOT(OUT_5B_NoPin AND OUT_5C_A AND OUT_5D_NoPin );
	OUT_3C_D <= NOT OUT_4C_F;
	OUT_2C_B <= NOT OUT_3C_D;
	LAMP_11C8C10 <= OUT_2C_B;
	OUT_5D_NoPin <= NOT(PB_A_CH_NOT_WM_BIT AND PB_USE_A_CH_WM );
	OUT_5F_NoPin <= NOT(PB_USE_B_CH_WM AND PS_B_CH_WM_BIT_1 );
	OUT_4F_H <= OUT_DOT_5F;
	OUT_4G_F <= NOT(OUT_5F_NoPin AND OUT_5H_NoPin );
	OUT_5H_NoPin <= NOT(PB_USE_A_CH_WM AND PB_A_CH_WM_BIT );
	OUT_3H_D <= NOT OUT_4F_H;
	OUT_2H_A <= NOT OUT_3H_D;
	LAMP_11C8C11 <= OUT_2H_A;
	OUT_3I_R <= NOT OUT_4F_H;
	OUT_DOT_5F <= PS_SET_WM OR OUT_4G_F;

	MS_ASSEMBLY_CH_NOT_WM_BIT <= OUT_3C_D;
	PS_ASSEMBLY_CH_WM_BIT <= OUT_4F_H;
	MS_ASSEMBLY_CH_WM_BIT <= OUT_3H_D;
	MY_ASSEMBLY_CH_WM_BIT <= OUT_3I_R;


end;