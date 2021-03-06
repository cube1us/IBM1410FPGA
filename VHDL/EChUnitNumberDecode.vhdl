-- VHDL for IBM SMS ALD group EChUnitNumberDecode
-- Title: EChUnitNumberDecode
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/16/2020 8:58:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChUnitNumberDecode is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_LOZ_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_LOZ_SYMBOL_OP_MODIFIER: in STD_LOGIC;
		PS_1401_PRINT_TRIGGER: in STD_LOGIC;
		PS_E_CH_U_NU_REG_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E_CH_U_NU_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MS_E_CH_UNIT_NUMBER_0: out STD_LOGIC;
		PS_E_CH_UNIT_NUMBER_0: out STD_LOGIC;
		PS_E_CH_UNIT_NUMBER_1: out STD_LOGIC;
		MC_UNIT_NU_0_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_SELECT_NO_0_TO_BUFFER: out STD_LOGIC;
		MC_SEEK_STAR_E_CH_1405: out STD_LOGIC;
		MC_UNIT_NU_1_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MS_E_CH_UNIT_NUMBER_1: out STD_LOGIC;
		MC_SELECT_NO_1_TO_BUFFER: out STD_LOGIC;
		MC_SINGLE_REC_STAR_E_CH_TO_1405: out STD_LOGIC;
		MC_UNIT_NU_2_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_SELECT_NO_2_TO_BUFFER: out STD_LOGIC;
		MC_FULL_TRACK_WITHOUT_IA_STAR_1405_E_CH: out STD_LOGIC;
		MS_E_CH_UNIT_NUMBER_4: out STD_LOGIC;
		MS_E_CH_UNIT_NUMBER_3: out STD_LOGIC;
		PS_E_CH_UNIT_NUMBER_3: out STD_LOGIC;
		MC_UNIT_NU_3_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_SELECT_NO_3_TO_BUFFER: out STD_LOGIC;
		MC_WRITE_CHECK_STAR_E_CH_TO_1405: out STD_LOGIC;
		MC_UNIT_NU_4_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_WRITE_ADDR_STAR_E_CH_TO_1405: out STD_LOGIC;
		MC_UNIT_NU_5_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MS_E_CH_UNIT_NUMBER_9: out STD_LOGIC;
		MC_UNIT_NU_6_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_UNIT_NU_7_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_UNIT_NU_8_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_UNIT_NU_9_TO_TAU_STAR_E_CH: out STD_LOGIC;
		MC_E_CH_UNIT_STAR_1301_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end EChUnitNumberDecode;


ARCHITECTURE structural of EChUnitNumberDecode is

	 signal XX_MC_E_CH_UNIT_8_BIT_STAR_1301_STAR: STD_LOGIC;
	 signal XX_MC_E_CH_UNIT_1_BIT_STAR_1301_STAR: STD_LOGIC;
	 signal XX_MC_E_CH_UNIT_C_BIT_STAR_1301_STAR: STD_LOGIC;
	 signal XX_MC_E_CH_UNIT_2_BIT_STAR_1301_STAR: STD_LOGIC;
	 signal XX_MC_E_CH_UNIT_4_BIT_STAR_1301_STAR: STD_LOGIC;

BEGIN


	MC_E_CH_UNIT_STAR_1301_STAR_BUS <= (
		XX_MC_E_CH_UNIT_C_BIT_STAR_1301_STAR,
		'0',
		'0',
		'0',
		XX_MC_E_CH_UNIT_8_BIT_STAR_1301_STAR,
		XX_MC_E_CH_UNIT_4_BIT_STAR_1301_STAR,
		XX_MC_E_CH_UNIT_2_BIT_STAR_1301_STAR,
		XX_MC_E_CH_UNIT_1_BIT_STAR_1301_STAR);

Page_15_55_04_1: ENTITY ALD_15_55_04_1_E_CH_UNIT_NUMBER_DECODE
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_UNIT_NU_REG_C_BIT =>
		PS_E_CH_U_NU_REG_BUS(7),
	PS_E_CH_UNIT_NU_REG_8_BIT =>
		PS_E_CH_U_NU_REG_BUS(3),
	MS_LOZ_SYMBOL_OP_MODIFIER =>
		MS_LOZ_SYMBOL_OP_MODIFIER,
	PS_1401_PRINT_TRIGGER =>
		PS_1401_PRINT_TRIGGER,
	PS_LOZ_SYMBOL_OP_MODIFIER =>
		PS_LOZ_SYMBOL_OP_MODIFIER,
	PS_E_CH_UNIT_NU_REG_1_BIT =>
		PS_E_CH_U_NU_REG_BUS(0),
	PS_E_CH_UNIT_NU_REG_NOT_2_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(1),
	PS_E_CH_UNIT_NU_REG_2_BIT =>
		PS_E_CH_U_NU_REG_BUS(1),
	PS_E_CH_UNIT_NU_REG_NOT_1_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(0),
	PS_E_CH_UNIT_NU_REG_NOT_4_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(2),
	PS_E_CH_UNIT_NU_REG_NOT_C_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(7),
	PS_E_CH_UNIT_NU_REG_NOT_8_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(3),
	MS_E_CH_UNIT_NUMBER_0 =>
		MS_E_CH_UNIT_NUMBER_0,
	MC_UNIT_NU_0_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_0_TO_TAU_STAR_E_CH,
	PS_E_CH_UNIT_NUMBER_0 =>
		PS_E_CH_UNIT_NUMBER_0,
	MC_SELECT_NO_0_TO_BUFFER =>
		MC_SELECT_NO_0_TO_BUFFER,
	MC_SEEK_STAR_E_CH_1405 =>
		MC_SEEK_STAR_E_CH_1405,
	PS_E_CH_UNIT_NUMBER_1 =>
		PS_E_CH_UNIT_NUMBER_1,
	MC_UNIT_NU_1_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_1_TO_TAU_STAR_E_CH,
	MS_E_CH_UNIT_NUMBER_1 =>
		MS_E_CH_UNIT_NUMBER_1,
	MC_SELECT_NO_1_TO_BUFFER =>
		MC_SELECT_NO_1_TO_BUFFER,
	MC_SINGLE_REC_STAR_E_CH_TO_1405 =>
		MC_SINGLE_REC_STAR_E_CH_TO_1405,
	MC_UNIT_NU_2_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_2_TO_TAU_STAR_E_CH,
	MC_SELECT_NO_2_TO_BUFFER =>
		MC_SELECT_NO_2_TO_BUFFER,
	MC_FULL_TRACK_WITHOUT_IA_STAR_1405_E_CH =>
		MC_FULL_TRACK_WITHOUT_IA_STAR_1405_E_CH
	);

Page_15_55_05_1: ENTITY ALD_15_55_05_1_E_CH_UNIT_NUMBER_DECODE
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_UNIT_NU_REG_2_BIT =>
		PS_E_CH_U_NU_REG_BUS(1),
	PS_E_CH_UNIT_NU_REG_NOT_4_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(2),
	PS_E_CH_UNIT_NU_REG_C_BIT =>
		PS_E_CH_U_NU_REG_BUS(7),
	PS_E_CH_UNIT_NU_REG_NOT_8_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(3),
	PS_E_CH_UNIT_NU_REG_1_BIT =>
		PS_E_CH_U_NU_REG_BUS(0),
	PS_E_CH_UNIT_NU_REG_NOT_C_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(7),
	PS_E_CH_UNIT_NU_REG_NOT_1_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(0),
	PS_E_CH_UNIT_NU_REG_4_BIT =>
		PS_E_CH_U_NU_REG_BUS(2),
	PS_E_CH_UNIT_NU_REG_NOT_2_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(1),
	MS_E_CH_UNIT_NUMBER_3 =>
		MS_E_CH_UNIT_NUMBER_3,
	PS_E_CH_UNIT_NUMBER_3 =>
		PS_E_CH_UNIT_NUMBER_3,
	MC_UNIT_NU_3_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_3_TO_TAU_STAR_E_CH,
	MC_SELECT_NO_3_TO_BUFFER =>
		MC_SELECT_NO_3_TO_BUFFER,
	MC_WRITE_CHECK_STAR_E_CH_TO_1405 =>
		MC_WRITE_CHECK_STAR_E_CH_TO_1405,
	MS_E_CH_UNIT_NUMBER_4 =>
		MS_E_CH_UNIT_NUMBER_4,
	MC_UNIT_NU_4_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_4_TO_TAU_STAR_E_CH,
	MC_WRITE_ADDR_STAR_E_CH_TO_1405 =>
		MC_WRITE_ADDR_STAR_E_CH_TO_1405,
	MC_UNIT_NU_5_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_5_TO_TAU_STAR_E_CH
	);

Page_15_55_06_1: ENTITY ALD_15_55_06_1_E_CH_UNIT_NUMBER_DECODE
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_E_CH_UNIT_NU_REG_NOT_8_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(3),
	PS_E_CH_UNIT_NU_REG_4_BIT =>
		PS_E_CH_U_NU_REG_BUS(2),
	PS_E_CH_UNIT_NU_REG_2_BIT =>
		PS_E_CH_U_NU_REG_BUS(1),
	PS_E_CH_UNIT_NU_REG_NOT_1_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(0),
	PS_E_CH_UNIT_NU_REG_NOT_C_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(7),
	PS_E_CH_UNIT_NU_REG_C_BIT =>
		PS_E_CH_U_NU_REG_BUS(7),
	PS_E_CH_UNIT_NU_REG_NOT_4_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(2),
	PS_E_CH_UNIT_NU_REG_1_BIT =>
		PS_E_CH_U_NU_REG_BUS(0),
	PS_E_CH_UNIT_NU_REG_8_BIT =>
		PS_E_CH_U_NU_REG_BUS(3),
	PS_E_CH_UNIT_NU_REG_NOT_2_BIT =>
		PS_E_CH_U_NU_REG_NOT_BUS(1),
	MC_UNIT_NU_6_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_6_TO_TAU_STAR_E_CH,
	MC_E_CH_UNIT_8_BIT_STAR_1301_STAR =>
		XX_MC_E_CH_UNIT_8_BIT_STAR_1301_STAR,
	MC_UNIT_NU_7_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_7_TO_TAU_STAR_E_CH,
	MC_E_CH_UNIT_1_BIT_STAR_1301_STAR =>
		XX_MC_E_CH_UNIT_1_BIT_STAR_1301_STAR,
	MC_UNIT_NU_8_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_8_TO_TAU_STAR_E_CH,
	MC_E_CH_UNIT_C_BIT_STAR_1301_STAR =>
		XX_MC_E_CH_UNIT_C_BIT_STAR_1301_STAR,
	MC_E_CH_UNIT_2_BIT_STAR_1301_STAR =>
		XX_MC_E_CH_UNIT_2_BIT_STAR_1301_STAR,
	MS_E_CH_UNIT_NUMBER_9 =>
		MS_E_CH_UNIT_NUMBER_9,
	MC_UNIT_NU_9_TO_TAU_STAR_E_CH =>
		MC_UNIT_NU_9_TO_TAU_STAR_E_CH,
	MC_E_CH_UNIT_4_BIT_STAR_1301_STAR =>
		XX_MC_E_CH_UNIT_4_BIT_STAR_1301_STAR
	);


END;
