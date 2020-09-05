-- VHDL for IBM SMS ALD group AddressChannelDrive
-- Title: AddressChannelDrive
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/30/2020 1:48:48 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddressChannelDrive is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_C: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_D: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_E: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_F: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B: in STD_LOGIC;
		MS_ADDR_MOD_01_BIT: in STD_LOGIC;
		MS_ADDR_MOD_02_BIT: in STD_LOGIC;
		MS_ADDR_MOD_04_BIT: in STD_LOGIC;
		MS_ADDR_MOD_08_BIT: in STD_LOGIC;
		PS_ADDR_CH_0_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_1_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_2_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_4_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_8_LINE: in STD_LOGIC;
		MS_PERCENT_CONVERSION: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_C: in STD_LOGIC;
		MS_ADDR_MOD_12_BIT: in STD_LOGIC;
		MS_ADDR_MOD_14_BIT: in STD_LOGIC;
		MS_ADDR_MOD_18_BIT: in STD_LOGIC;
		PS_ADDR_CH_1_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_3_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_5_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_9_LINE: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_C: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_D: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B: in STD_LOGIC;
		MS_ADDR_MOD_28_BIT: in STD_LOGIC;
		MS_ADDR_MOD_24_BIT: in STD_LOGIC;
		PS_ADDR_CH_2_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_6_LINE: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_0_LINE: in STD_LOGIC;
		MS_INSERT_ZERO_ON_ADDR_CH: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_4_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_4_BIT_B: in STD_LOGIC;
		MS_ADDR_MOD_48_BIT: in STD_LOGIC;
		PS_ADDR_CH_4_B_STAR_ADDR_MOD: in STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_7_LINE: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_A: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_B: in STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_C: in STD_LOGIC;
		PS_ADDR_CH_8_B_STAR_ADDR_MOD: in STD_LOGIC;
		LAMP_11C8K07: out STD_LOGIC;
		LAMP_11C8J07: out STD_LOGIC;
		LAMP_11C8H07: out STD_LOGIC;
		LAMP_11C8G07: out STD_LOGIC;
		LAMP_11C8F07: out STD_LOGIC;
		PS_ADDR_CH_BUS_1: out STD_LOGIC_VECTOR (4 downTo 0));
end AddressChannelDrive;


ARCHITECTURE structural of AddressChannelDrive is

	 signal XX_PS_ADDR_CH_0_B_1: STD_LOGIC;
	 signal XX_PS_ADDR_CH_1_B_1: STD_LOGIC;
	 signal XX_PS_ADDR_CH_2_B_1: STD_LOGIC;
	 signal XX_PS_ADDR_CH_4_B_1: STD_LOGIC;
	 signal XX_PS_ADDR_CH_8_B_1: STD_LOGIC;

BEGIN


	PS_ADDR_CH_BUS_1 <= (
		XX_PS_ADDR_CH_8_B_1,
		XX_PS_ADDR_CH_4_B_1,
		XX_PS_ADDR_CH_2_B_1,
		XX_PS_ADDR_CH_1_B_1,
		XX_PS_ADDR_CH_0_B_1);

Page_14_45_01_1: ENTITY ALD_14_45_01_1_ADDRESS_CHANNEL_DRIVE_0_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_ADDR_CH_NU_TSLTR_2_LINE =>
		MS_ADDR_CH_NU_TSLTR_2_LINE,
	PS_ADDR_CH_0_B_STAR_ADDR_MOD =>
		PS_ADDR_CH_0_B_STAR_ADDR_MOD,
	MS_ADDR_CH_NU_TSLTR_4_LINE =>
		MS_ADDR_CH_NU_TSLTR_4_LINE,
	MS_ADDR_MOD_01_BIT =>
		MS_ADDR_MOD_01_BIT,
	MS_ADDR_MOD_02_BIT =>
		MS_ADDR_MOD_02_BIT,
	MS_ADDR_MOD_04_BIT =>
		MS_ADDR_MOD_04_BIT,
	MS_ADDR_MOD_08_BIT =>
		MS_ADDR_MOD_08_BIT,
	MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A =>
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A,
	MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B =>
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B,
	MS_COMPAT_TSLTR_THP_0_BIT_A =>
		MS_COMPAT_TSLTR_THP_0_BIT_A,
	MS_COMPAT_TSLTR_THP_0_BIT_B =>
		MS_COMPAT_TSLTR_THP_0_BIT_B,
	MS_COMPAT_TSLTR_THP_0_BIT_F =>
		MS_COMPAT_TSLTR_THP_0_BIT_F,
	MS_COMPAT_TSLTR_THP_0_BIT_D =>
		MS_COMPAT_TSLTR_THP_0_BIT_D,
	MS_COMPAT_TSLTR_THP_0_BIT_E =>
		MS_COMPAT_TSLTR_THP_0_BIT_E,
	MS_COMPAT_TSLTR_THP_0_BIT_C =>
		MS_COMPAT_TSLTR_THP_0_BIT_C,
	MS_PERCENT_CONVERSION =>
		MS_PERCENT_CONVERSION,
	MS_ADDR_CH_NU_TSLTR_1_LINE =>
		MS_ADDR_CH_NU_TSLTR_1_LINE,
	MS_ADDR_CH_NU_TSLTR_8_LINE =>
		MS_ADDR_CH_NU_TSLTR_8_LINE,
	PS_ADDR_CH_0_B_1 =>
		XX_PS_ADDR_CH_0_B_1,
	LAMP_11C8K07 =>
		LAMP_11C8K07
	);

Page_14_45_02_1: ENTITY ALD_14_45_02_1_ADDRESS_CHANNEL_DRIVE_1_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_ADDR_CH_NU_TSLTR_3_LINE =>
		MS_ADDR_CH_NU_TSLTR_3_LINE,
	PS_ADDR_CH_1_B_STAR_ADDR_MOD =>
		PS_ADDR_CH_1_B_STAR_ADDR_MOD,
	MS_ADDR_MOD_01_BIT =>
		MS_ADDR_MOD_01_BIT,
	MS_ADDR_MOD_12_BIT =>
		MS_ADDR_MOD_12_BIT,
	MS_ADDR_MOD_18_BIT =>
		MS_ADDR_MOD_18_BIT,
	MS_COMPAT_TSLTR_THP_1_BIT_A =>
		MS_COMPAT_TSLTR_THP_1_BIT_A,
	MS_COMPAT_TSLTR_THP_1_BIT_B =>
		MS_COMPAT_TSLTR_THP_1_BIT_B,
	MS_ADDR_MOD_14_BIT =>
		MS_ADDR_MOD_14_BIT,
	MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B =>
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B,
	MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A =>
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A,
	MS_COMPAT_TSLTR_THP_1_BIT_C =>
		MS_COMPAT_TSLTR_THP_1_BIT_C,
	MS_ADDR_CH_NU_TSLTR_1_LINE =>
		MS_ADDR_CH_NU_TSLTR_1_LINE,
	MS_ADDR_CH_NU_TSLTR_5_LINE =>
		MS_ADDR_CH_NU_TSLTR_5_LINE,
	MS_ADDR_CH_NU_TSLTR_9_LINE =>
		MS_ADDR_CH_NU_TSLTR_9_LINE,
	PS_ADDR_CH_1_B_1 =>
		XX_PS_ADDR_CH_1_B_1,
	LAMP_11C8J07 =>
		LAMP_11C8J07
	);

Page_14_45_03_1: ENTITY ALD_14_45_03_1_ADDRESS_CHANNEL_DRIVE_2_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_ADDR_CH_NU_TSLTR_3_LINE =>
		MS_ADDR_CH_NU_TSLTR_3_LINE,
	PS_ADDR_CH_2_B_STAR_ADDR_MOD =>
		PS_ADDR_CH_2_B_STAR_ADDR_MOD,
	MS_INSERT_ZERO_ON_ADDR_CH =>
		MS_INSERT_ZERO_ON_ADDR_CH,
	MS_ADDR_CH_NU_TSLTR_2_LINE =>
		MS_ADDR_CH_NU_TSLTR_2_LINE,
	MS_ADDR_MOD_28_BIT =>
		MS_ADDR_MOD_28_BIT,
	MS_ADDR_MOD_02_BIT =>
		MS_ADDR_MOD_02_BIT,
	MS_ADDR_MOD_24_BIT =>
		MS_ADDR_MOD_24_BIT,
	MS_ADDR_MOD_12_BIT =>
		MS_ADDR_MOD_12_BIT,
	MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A =>
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A,
	MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B =>
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B,
	MS_COMPAT_TSLTR_THP_2_BIT_D =>
		MS_COMPAT_TSLTR_THP_2_BIT_D,
	MS_COMPAT_TSLTR_THP_2_BIT_B =>
		MS_COMPAT_TSLTR_THP_2_BIT_B,
	MS_COMPAT_TSLTR_THP_2_BIT_C =>
		MS_COMPAT_TSLTR_THP_2_BIT_C,
	MS_COMPAT_TSLTR_THP_2_BIT_A =>
		MS_COMPAT_TSLTR_THP_2_BIT_A,
	MS_COMPAT_TSLTR_THP_2_DOT_8_BITS =>
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS,
	MS_ADDR_CH_NU_TSLTR_6_LINE =>
		MS_ADDR_CH_NU_TSLTR_6_LINE,
	MS_ADDR_CH_NU_TSLTR_0_LINE =>
		MS_ADDR_CH_NU_TSLTR_0_LINE,
	PS_ADDR_CH_2_B_1 =>
		XX_PS_ADDR_CH_2_B_1,
	LAMP_11C8H07 =>
		LAMP_11C8H07
	);

Page_14_45_04_1: ENTITY ALD_14_45_04_1_ADDRESS_CHANNEL_DRIVE_4_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_ADDR_MOD_04_BIT =>
		MS_ADDR_MOD_04_BIT,
	MS_ADDR_MOD_14_BIT =>
		MS_ADDR_MOD_14_BIT,
	MS_ADDR_MOD_48_BIT =>
		MS_ADDR_MOD_48_BIT,
	PS_ADDR_CH_4_B_STAR_ADDR_MOD =>
		PS_ADDR_CH_4_B_STAR_ADDR_MOD,
	MS_ADDR_MOD_24_BIT =>
		MS_ADDR_MOD_24_BIT,
	MS_COMPAT_TSLTR_THP_4_BIT_A =>
		MS_COMPAT_TSLTR_THP_4_BIT_A,
	MS_COMPAT_TSLTR_THP_4_BIT_B =>
		MS_COMPAT_TSLTR_THP_4_BIT_B,
	MS_ADDR_CH_NU_TSLTR_4_LINE =>
		MS_ADDR_CH_NU_TSLTR_4_LINE,
	MS_ADDR_CH_NU_TSLTR_6_LINE =>
		MS_ADDR_CH_NU_TSLTR_6_LINE,
	MS_PERCENT_CONVERSION =>
		MS_PERCENT_CONVERSION,
	MS_ADDR_CH_NU_TSLTR_7_LINE =>
		MS_ADDR_CH_NU_TSLTR_7_LINE,
	MS_ADDR_CH_NU_TSLTR_5_LINE =>
		MS_ADDR_CH_NU_TSLTR_5_LINE,
	PS_ADDR_CH_4_B_1 =>
		XX_PS_ADDR_CH_4_B_1,
	LAMP_11C8G07 =>
		LAMP_11C8G07
	);

Page_14_45_05_1: ENTITY ALD_14_45_05_1_ADDRESS_CHANNEL_DRIVE_8_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_INSERT_ZERO_ON_ADDR_CH =>
		MS_INSERT_ZERO_ON_ADDR_CH,
	PS_ADDR_CH_8_B_STAR_ADDR_MOD =>
		PS_ADDR_CH_8_B_STAR_ADDR_MOD,
	MS_ADDR_MOD_28_BIT =>
		MS_ADDR_MOD_28_BIT,
	MS_ADDR_CH_NU_TSLTR_8_LINE =>
		MS_ADDR_CH_NU_TSLTR_8_LINE,
	MS_ADDR_MOD_48_BIT =>
		MS_ADDR_MOD_48_BIT,
	MS_ADDR_MOD_08_BIT =>
		MS_ADDR_MOD_08_BIT,
	MS_ADDR_MOD_18_BIT =>
		MS_ADDR_MOD_18_BIT,
	MS_COMPAT_TSLTR_THP_2_DOT_8_BITS =>
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS,
	MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A =>
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A,
	MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B =>
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B,
	MS_COMPAT_TSLTR_THP_8_BIT_A =>
		MS_COMPAT_TSLTR_THP_8_BIT_A,
	MS_COMPAT_TSLTR_THP_8_BIT_B =>
		MS_COMPAT_TSLTR_THP_8_BIT_B,
	MS_COMPAT_TSLTR_THP_8_BIT_C =>
		MS_COMPAT_TSLTR_THP_8_BIT_C,
	MS_ADDR_CH_NU_TSLTR_7_LINE =>
		MS_ADDR_CH_NU_TSLTR_7_LINE,
	MS_ADDR_CH_NU_TSLTR_0_LINE =>
		MS_ADDR_CH_NU_TSLTR_0_LINE,
	MS_ADDR_CH_NU_TSLTR_9_LINE =>
		MS_ADDR_CH_NU_TSLTR_9_LINE,
	PS_ADDR_CH_8_B_1 =>
		XX_PS_ADDR_CH_8_B_1,
	LAMP_11C8F07 =>
		LAMP_11C8F07
	);


END;