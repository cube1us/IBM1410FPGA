-- VHDL for IBM SMS ALD group FChUnitSelectRegister
-- Title: FChUnitSelectRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/18/2020 9:22:29 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChUnitSelectRegister is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		MS_F_CH_RESET: in STD_LOGIC;
		PS_ASSEMBLY_CH_C_CHAR_BIT: in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK: in STD_LOGIC;
		MS_F_CH_RESET_1: in STD_LOGIC;
		MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR: in STD_LOGIC;
		MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR: in STD_LOGIC;
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_F_CH_U_SEL_REG_NOT_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_F_CH_U_SEL_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end FChUnitSelectRegister;


ARCHITECTURE structural of FChUnitSelectRegister is

	 signal PS_SET_F_CH_UNIT_SEL_REG: STD_LOGIC;

	 signal XX_PS_F_CH_U_SEL_REG_NOT_8_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_NOT_B_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_NOT_C_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_NOT_A_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_NOT_1_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_NOT_2_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_NOT_4_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_A_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_C_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_B_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_8_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_4_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_2_BIT: STD_LOGIC;
	 signal XX_PS_F_CH_U_SEL_REG_1_BIT: STD_LOGIC;

BEGIN


	PS_F_CH_U_SEL_REG_NOT_BUS <= (
		XX_PS_F_CH_U_SEL_REG_NOT_C_BIT,
		'0',
		XX_PS_F_CH_U_SEL_REG_NOT_B_BIT,
		XX_PS_F_CH_U_SEL_REG_NOT_A_BIT,
		XX_PS_F_CH_U_SEL_REG_NOT_8_BIT,
		XX_PS_F_CH_U_SEL_REG_NOT_4_BIT,
		XX_PS_F_CH_U_SEL_REG_NOT_2_BIT,
		XX_PS_F_CH_U_SEL_REG_NOT_1_BIT);

	PS_F_CH_U_SEL_REG_BUS <= (
		XX_PS_F_CH_U_SEL_REG_C_BIT,
		'0',
		XX_PS_F_CH_U_SEL_REG_B_BIT,
		XX_PS_F_CH_U_SEL_REG_A_BIT,
		XX_PS_F_CH_U_SEL_REG_8_BIT,
		XX_PS_F_CH_U_SEL_REG_4_BIT,
		XX_PS_F_CH_U_SEL_REG_2_BIT,
		XX_PS_F_CH_U_SEL_REG_1_BIT);

Page_15_56_08_1: ENTITY ALD_15_56_08_1_F_CH_UNIT_SELECT_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_F_CH_RESET =>
		MS_F_CH_RESET,
	MS_CONTROL_REG_DISABLE =>
		MS_CONTROL_REG_DISABLE,
	PS_ASSEMBLY_CH_C_CHAR_BIT =>
		PS_ASSEMBLY_CH_C_CHAR_BIT,
	PS_SET_F_CH_UNIT_SEL_REG =>
		PS_SET_F_CH_UNIT_SEL_REG,
	PS_ASSEMBLY_CH_B_BIT =>
		PS_ASSEMBLY_CH_BUS(5),
	PS_ASSEMBLY_CH_A_BIT =>
		PS_ASSEMBLY_CH_BUS(4),
	PS_ASSEMBLY_CH_8_BIT =>
		PS_ASSEMBLY_CH_BUS(3),
	PS_F_CH_U_SEL_REG_C_BIT =>
		XX_PS_F_CH_U_SEL_REG_C_BIT,
	PS_F_CH_U_SEL_REG_NOT_C_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_C_BIT,
	PS_F_CH_U_SEL_REG_NOT_B_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_B_BIT,
	PS_F_CH_U_SEL_REG_B_BIT =>
		XX_PS_F_CH_U_SEL_REG_B_BIT,
	PS_F_CH_U_SEL_REG_NOT_A_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_A_BIT,
	PS_F_CH_U_SEL_REG_A_BIT =>
		XX_PS_F_CH_U_SEL_REG_A_BIT,
	PS_F_CH_U_SEL_REG_NOT_8_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_8_BIT,
	PS_F_CH_U_SEL_REG_8_BIT =>
		XX_PS_F_CH_U_SEL_REG_8_BIT
	);

Page_15_56_09_1: ENTITY ALD_15_56_09_1_F_CH_UNIT_SELECT_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_ASSEMBLY_CH_4_BIT =>
		PS_ASSEMBLY_CH_BUS(2),
	MS_F_CH_RESET_1 =>
		MS_F_CH_RESET_1,
	MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR =>
		MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR,
	PS_ASSEMBLY_CH_2_BIT =>
		PS_ASSEMBLY_CH_BUS(1),
	MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR =>
		MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR,
	PS_ASSEMBLY_CH_1_BIT =>
		PS_ASSEMBLY_CH_BUS(0),
	PS_LOZENGE_OR_ASTERISK =>
		PS_LOZENGE_OR_ASTERISK,
	PS_I_RING_4_TIME =>
		PS_I_RING_HDL_BUS(4),
	PS_LAST_LOGIC_GATE_1 =>
		PS_LAST_LOGIC_GATE_1,
	PS_F_CH_U_SEL_REG_NOT_4_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_4_BIT,
	PS_F_CH_U_SEL_REG_4_BIT =>
		XX_PS_F_CH_U_SEL_REG_4_BIT,
	PS_F_CH_U_SEL_REG_NOT_2_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_2_BIT,
	PS_F_CH_U_SEL_REG_2_BIT =>
		XX_PS_F_CH_U_SEL_REG_2_BIT,
	PS_F_CH_U_SEL_REG_NOT_1_BIT =>
		XX_PS_F_CH_U_SEL_REG_NOT_1_BIT,
	PS_F_CH_U_SEL_REG_1_BIT =>
		XX_PS_F_CH_U_SEL_REG_1_BIT,
	PS_SET_F_CH_UNIT_SEL_REG =>
		PS_SET_F_CH_UNIT_SEL_REG
	);


END;
