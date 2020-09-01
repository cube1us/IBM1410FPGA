-- VHDL for IBM SMS ALD group AddrGenUPTP
-- Title: AddrGenUPTP
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/1/2020 7:57:11 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddrGenUPTP is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_INDEX_CTRL_NUMBER_ONE: in STD_LOGIC;
		PS_INDEX_CTRL_NUMBER_TWO: in STD_LOGIC;
		PS_A_RING_1_TIME: in STD_LOGIC;
		PS_ADDR_SCNR_2_POS: in STD_LOGIC;
		PS_ADDR_SCNR_3_POS: in STD_LOGIC;
		PS_RO_INDEX_AR: in STD_LOGIC;
		PS_ADDR_SCNR_4_POS: in STD_LOGIC;
		PS_ADDR_SCNR_5_POS: in STD_LOGIC;
		MS_H_POS_C_INDEX_TAG: in STD_LOGIC;
		PS_H_POS_C_INDEX_TAG: in STD_LOGIC;
		MS_H_POS_B_INDEX_TAG: in STD_LOGIC;
		MS_H_POS_A_INDEX_TAG: in STD_LOGIC;
		PS_H_POS_A_INDEX_TAG: in STD_LOGIC;
		MS_T_POS_B_INDEX_TAG: in STD_LOGIC;
		PS_T_POS_B_INDEX_TAG: in STD_LOGIC;
		PS_H_POS_B_INDEX_TAG: in STD_LOGIC;
		MS_ADDR_GEN_UP_04_BIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_08_BIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_02_BIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_01_BIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_18_BIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_12_BIT: out STD_LOGIC;
		MS_ADDR_GEN_U_POS_5_DIGIT: out STD_LOGIC;
		MS_ADDR_GEN_U_POS_0_DIGIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_24_BIT: out STD_LOGIC;
		MS_ADDR_GEN_UP_48_BIT: out STD_LOGIC;
		MS_ADDR_GEN_T_POS_2_DIGIT: out STD_LOGIC;
		MS_ADDR_GEN_T_POS_3_DIGIT: out STD_LOGIC;
		MS_ADDR_GEN_T_POS_5_DIGIT: out STD_LOGIC;
		MS_ADDR_GEN_T_POS_4_DIGIT: out STD_LOGIC;
		MS_ADDR_GEN_TP_08_BIT: out STD_LOGIC;
		MS_ADDR_GEN_TP_18_BIT: out STD_LOGIC;
		MS_ADDR_GEN_TP_24_BIT: out STD_LOGIC;
		MS_ADDR_GEN_TP_48_BIT: out STD_LOGIC);
end AddrGenUPTP;


ARCHITECTURE structural of AddrGenUPTP is

BEGIN

Page_14_50_04_1: ENTITY ALD_14_50_04_1_ADDRESS_GENERATOR_UNITS_POS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_A_RING_1_TIME =>
		PS_A_RING_1_TIME,
	PS_INDEX_CTRL_NUMBER_ONE =>
		PS_INDEX_CTRL_NUMBER_ONE,
	PS_ADDR_SCNR_2_POS =>
		PS_ADDR_SCNR_2_POS,
	PS_ADDR_SCNR_3_POS =>
		PS_ADDR_SCNR_3_POS,
	PS_RO_INDEX_AR =>
		PS_RO_INDEX_AR,
	PS_INDEX_CTRL_NUMBER_TWO =>
		PS_INDEX_CTRL_NUMBER_TWO,
	PS_ADDR_SCNR_4_POS =>
		PS_ADDR_SCNR_4_POS,
	PS_ADDR_SCNR_5_POS =>
		PS_ADDR_SCNR_5_POS,
	MS_ADDR_GEN_UP_04_BIT =>
		MS_ADDR_GEN_UP_04_BIT,
	MS_ADDR_GEN_UP_18_BIT =>
		MS_ADDR_GEN_UP_18_BIT,
	MS_ADDR_GEN_UP_08_BIT =>
		MS_ADDR_GEN_UP_08_BIT,
	MS_ADDR_GEN_UP_12_BIT =>
		MS_ADDR_GEN_UP_12_BIT,
	MS_ADDR_GEN_UP_48_BIT =>
		MS_ADDR_GEN_UP_48_BIT,
	MS_ADDR_GEN_UP_02_BIT =>
		MS_ADDR_GEN_UP_02_BIT,
	MS_ADDR_GEN_UP_24_BIT =>
		MS_ADDR_GEN_UP_24_BIT,
	MS_ADDR_GEN_UP_01_BIT =>
		MS_ADDR_GEN_UP_01_BIT,
	MS_ADDR_GEN_U_POS_5_DIGIT =>
		MS_ADDR_GEN_U_POS_5_DIGIT,
	MS_ADDR_GEN_U_POS_0_DIGIT =>
		MS_ADDR_GEN_U_POS_0_DIGIT
	);

Page_14_50_05_1: ENTITY ALD_14_50_05_1_ADDRESS_GENERATOR_TENS_POSITION
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_H_POS_C_INDEX_TAG =>
		MS_H_POS_C_INDEX_TAG,
	PS_H_POS_A_INDEX_TAG =>
		PS_H_POS_A_INDEX_TAG,
	PS_T_POS_B_INDEX_TAG =>
		PS_T_POS_B_INDEX_TAG,
	MS_H_POS_B_INDEX_TAG =>
		MS_H_POS_B_INDEX_TAG,
	MS_T_POS_B_INDEX_TAG =>
		MS_T_POS_B_INDEX_TAG,
	MS_H_POS_A_INDEX_TAG =>
		MS_H_POS_A_INDEX_TAG,
	PS_H_POS_C_INDEX_TAG =>
		PS_H_POS_C_INDEX_TAG,
	PS_RO_INDEX_AR =>
		PS_RO_INDEX_AR,
	MS_ADDR_GEN_T_POS_5_DIGIT =>
		MS_ADDR_GEN_T_POS_5_DIGIT,
	MS_ADDR_GEN_T_POS_4_DIGIT =>
		MS_ADDR_GEN_T_POS_4_DIGIT,
	MS_ADDR_GEN_T_POS_3_DIGIT =>
		MS_ADDR_GEN_T_POS_3_DIGIT,
	MS_ADDR_GEN_T_POS_2_DIGIT =>
		MS_ADDR_GEN_T_POS_2_DIGIT
	);

Page_14_50_06_1: ENTITY ALD_14_50_06_1_ADDRESS_GENERATOR_TENS_POSITION
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_H_POS_C_INDEX_TAG =>
		PS_H_POS_C_INDEX_TAG,
	PS_H_POS_A_INDEX_TAG =>
		PS_H_POS_A_INDEX_TAG,
	PS_T_POS_B_INDEX_TAG =>
		PS_T_POS_B_INDEX_TAG,
	PS_RO_INDEX_AR =>
		PS_RO_INDEX_AR,
	PS_H_POS_B_INDEX_TAG =>
		PS_H_POS_B_INDEX_TAG,
	MS_T_POS_B_INDEX_TAG =>
		MS_T_POS_B_INDEX_TAG,
	MS_H_POS_C_INDEX_TAG =>
		MS_H_POS_C_INDEX_TAG,
	MS_H_POS_A_INDEX_TAG =>
		MS_H_POS_A_INDEX_TAG,
	MS_ADDR_GEN_TP_18_BIT =>
		MS_ADDR_GEN_TP_18_BIT,
	MS_ADDR_GEN_TP_08_BIT =>
		MS_ADDR_GEN_TP_08_BIT,
	MS_ADDR_GEN_TP_48_BIT =>
		MS_ADDR_GEN_TP_48_BIT,
	MS_ADDR_GEN_TP_24_BIT =>
		MS_ADDR_GEN_TP_24_BIT
	);


END;
