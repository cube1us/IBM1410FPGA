-- VHDL for IBM SMS ALD page 14.45.05.1
-- Title: ADDRESS CHANNEL DRIVE 8 BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/30/2020 1:47:33 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_45_05_1_ADDRESS_CHANNEL_DRIVE_8_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_INSERT_ZERO_ON_ADDR_CH:	 in STD_LOGIC;
		PS_ADDR_CH_8_B_STAR_ADDR_MOD:	 in STD_LOGIC;
		MS_ADDR_MOD_28_BIT:	 in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_8_LINE:	 in STD_LOGIC;
		MS_ADDR_MOD_48_BIT:	 in STD_LOGIC;
		MS_ADDR_MOD_08_BIT:	 in STD_LOGIC;
		MS_ADDR_MOD_18_BIT:	 in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS:	 in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A:	 in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B:	 in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_A:	 in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_B:	 in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_C:	 in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_7_LINE:	 in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_0_LINE:	 in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_9_LINE:	 in STD_LOGIC;
		PS_ADDR_CH_8_B_1:	 out STD_LOGIC;
		LAMP_11C8F07:	 out STD_LOGIC);
end ALD_14_45_05_1_ADDRESS_CHANNEL_DRIVE_8_BIT_ACC;

architecture behavioral of ALD_14_45_05_1_ADDRESS_CHANNEL_DRIVE_8_BIT_ACC is 

	signal OUT_4A_B: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_4C_R: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_4D_E: STD_LOGIC;
	signal OUT_4E_E: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_4G_F: STD_LOGIC;
	signal OUT_4H_R: STD_LOGIC;
	signal OUT_4I_F: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;

begin

	OUT_4A_B <= NOT MS_INSERT_ZERO_ON_ADDR_CH;
	OUT_2A_D <= NOT OUT_3C_D;
	LAMP_11C8F07 <= OUT_2A_D;
	OUT_4B_G <= NOT(MS_ADDR_MOD_28_BIT );
	OUT_4C_R <= NOT MS_ADDR_CH_NU_TSLTR_8_LINE;
	OUT_3C_D <= NOT OUT_DOT_4C;

	SMS_AEK_1C: entity SMS_AEK
	    port map (
		IN1 => OUT_3C_D,	-- Pin D
		OUT1 => OUT_1C_C,
		IN2 => OPEN );

	OUT_4D_E <= NOT(MS_ADDR_MOD_48_BIT AND MS_ADDR_MOD_08_BIT AND MS_ADDR_MOD_18_BIT );
	OUT_4E_E <= NOT(MS_COMPAT_TSLTR_THP_2_DOT_8_BITS AND MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A AND MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B );
	OUT_4F_D <= NOT(MS_COMPAT_TSLTR_THP_8_BIT_A AND MS_COMPAT_TSLTR_THP_8_BIT_B AND MS_COMPAT_TSLTR_THP_8_BIT_C );
	OUT_4G_F <= NOT MS_ADDR_CH_NU_TSLTR_7_LINE;
	OUT_4H_R <= NOT MS_ADDR_CH_NU_TSLTR_0_LINE;
	OUT_4I_F <= NOT MS_ADDR_CH_NU_TSLTR_9_LINE;
	OUT_DOT_4C <= OUT_4A_B OR PS_ADDR_CH_8_B_STAR_ADDR_MOD OR OUT_4B_G OR OUT_4C_R OR OUT_4D_E OR OUT_4E_E OR OUT_4F_D OR OUT_4G_F OR OUT_4H_R OR OUT_4I_F;

	PS_ADDR_CH_8_B_1 <= OUT_1C_C;


end;