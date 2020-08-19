-- VHDL for IBM SMS ALD group ARBus
-- Title: ARBus
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/19/2020 9:21:03 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ARBus is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_ADDR_GEN_UP_04_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_08_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_02_BIT: in STD_LOGIC;
		MS_RO_FIXED_ADDR: in STD_LOGIC;
		MS_ADDR_GEN_UP_18_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_12_BIT: in STD_LOGIC;
		MS_ADDR_GEN_U_POS_5_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_01_BIT: in STD_LOGIC;
		MS_ADDR_GEN_U_POS_0_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_24_BIT: in STD_LOGIC;
		MS_ADDR_GEN_UP_48_BIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_2_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_08_BIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_4_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_3_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_18_BIT: in STD_LOGIC;
		MS_ADDR_GEN_T_POS_5_DIGIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_24_BIT: in STD_LOGIC;
		MS_ADDR_GEN_TP_48_BIT: in STD_LOGIC;
		MS_RO_00201_INDEX_ADDR: in STD_LOGIC;
		MS_RO_00101_INDEX_ADDR: in STD_LOGIC;
		MS_RO_INDEX_AR: in STD_LOGIC;
		MS_RO_00001_INDEX_ADDR: in STD_LOGIC;
		MS_A_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_A_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_B_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_C_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_D_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_I_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_E_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MS_F_AR_GT_OUT_TTHP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_UP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_TP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_HP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_THP_BUS: out STD_LOGIC_VECTOR (4 downTo 0);
		PS_AR_BUS_TTHP_BUS: out STD_LOGIC_VECTOR (4 downTo 0));
end ARBus;


ARCHITECTURE structural of ARBus is

	 signal XX_PS_AR_BUS_UP0B: STD_LOGIC;
	 signal XX_PS_AR_BUS_UP1B: STD_LOGIC;
	 signal XX_PS_AR_BUS_UP2B: STD_LOGIC;
	 signal XX_PS_AR_BUS_UP4B: STD_LOGIC;
	 signal XX_PS_AR_BUS_UP8B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TP0B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TP1B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TP2B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TP4B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TP8B: STD_LOGIC;
	 signal XX_PS_AR_BUS_HP0B: STD_LOGIC;
	 signal XX_PS_AR_BUS_HP1B: STD_LOGIC;
	 signal XX_PS_AR_BUS_HP2B: STD_LOGIC;
	 signal XX_PS_AR_BUS_HP4B: STD_LOGIC;
	 signal XX_PS_AR_BUS_HP8B: STD_LOGIC;
	 signal XX_PS_AR_BUS_THP0B: STD_LOGIC;
	 signal XX_PS_AR_BUS_THP1B: STD_LOGIC;
	 signal XX_PS_AR_BUS_THP2B: STD_LOGIC;
	 signal XX_PS_AR_BUS_THP4B: STD_LOGIC;
	 signal XX_PS_AR_BUS_THP8B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TTHP0B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TTHP1B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TTHP2B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TTHP4B: STD_LOGIC;
	 signal XX_PS_AR_BUS_TTHP8B: STD_LOGIC;

BEGIN


	PS_AR_BUS_UP_BUS <= (
		XX_PS_AR_BUS_UP8B,
		XX_PS_AR_BUS_UP4B,
		XX_PS_AR_BUS_UP2B,
		XX_PS_AR_BUS_UP1B,
		XX_PS_AR_BUS_UP0B);

	PS_AR_BUS_TP_BUS <= (
		XX_PS_AR_BUS_TP8B,
		XX_PS_AR_BUS_TP4B,
		XX_PS_AR_BUS_TP2B,
		XX_PS_AR_BUS_TP1B,
		XX_PS_AR_BUS_TP0B);

	PS_AR_BUS_HP_BUS <= (
		XX_PS_AR_BUS_HP8B,
		XX_PS_AR_BUS_HP4B,
		XX_PS_AR_BUS_HP2B,
		XX_PS_AR_BUS_HP1B,
		XX_PS_AR_BUS_HP0B);

	PS_AR_BUS_THP_BUS <= (
		XX_PS_AR_BUS_THP8B,
		XX_PS_AR_BUS_THP4B,
		XX_PS_AR_BUS_THP2B,
		XX_PS_AR_BUS_THP1B,
		XX_PS_AR_BUS_THP0B);

	PS_AR_BUS_TTHP_BUS <= (
		XX_PS_AR_BUS_TTHP8B,
		XX_PS_AR_BUS_TTHP4B,
		XX_PS_AR_BUS_TTHP2B,
		XX_PS_AR_BUS_TTHP1B,
		XX_PS_AR_BUS_TTHP0B);

Page_14_15_01_1: ENTITY ALD_14_15_01_1_AR_BUS_UNITS_POS_0_AND_1_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_UP0B =>
		MS_A_AR_GT_OUT_UP_BUS(0),
	MS_C_AR_GT_OUT_UP0B =>
		MS_C_AR_GT_OUT_UP_BUS(0),
	MS_I_AR_GT_OUT_UP0B =>
		MS_I_AR_GT_OUT_UP_BUS(0),
	MS_B_AR_GT_OUT_UP0B =>
		MS_B_AR_GT_OUT_UP_BUS(0),
	MS_E_AR_GT_OUT_UP0B =>
		MS_E_AR_GT_OUT_UP_BUS(0),
	MS_F_AR_GT_OUT_UP0B =>
		MS_F_AR_GT_OUT_UP_BUS(0),
	MS_D_AR_GT_OUT_UP0B =>
		MS_D_AR_GT_OUT_UP_BUS(0),
	MS_ADDR_GEN_UP_04_BIT =>
		MS_ADDR_GEN_UP_04_BIT,
	MS_ADDR_GEN_UP_08_BIT =>
		MS_ADDR_GEN_UP_08_BIT,
	MS_ADDR_GEN_UP_02_BIT =>
		MS_ADDR_GEN_UP_02_BIT,
	MS_ADDR_GEN_UP_01_BIT =>
		MS_ADDR_GEN_UP_01_BIT,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	MS_A_AR_GT_OUT_UP1B =>
		MS_A_AR_GT_OUT_UP_BUS(1),
	MS_C_AR_GT_OUT_UP1B =>
		MS_C_AR_GT_OUT_UP_BUS(1),
	MS_I_AR_GT_OUT_UP1B =>
		MS_I_AR_GT_OUT_UP_BUS(1),
	MS_B_AR_GT_OUT_UP1B =>
		MS_B_AR_GT_OUT_UP_BUS(1),
	MS_E_AR_GT_OUT_UP1B =>
		MS_E_AR_GT_OUT_UP_BUS(1),
	MS_F_AR_GT_OUT_UP1B =>
		MS_F_AR_GT_OUT_UP_BUS(1),
	MS_D_AR_GT_OUT_UP1B =>
		MS_D_AR_GT_OUT_UP_BUS(1),
	MS_ADDR_GEN_UP_18_BIT =>
		MS_ADDR_GEN_UP_18_BIT,
	MS_ADDR_GEN_UP_12_BIT =>
		MS_ADDR_GEN_UP_12_BIT,
	MS_ADDR_GEN_U_POS_5_DIGIT =>
		MS_ADDR_GEN_U_POS_5_DIGIT,
	PS_AR_BUS_UP0B =>
		XX_PS_AR_BUS_UP0B,
	PS_AR_BUS_UP1B =>
		XX_PS_AR_BUS_UP1B
	);

Page_14_15_02_1: ENTITY ALD_14_15_02_1_AR_BUS_UNITS_POS_2_AND_4_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_UP2B =>
		MS_A_AR_GT_OUT_UP_BUS(2),
	MS_C_AR_GT_OUT_UP2B =>
		MS_C_AR_GT_OUT_UP_BUS(2),
	MS_I_AR_GT_OUT_UP2B =>
		MS_I_AR_GT_OUT_UP_BUS(2),
	MS_B_AR_GT_OUT_UP2B =>
		MS_B_AR_GT_OUT_UP_BUS(2),
	MS_ADDR_GEN_U_POS_0_DIGIT =>
		MS_ADDR_GEN_U_POS_0_DIGIT,
	MS_ADDR_GEN_UP_02_BIT =>
		MS_ADDR_GEN_UP_02_BIT,
	MS_D_AR_GT_OUT_UP2B =>
		MS_D_AR_GT_OUT_UP_BUS(2),
	MS_ADDR_GEN_UP_12_BIT =>
		MS_ADDR_GEN_UP_12_BIT,
	MS_ADDR_GEN_UP_24_BIT =>
		MS_ADDR_GEN_UP_24_BIT,
	MS_E_AR_GT_OUT_UP2B =>
		MS_E_AR_GT_OUT_UP_BUS(2),
	MS_F_AR_GT_OUT_UP2B =>
		MS_F_AR_GT_OUT_UP_BUS(2),
	MS_A_AR_GT_OUT_UP4B =>
		MS_A_AR_GT_OUT_UP_BUS(3),
	MS_C_AR_GT_OUT_UP4B =>
		MS_C_AR_GT_OUT_UP_BUS(3),
	MS_I_AR_GT_OUT_UP4B =>
		MS_I_AR_GT_OUT_UP_BUS(3),
	MS_B_AR_GT_OUT_UP4B =>
		MS_B_AR_GT_OUT_UP_BUS(3),
	MS_ADDR_GEN_UP_04_BIT =>
		MS_ADDR_GEN_UP_04_BIT,
	MS_ADDR_GEN_U_POS_5_DIGIT =>
		MS_ADDR_GEN_U_POS_5_DIGIT,
	MS_D_AR_GT_OUT_UP4B =>
		MS_D_AR_GT_OUT_UP_BUS(3),
	MS_ADDR_GEN_UP_48_BIT =>
		MS_ADDR_GEN_UP_48_BIT,
	MS_E_AR_GT_OUT_UP4B =>
		MS_E_AR_GT_OUT_UP_BUS(3),
	MS_F_AR_GT_OUT_UP4B =>
		MS_F_AR_GT_OUT_UP_BUS(3),
	PS_AR_BUS_UP2B =>
		XX_PS_AR_BUS_UP2B,
	PS_AR_BUS_UP4B =>
		XX_PS_AR_BUS_UP4B
	);

Page_14_15_03_1: ENTITY ALD_14_15_03_1_AR_BUS_UNITS_POS_8_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_UP8B =>
		MS_A_AR_GT_OUT_UP_BUS(4),
	MS_C_AR_GT_OUT_UP8B =>
		MS_C_AR_GT_OUT_UP_BUS(4),
	MS_I_AR_GT_OUT_UP8B =>
		MS_I_AR_GT_OUT_UP_BUS(4),
	MS_B_AR_GT_OUT_UP8B =>
		MS_B_AR_GT_OUT_UP_BUS(4),
	MS_ADDR_GEN_U_POS_0_DIGIT =>
		MS_ADDR_GEN_U_POS_0_DIGIT,
	MS_ADDR_GEN_UP_48_BIT =>
		MS_ADDR_GEN_UP_48_BIT,
	MS_D_AR_GT_OUT_UP8B =>
		MS_D_AR_GT_OUT_UP_BUS(4),
	MS_ADDR_GEN_UP_18_BIT =>
		MS_ADDR_GEN_UP_18_BIT,
	MS_ADDR_GEN_UP_08_BIT =>
		MS_ADDR_GEN_UP_08_BIT,
	MS_E_AR_GT_OUT_UP8B =>
		MS_E_AR_GT_OUT_UP_BUS(4),
	MS_F_AR_GT_OUT_UP8B =>
		MS_F_AR_GT_OUT_UP_BUS(4),
	PS_AR_BUS_UP8B =>
		XX_PS_AR_BUS_UP8B
	);

Page_14_15_04_1: ENTITY ALD_14_15_04_1_AR_BUS_TENS_POS_0_AND_1_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_TP0B =>
		MS_A_AR_GT_OUT_TP_BUS(0),
	MS_C_AR_GT_OUT_TP0B =>
		MS_C_AR_GT_OUT_TP_BUS(0),
	MS_I_AR_GT_OUT_TP0B =>
		MS_I_AR_GT_OUT_TP_BUS(0),
	MS_B_AR_GT_OUT_TP0B =>
		MS_B_AR_GT_OUT_TP_BUS(0),
	MS_ADDR_GEN_T_POS_2_DIGIT =>
		MS_ADDR_GEN_T_POS_2_DIGIT,
	MS_E_AR_GT_OUT_TP0B =>
		MS_E_AR_GT_OUT_TP_BUS(0),
	MS_D_AR_GT_OUT_TP0B =>
		MS_D_AR_GT_OUT_TP_BUS(0),
	MS_ADDR_GEN_TP_08_BIT =>
		MS_ADDR_GEN_TP_08_BIT,
	MS_ADDR_GEN_T_POS_4_DIGIT =>
		MS_ADDR_GEN_T_POS_4_DIGIT,
	MS_F_AR_GT_OUT_TP0B =>
		MS_F_AR_GT_OUT_TP_BUS(0),
	MS_A_AR_GT_OUT_TP1B =>
		MS_A_AR_GT_OUT_TP_BUS(1),
	MS_C_AR_GT_OUT_TP1B =>
		MS_C_AR_GT_OUT_TP_BUS(1),
	MS_I_AR_GT_OUT_TP1B =>
		MS_I_AR_GT_OUT_TP_BUS(1),
	MS_B_AR_GT_OUT_TP1B =>
		MS_B_AR_GT_OUT_TP_BUS(1),
	MS_ADDR_GEN_T_POS_3_DIGIT =>
		MS_ADDR_GEN_T_POS_3_DIGIT,
	MS_E_AR_GT_OUT_TP1B =>
		MS_E_AR_GT_OUT_TP_BUS(1),
	MS_D_AR_GT_OUT_TP1B =>
		MS_D_AR_GT_OUT_TP_BUS(1),
	MS_ADDR_GEN_TP_18_BIT =>
		MS_ADDR_GEN_TP_18_BIT,
	MS_ADDR_GEN_T_POS_5_DIGIT =>
		MS_ADDR_GEN_T_POS_5_DIGIT,
	MS_F_AR_GT_OUT_TP1B =>
		MS_F_AR_GT_OUT_TP_BUS(1),
	PS_AR_BUS_TP0B =>
		XX_PS_AR_BUS_TP0B,
	PS_AR_BUS_TP1B =>
		XX_PS_AR_BUS_TP1B
	);

Page_14_15_05_1: ENTITY ALD_14_15_05_1_AR_BUS_TENS_POS_2_AND_4_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_TP2B =>
		MS_A_AR_GT_OUT_TP_BUS(2),
	MS_C_AR_GT_OUT_TP2B =>
		MS_C_AR_GT_OUT_TP_BUS(2),
	MS_I_AR_GT_OUT_TP2B =>
		MS_I_AR_GT_OUT_TP_BUS(2),
	MS_B_AR_GT_OUT_TP2B =>
		MS_B_AR_GT_OUT_TP_BUS(2),
	MS_ADDR_GEN_T_POS_3_DIGIT =>
		MS_ADDR_GEN_T_POS_3_DIGIT,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	MS_D_AR_GT_OUT_TP2B =>
		MS_D_AR_GT_OUT_TP_BUS(2),
	MS_ADDR_GEN_T_POS_2_DIGIT =>
		MS_ADDR_GEN_T_POS_2_DIGIT,
	MS_E_AR_GT_OUT_TP2B =>
		MS_E_AR_GT_OUT_TP_BUS(2),
	MS_F_AR_GT_OUT_TP2B =>
		MS_F_AR_GT_OUT_TP_BUS(2),
	MS_ADDR_GEN_TP_24_BIT =>
		MS_ADDR_GEN_TP_24_BIT,
	MS_A_AR_GT_OUT_TP4B =>
		MS_A_AR_GT_OUT_TP_BUS(3),
	MS_C_AR_GT_OUT_TP4B =>
		MS_C_AR_GT_OUT_TP_BUS(3),
	MS_I_AR_GT_OUT_TP4B =>
		MS_I_AR_GT_OUT_TP_BUS(3),
	MS_B_AR_GT_OUT_TP4B =>
		MS_B_AR_GT_OUT_TP_BUS(3),
	MS_ADDR_GEN_T_POS_4_DIGIT =>
		MS_ADDR_GEN_T_POS_4_DIGIT,
	MS_ADDR_GEN_T_POS_5_DIGIT =>
		MS_ADDR_GEN_T_POS_5_DIGIT,
	MS_D_AR_GT_OUT_TP4B =>
		MS_D_AR_GT_OUT_TP_BUS(3),
	MS_ADDR_GEN_TP_48_BIT =>
		MS_ADDR_GEN_TP_48_BIT,
	MS_E_AR_GT_OUT_TP4B =>
		MS_E_AR_GT_OUT_TP_BUS(3),
	MS_F_AR_GT_OUT_TP4B =>
		MS_F_AR_GT_OUT_TP_BUS(3),
	PS_AR_BUS_TP2B =>
		XX_PS_AR_BUS_TP2B,
	PS_AR_BUS_TP4B =>
		XX_PS_AR_BUS_TP4B
	);

Page_14_15_06_1: ENTITY ALD_14_15_06_1_AR_BUS_TENS_POS_8_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_TP8B =>
		MS_A_AR_GT_OUT_TP_BUS(4),
	MS_C_AR_GT_OUT_TP8B =>
		MS_C_AR_GT_OUT_TP_BUS(4),
	MS_I_AR_GT_OUT_TP8B =>
		MS_I_AR_GT_OUT_TP_BUS(4),
	MS_B_AR_GT_OUT_TP8B =>
		MS_B_AR_GT_OUT_TP_BUS(4),
	MS_ADDR_GEN_TP_48_BIT =>
		MS_ADDR_GEN_TP_48_BIT,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	MS_D_AR_GT_OUT_TP8B =>
		MS_D_AR_GT_OUT_TP_BUS(4),
	MS_ADDR_GEN_TP_18_BIT =>
		MS_ADDR_GEN_TP_18_BIT,
	MS_ADDR_GEN_TP_08_BIT =>
		MS_ADDR_GEN_TP_08_BIT,
	MS_E_AR_GT_OUT_TP8B =>
		MS_E_AR_GT_OUT_TP_BUS(4),
	MS_F_AR_GT_OUT_TP8B =>
		MS_F_AR_GT_OUT_TP_BUS(4),
	PS_AR_BUS_TP8B =>
		XX_PS_AR_BUS_TP8B
	);

Page_14_15_07_1: ENTITY ALD_14_15_07_1_AR_BUS_HUNDREDS_POS_0_AND_1_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_HP0B =>
		MS_A_AR_GT_OUT_HP_BUS(0),
	MS_C_AR_GT_OUT_HP0B =>
		MS_C_AR_GT_OUT_HP_BUS(0),
	MS_I_AR_GT_OUT_HP0B =>
		MS_I_AR_GT_OUT_HP_BUS(0),
	MS_B_AR_GT_OUT_HP0B =>
		MS_B_AR_GT_OUT_HP_BUS(0),
	MS_E_AR_GT_OUT_HP0B =>
		MS_E_AR_GT_OUT_HP_BUS(0),
	MS_F_AR_GT_OUT_HP0B =>
		MS_F_AR_GT_OUT_HP_BUS(0),
	MS_D_AR_GT_OUT_HP0B =>
		MS_D_AR_GT_OUT_HP_BUS(0),
	MS_RO_00201_INDEX_ADDR =>
		MS_RO_00201_INDEX_ADDR,
	MS_RO_00101_INDEX_ADDR =>
		MS_RO_00101_INDEX_ADDR,
	MS_A_AR_GT_OUT_HP1B =>
		MS_A_AR_GT_OUT_HP_BUS(1),
	MS_C_AR_GT_OUT_HP1B =>
		MS_C_AR_GT_OUT_HP_BUS(1),
	MS_I_AR_GT_OUT_HP1B =>
		MS_I_AR_GT_OUT_HP_BUS(1),
	MS_E_AR_GT_OUT_HP1B =>
		MS_E_AR_GT_OUT_HP_BUS(1),
	MS_F_AR_GT_OUT_HP1B =>
		MS_F_AR_GT_OUT_HP_BUS(1),
	MS_D_AR_GT_OUT_HP1B =>
		MS_D_AR_GT_OUT_HP_BUS(1),
	MS_B_AR_GT_OUT_HP1B =>
		MS_B_AR_GT_OUT_HP_BUS(1),
	PS_AR_BUS_HP0B =>
		XX_PS_AR_BUS_HP0B,
	PS_AR_BUS_HP1B =>
		XX_PS_AR_BUS_HP1B
	);

Page_14_15_08_1: ENTITY ALD_14_15_08_1_AR_BUS_HUNDREDS_POS_2_AND_4_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_HP2B =>
		MS_A_AR_GT_OUT_HP_BUS(2),
	MS_C_AR_GT_OUT_HP2B =>
		MS_C_AR_GT_OUT_HP_BUS(2),
	MS_I_AR_GT_OUT_HP2B =>
		MS_I_AR_GT_OUT_HP_BUS(2),
	MS_B_AR_GT_OUT_HP2B =>
		MS_B_AR_GT_OUT_HP_BUS(2),
	MS_RO_INDEX_AR =>
		MS_RO_INDEX_AR,
	MS_RO_00201_INDEX_ADDR =>
		MS_RO_00201_INDEX_ADDR,
	MS_D_AR_GT_OUT_HP2B =>
		MS_D_AR_GT_OUT_HP_BUS(2),
	MS_RO_00001_INDEX_ADDR =>
		MS_RO_00001_INDEX_ADDR,
	MS_E_AR_GT_OUT_HP2B =>
		MS_E_AR_GT_OUT_HP_BUS(2),
	MS_F_AR_GT_OUT_HP2B =>
		MS_F_AR_GT_OUT_HP_BUS(2),
	MS_A_AR_GT_OUT_HP4B =>
		MS_A_AR_GT_OUT_HP_BUS(3),
	MS_C_AR_GT_OUT_HP4B =>
		MS_C_AR_GT_OUT_HP_BUS(3),
	MS_I_AR_GT_OUT_HP4B =>
		MS_I_AR_GT_OUT_HP_BUS(3),
	MS_D_AR_GT_OUT_HP4B =>
		MS_D_AR_GT_OUT_HP_BUS(3),
	MS_B_AR_GT_OUT_HP4B =>
		MS_B_AR_GT_OUT_HP_BUS(3),
	MS_E_AR_GT_OUT_HP4B =>
		MS_E_AR_GT_OUT_HP_BUS(3),
	MS_F_AR_GT_OUT_HP4B =>
		MS_F_AR_GT_OUT_HP_BUS(3),
	PS_AR_BUS_HP2B =>
		XX_PS_AR_BUS_HP2B,
	PS_AR_BUS_HP4B =>
		XX_PS_AR_BUS_HP4B
	);

Page_14_15_09_1: ENTITY ALD_14_15_09_1_AR_BUS_HUNDREDS_POS_8_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_HP8B =>
		MS_A_AR_GT_OUT_HP_BUS(4),
	MS_C_AR_GT_OUT_HP8B =>
		MS_C_AR_GT_OUT_HP_BUS(4),
	MS_I_AR_GT_OUT_HP8B =>
		MS_I_AR_GT_OUT_HP_BUS(4),
	MS_B_AR_GT_OUT_HP8B =>
		MS_B_AR_GT_OUT_HP_BUS(4),
	MS_E_AR_GT_OUT_HP8B =>
		MS_E_AR_GT_OUT_HP_BUS(4),
	MS_F_AR_GT_OUT_HP8B =>
		MS_F_AR_GT_OUT_HP_BUS(4),
	MS_D_AR_GT_OUT_HP8B =>
		MS_D_AR_GT_OUT_HP_BUS(4),
	MS_RO_00001_INDEX_ADDR =>
		MS_RO_00001_INDEX_ADDR,
	MS_RO_INDEX_AR =>
		MS_RO_INDEX_AR,
	PS_AR_BUS_HP8B =>
		XX_PS_AR_BUS_HP8B
	);

Page_14_15_10_1: ENTITY ALD_14_15_10_1_AR_BUS_THOUSANDS_POS_0_1_AND_2_BI
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_THP0B =>
		MS_A_AR_GT_OUT_THP_BUS(0),
	MS_C_AR_GT_OUT_THP0B =>
		MS_C_AR_GT_OUT_THP_BUS(0),
	MS_I_AR_GT_OUT_THP0B =>
		MS_I_AR_GT_OUT_THP_BUS(0),
	MS_D_AR_GT_OUT_THP0B =>
		MS_D_AR_GT_OUT_THP_BUS(0),
	MS_E_AR_GT_OUT_THP0B =>
		MS_E_AR_GT_OUT_THP_BUS(0),
	MS_B_AR_GT_OUT_THP0B =>
		MS_B_AR_GT_OUT_THP_BUS(0),
	MS_F_AR_GT_OUT_THP0B =>
		MS_F_AR_GT_OUT_THP_BUS(0),
	MS_A_AR_GT_OUT_THP1B =>
		MS_A_AR_GT_OUT_THP_BUS(1),
	MS_C_AR_GT_OUT_THP1B =>
		MS_C_AR_GT_OUT_THP_BUS(1),
	MS_I_AR_GT_OUT_THP1B =>
		MS_I_AR_GT_OUT_THP_BUS(1),
	MS_D_AR_GT_OUT_THP1B =>
		MS_D_AR_GT_OUT_THP_BUS(1),
	MS_E_AR_GT_OUT_THP1B =>
		MS_E_AR_GT_OUT_THP_BUS(1),
	MS_B_AR_GT_OUT_THP1B =>
		MS_B_AR_GT_OUT_THP_BUS(1),
	MS_F_AR_GT_OUT_THP1B =>
		MS_F_AR_GT_OUT_THP_BUS(1),
	MS_A_AR_GT_OUT_THP2B =>
		MS_A_AR_GT_OUT_THP_BUS(2),
	MS_C_AR_GT_OUT_THP2B =>
		MS_C_AR_GT_OUT_THP_BUS(2),
	MS_I_AR_GT_OUT_THP2B =>
		MS_I_AR_GT_OUT_THP_BUS(2),
	MS_B_AR_GT_OUT_THP2B =>
		MS_B_AR_GT_OUT_THP_BUS(2),
	MS_E_AR_GT_OUT_THP2B =>
		MS_E_AR_GT_OUT_THP_BUS(2),
	MS_F_AR_GT_OUT_THP2B =>
		MS_F_AR_GT_OUT_THP_BUS(2),
	MS_D_AR_GT_OUT_THP2B =>
		MS_D_AR_GT_OUT_THP_BUS(2),
	MS_RO_INDEX_AR =>
		MS_RO_INDEX_AR,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	PS_AR_BUS_THP0B =>
		XX_PS_AR_BUS_THP0B,
	PS_AR_BUS_THP1B =>
		XX_PS_AR_BUS_THP1B,
	PS_AR_BUS_THP2B =>
		XX_PS_AR_BUS_THP2B
	);

Page_14_15_11_1: ENTITY ALD_14_15_11_1_AR_BUS_THOUSANDS_POS_4_AND_8_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_THP4B =>
		MS_A_AR_GT_OUT_THP_BUS(3),
	MS_C_AR_GT_OUT_THP4B =>
		MS_C_AR_GT_OUT_THP_BUS(3),
	MS_I_AR_GT_OUT_THP4B =>
		MS_I_AR_GT_OUT_THP_BUS(3),
	MS_D_AR_GT_OUT_THP4B =>
		MS_D_AR_GT_OUT_THP_BUS(3),
	MS_F_AR_GT_OUT_THP4B =>
		MS_F_AR_GT_OUT_THP_BUS(3),
	MS_B_AR_GT_OUT_THP4B =>
		MS_B_AR_GT_OUT_THP_BUS(3),
	MS_E_AR_GT_OUT_THP4B =>
		MS_E_AR_GT_OUT_THP_BUS(3),
	MS_A_AR_GT_OUT_THP8B =>
		MS_A_AR_GT_OUT_THP_BUS(4),
	MS_C_AR_GT_OUT_THP8B =>
		MS_C_AR_GT_OUT_THP_BUS(4),
	MS_I_AR_GT_OUT_THP8B =>
		MS_I_AR_GT_OUT_THP_BUS(4),
	MS_B_AR_GT_OUT_THP8B =>
		MS_B_AR_GT_OUT_THP_BUS(4),
	MS_E_AR_GT_OUT_THP8B =>
		MS_E_AR_GT_OUT_THP_BUS(4),
	MS_F_AR_GT_OUT_THP8B =>
		MS_F_AR_GT_OUT_THP_BUS(4),
	MS_D_AR_GT_OUT_THP8B =>
		MS_D_AR_GT_OUT_THP_BUS(4),
	MS_RO_INDEX_AR =>
		MS_RO_INDEX_AR,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	PS_AR_BUS_THP4B =>
		XX_PS_AR_BUS_THP4B,
	PS_AR_BUS_THP8B =>
		XX_PS_AR_BUS_THP8B
	);

Page_14_15_12_1: ENTITY ALD_14_15_12_1_AR_BUS_TEN_THOUSANDS_0_1_AND_2_BI
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_TTHP0B =>
		MS_A_AR_GT_OUT_TTHP_BUS(0),
	MS_C_AR_GT_OUT_TTHP0B =>
		MS_C_AR_GT_OUT_TTHP_BUS(0),
	MS_I_AR_GT_OUT_TTHP0B =>
		MS_I_AR_GT_OUT_TTHP_BUS(0),
	MS_D_AR_GT_OUT_TTHP0B =>
		MS_D_AR_GT_OUT_TTHP_BUS(0),
	MS_E_AR_GT_OUT_TTHP0B =>
		MS_E_AR_GT_OUT_TTHP_BUS(0),
	MS_B_AR_GT_OUT_TTHP0B =>
		MS_B_AR_GT_OUT_TTHP_BUS(0),
	MS_F_AR_GT_OUT_TTHP0B =>
		MS_F_AR_GT_OUT_TTHP_BUS(0),
	MS_A_AR_GT_OUT_TTHP1B =>
		MS_A_AR_GT_OUT_TTHP_BUS(1),
	MS_C_AR_GT_OUT_TTHP1B =>
		MS_C_AR_GT_OUT_TTHP_BUS(1),
	MS_I_AR_GT_OUT_TTHP1B =>
		MS_I_AR_GT_OUT_TTHP_BUS(1),
	MS_D_AR_GT_OUT_TTHP1B =>
		MS_D_AR_GT_OUT_TTHP_BUS(1),
	MS_E_AR_GT_OUT_TTHP1B =>
		MS_E_AR_GT_OUT_TTHP_BUS(1),
	MS_B_AR_GT_OUT_TTHP1B =>
		MS_B_AR_GT_OUT_TTHP_BUS(1),
	MS_F_AR_GT_OUT_TTHP1B =>
		MS_F_AR_GT_OUT_TTHP_BUS(1),
	MS_A_AR_GT_OUT_TTHP2B =>
		MS_A_AR_GT_OUT_TTHP_BUS(2),
	MS_C_AR_GT_OUT_TTHP2B =>
		MS_C_AR_GT_OUT_TTHP_BUS(2),
	MS_I_AR_GT_OUT_TTHP2B =>
		MS_I_AR_GT_OUT_TTHP_BUS(2),
	MS_B_AR_GT_OUT_TTHP2B =>
		MS_B_AR_GT_OUT_TTHP_BUS(2),
	MS_E_AR_GT_OUT_TTHP2B =>
		MS_E_AR_GT_OUT_TTHP_BUS(2),
	MS_F_AR_GT_OUT_TTHP2B =>
		MS_F_AR_GT_OUT_TTHP_BUS(2),
	MS_D_AR_GT_OUT_TTHP2B =>
		MS_D_AR_GT_OUT_TTHP_BUS(2),
	MS_RO_INDEX_AR =>
		MS_RO_INDEX_AR,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	PS_AR_BUS_TTHP0B =>
		XX_PS_AR_BUS_TTHP0B,
	PS_AR_BUS_TTHP1B =>
		XX_PS_AR_BUS_TTHP1B,
	PS_AR_BUS_TTHP2B =>
		XX_PS_AR_BUS_TTHP2B
	);

Page_14_15_13_1: ENTITY ALD_14_15_13_1_AR_BUS_TEN_THOUSANDS_4_AND_8_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_AR_GT_OUT_TTHP4B =>
		MS_A_AR_GT_OUT_TTHP_BUS(3),
	MS_C_AR_GT_OUT_TTHP4B =>
		MS_C_AR_GT_OUT_TTHP_BUS(3),
	MS_I_AR_GT_OUT_TTHP4B =>
		MS_I_AR_GT_OUT_TTHP_BUS(3),
	MS_B_AR_GT_OUT_TTHP4B =>
		MS_B_AR_GT_OUT_TTHP_BUS(3),
	MS_D_AR_GT_OUT_TTHP4B =>
		MS_D_AR_GT_OUT_TTHP_BUS(3),
	MS_E_AR_GT_OUT_TTHP4B =>
		MS_E_AR_GT_OUT_TTHP_BUS(3),
	MS_F_AR_GT_OUT_TTHP4B =>
		MS_F_AR_GT_OUT_TTHP_BUS(3),
	MS_A_AR_GT_OUT_TTHP8B =>
		MS_A_AR_GT_OUT_TTHP_BUS(4),
	MS_C_AR_GT_OUT_TTHP8B =>
		MS_C_AR_GT_OUT_TTHP_BUS(4),
	MS_I_AR_GT_OUT_TTHP8B =>
		MS_I_AR_GT_OUT_TTHP_BUS(4),
	MS_B_AR_GT_OUT_TTHP8B =>
		MS_B_AR_GT_OUT_TTHP_BUS(4),
	MS_E_AR_GT_OUT_TTHP8B =>
		MS_E_AR_GT_OUT_TTHP_BUS(4),
	MS_F_AR_GT_OUT_TTHP8B =>
		MS_F_AR_GT_OUT_TTHP_BUS(4),
	MS_D_AR_GT_OUT_TTHP8B =>
		MS_D_AR_GT_OUT_TTHP_BUS(4),
	MS_RO_INDEX_AR =>
		MS_RO_INDEX_AR,
	MS_RO_FIXED_ADDR =>
		MS_RO_FIXED_ADDR,
	PS_AR_BUS_TTHP4B =>
		XX_PS_AR_BUS_TTHP4B,
	PS_AR_BUS_TTHP8B =>
		XX_PS_AR_BUS_TTHP8B
	);


END;
