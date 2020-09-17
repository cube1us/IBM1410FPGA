-- VHDL for IBM SMS ALD page 15.50.09.1
-- Title: ASSEMBLY NUMERIC C BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/16/2020 3:37:25 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ONE_INSERT:	 in STD_LOGIC;
		PB_ADDER_OUT_NOT_C_BIT:	 in STD_LOGIC;
		PB_USE_ADDER_NU_1:	 in STD_LOGIC;
		PS_B_CH_VC_NOT_NU_C_BIT:	 in STD_LOGIC;
		PB_USE_B_CH_NU:	 in STD_LOGIC;
		PS_A_CH_VC_NOT_NU_C_BIT:	 in STD_LOGIC;
		PS_USE_A_CH_NU:	 in STD_LOGIC;
		MS_SET_DOLLAR_SIGN:	 in STD_LOGIC;
		PB_ADDER_OUT_C_BIT:	 in STD_LOGIC;
		PS_B_CH_VC_NU_C_BIT:	 in STD_LOGIC;
		PS_A_CH_VC_NU_C_BIT:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NU_ZERO_INSERT:	 in STD_LOGIC;
		MS_SET_GROUP_MARK:	 in STD_LOGIC;
		MS_SET_ASTERISK:	 in STD_LOGIC;
		MB_USE_NO_NUMERICS:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_NOT_NU_C_BIT:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_NOT_NU_C_BIT:	 out STD_LOGIC;
		MB_ASSEMBLY_CH_NU_C_BIT:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_NU_C_BIT:	 out STD_LOGIC);
end ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC;

architecture behavioral of ALD_15_50_09_1_ASSEMBLY_NUMERIC_C_BIT_ACC is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_3A_A: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_A: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_1C_E: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_3D_B: STD_LOGIC;
	signal OUT_1D_B: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_4F_G: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_2G_M: STD_LOGIC;
	signal OUT_1G_E: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_2H_P: STD_LOGIC;
	signal OUT_1H_C: STD_LOGIC;
	signal OUT_5I_F: STD_LOGIC;
	signal OUT_4I_NoPin: STD_LOGIC;
	signal OUT_2I_B: STD_LOGIC;
	signal OUT_1I_L: STD_LOGIC;
	signal OUT_DOT_3D: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;

begin

	OUT_5A_C <= NOT MB_ASSEMBLY_CH_NU_ONE_INSERT;
	OUT_3A_A <= NOT PS_B_CH_VC_NOT_NU_C_BIT;
	OUT_2A_D <= NOT OUT_3A_A;
	OUT_5B_NoPin <= OUT_5A_C;
	OUT_4B_A <= NOT(OUT_5B_NoPin OR OUT_5C_NoPin OR OUT_5D_NoPin );
	OUT_5C_NoPin <= PB_ADDER_OUT_NOT_C_BIT AND PB_USE_ADDER_NU_1;
	OUT_1C_E <= NOT OUT_DOT_3D;
	OUT_5D_NoPin <= OUT_2A_D AND PB_USE_B_CH_NU;
	OUT_3D_B <= NOT OUT_4E_D;
	OUT_1D_B <= OUT_1C_E;
	OUT_5E_NoPin <= NOT(PS_A_CH_VC_NOT_NU_C_BIT AND PS_USE_A_CH_NU );
	OUT_4E_D <= NOT(OUT_5E_NoPin AND MS_SET_DOLLAR_SIGN );
	OUT_5F_NoPin <= PB_ADDER_OUT_C_BIT AND PB_USE_ADDER_NU_1;
	OUT_4F_G <= NOT(OUT_5F_NoPin OR OUT_5G_NoPin OR OUT_4H_NoPin OR OUT_4I_NoPin );
	OUT_5G_NoPin <= OUT_1G_E AND PB_USE_B_CH_NU;
	OUT_3G_C <= NOT OUT_1H_C;
	OUT_2G_M <= NOT PS_B_CH_VC_NU_C_BIT;
	OUT_1G_E <= NOT OUT_2G_M;
	OUT_5H_P <= NOT MB_ASSEMBLY_CH_NU_ZERO_INSERT;
	OUT_4H_NoPin <= OUT_5H_P;
	OUT_2H_P <= NOT(PS_A_CH_VC_NU_C_BIT AND PS_USE_A_CH_NU );
	OUT_1H_C <= NOT(OUT_2H_P AND MS_SET_GROUP_MARK AND MS_SET_ASTERISK );
	OUT_5I_F <= NOT MB_USE_NO_NUMERICS;
	OUT_4I_NoPin <= OUT_5I_F;
	OUT_2I_B <= NOT OUT_DOT_4F;
	OUT_1I_L <= OUT_2I_B;
	OUT_DOT_3D <= OUT_4B_A AND OUT_3D_B;
	OUT_DOT_4F <= OUT_4F_G AND OUT_3G_C;

	PS_ASSEMBLY_CH_NOT_NU_C_BIT <= OUT_1D_B;
	PS_ASSEMBLY_CH_NU_C_BIT <= OUT_1I_L;
	MB_ASSEMBLY_CH_NOT_NU_C_BIT <= OUT_DOT_3D;
	MB_ASSEMBLY_CH_NU_C_BIT <= OUT_DOT_4F;


end;