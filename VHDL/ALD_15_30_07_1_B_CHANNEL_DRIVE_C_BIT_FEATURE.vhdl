-- VHDL for IBM SMS ALD page 15.30.07.1
-- Title: B CHANNEL DRIVE C BIT FEATURE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/8/2020 4:21:33 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_30_07_1_B_CHANNEL_DRIVE_C_BIT_FEATURE is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_DATA_REG_C_BIT_STAR_0_STAR:	 in STD_LOGIC;
		MB_ASSEMBLY_CH_NOT_ZONE_C_BIT:	 in STD_LOGIC;
		PS_B_DATA_REG_C_BIT_STAR_1_STAR:	 in STD_LOGIC;
		PS_B_DATA_REG_C_BIT_STAR_2_STAR:	 in STD_LOGIC;
		PS_B_DATA_REG_C_BIT_STAR_3_STAR:	 in STD_LOGIC;
		PS_B_DATA_REG_C_BIT_STAR_FROM_M2_STAR:	 in STD_LOGIC;
		PS_B_CH_NOT_C_BIT:	 out STD_LOGIC;
		PS_B_CH_C_BIT:	 out STD_LOGIC;
		PB_B_CH_C_BIT:	 out STD_LOGIC;
		LAMP_11C8D13:	 out STD_LOGIC);
end ALD_15_30_07_1_B_CHANNEL_DRIVE_C_BIT_FEATURE;

architecture behavioral of ALD_15_30_07_1_B_CHANNEL_DRIVE_C_BIT_FEATURE is 

	signal OUT_3A_K: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_5E_R: STD_LOGIC;
	signal OUT_3E_A: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;

begin

	OUT_3A_K <= NOT OUT_5E_R;
	LAMP_11C8D13 <= OUT_3A_K;
	OUT_3B_G <= OUT_5E_R;
	OUT_5E_R <= NOT OUT_DOT_5D;

	SMS_AEK_3E: entity SMS_AEK
	    port map (
		IN1 => OUT_5E_R,	-- Pin F
		OUT1 => OUT_3E_A,
		IN2 => OPEN );

	OUT_DOT_5D <= PS_B_DATA_REG_C_BIT_STAR_0_STAR OR PS_B_DATA_REG_C_BIT_STAR_1_STAR OR PS_B_DATA_REG_C_BIT_STAR_2_STAR OR PS_B_DATA_REG_C_BIT_STAR_3_STAR OR PS_B_DATA_REG_C_BIT_STAR_FROM_M2_STAR;

	PS_B_CH_NOT_C_BIT <= OUT_3B_G;
	PS_B_CH_C_BIT <= OUT_3E_A;
	PB_B_CH_C_BIT <= OUT_3E_A;


end;