-- VHDL for IBM SMS ALD group EChUnitNumberRegister
-- Title: EChUnitNumberRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/16/2020 4:51:47 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChUnitNumberRegister is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		PS_PERCENT_OR_COML_AT: in STD_LOGIC;
		MS_E_CH_RESET: in STD_LOGIC;
		PS_ASSEMBLY_CH_NU_C_BIT: in STD_LOGIC;
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_E_CH_U_NU_REG_NOT_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_E_CH_U_NU_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end EChUnitNumberRegister;


ARCHITECTURE structural of EChUnitNumberRegister is

	 signal PS_SET_E_CH_UNIT_NU_REG: STD_LOGIC;

	 signal XX_PS_E_CH_UNIT_NU_REG_NOT_C_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_NOT_8_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_NOT_4_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_NOT_2_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_NOT_1_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_C_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_8_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_4_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_2_BIT: STD_LOGIC;
	 signal XX_PS_E_CH_UNIT_NU_REG_1_BIT: STD_LOGIC;

BEGIN


	PS_E_CH_U_NU_REG_NOT_BUS <= (
		XX_PS_E_CH_UNIT_NU_REG_NOT_C_BIT,
		'0',
		'0',
		'0',
		XX_PS_E_CH_UNIT_NU_REG_NOT_8_BIT,
		XX_PS_E_CH_UNIT_NU_REG_NOT_4_BIT,
		XX_PS_E_CH_UNIT_NU_REG_NOT_2_BIT,
		XX_PS_E_CH_UNIT_NU_REG_NOT_1_BIT);

	PS_E_CH_U_NU_REG_BUS <= (
		XX_PS_E_CH_UNIT_NU_REG_C_BIT,
		'0',
		'0',
		'0',
		XX_PS_E_CH_UNIT_NU_REG_8_BIT,
		XX_PS_E_CH_UNIT_NU_REG_4_BIT,
		XX_PS_E_CH_UNIT_NU_REG_2_BIT,
		XX_PS_E_CH_UNIT_NU_REG_1_BIT);

Page_15_55_01_1: ENTITY ALD_15_55_01_1_E_CH_UNIT_NUMBER_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_ASSEMBLY_CH_NU_C_BIT =>
		PS_ASSEMBLY_CH_NU_C_BIT,
	MS_E_CH_RESET =>
		MS_E_CH_RESET,
	PS_ASSEMBLY_CH_8_BIT =>
		PS_ASSEMBLY_CH_BUS(3),
	PS_ASSEMBLY_CH_4_BIT =>
		PS_ASSEMBLY_CH_BUS(2),
	PS_PERCENT_OR_COML_AT =>
		PS_PERCENT_OR_COML_AT,
	PS_I_RING_5_TIME =>
		PS_I_RING_HDL_BUS(5),
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	PS_E_CH_UNIT_NU_REG_NOT_C_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_NOT_C_BIT,
	PS_E_CH_UNIT_NU_REG_C_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_C_BIT,
	PS_E_CH_UNIT_NU_REG_NOT_8_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_NOT_8_BIT,
	PS_E_CH_UNIT_NU_REG_8_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_8_BIT,
	PS_E_CH_UNIT_NU_REG_NOT_4_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_NOT_4_BIT,
	PS_E_CH_UNIT_NU_REG_4_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_4_BIT,
	PS_SET_E_CH_UNIT_NU_REG =>
		PS_SET_E_CH_UNIT_NU_REG
	);

Page_15_55_02_1: ENTITY ALD_15_55_02_1_E_CH_UNIT_NUMBER_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_ASSEMBLY_CH_2_BIT =>
		PS_ASSEMBLY_CH_BUS(1),
	MS_E_CH_RESET =>
		MS_E_CH_RESET,
	PS_SET_E_CH_UNIT_NU_REG =>
		PS_SET_E_CH_UNIT_NU_REG,
	PS_ASSEMBLY_CH_1_BIT =>
		PS_ASSEMBLY_CH_BUS(0),
	PS_E_CH_UNIT_NU_REG_NOT_2_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_NOT_2_BIT,
	PS_E_CH_UNIT_NU_REG_2_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_2_BIT,
	PS_E_CH_UNIT_NU_REG_NOT_1_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_NOT_1_BIT,
	PS_E_CH_UNIT_NU_REG_1_BIT =>
		XX_PS_E_CH_UNIT_NU_REG_1_BIT
	);


END;