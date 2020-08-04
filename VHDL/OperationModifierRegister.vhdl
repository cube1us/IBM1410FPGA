-- VHDL for IBM SMS ALD group OperationModifierRegister
-- Title: OperationModifierRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/20/2020 12:30:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity OperationModifierRegister is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_OP_REG_1401_C_BIT: in STD_LOGIC;
		MS_OP_REG_A_BIT: in STD_LOGIC;
		MS_RESET_OP_MOD_REG: in STD_LOGIC;
		PS_1401_D_OR_P_OR_Y_OP_CODES: in STD_LOGIC;
		PS_1401_DATA_MOVE_SET_OP_MOD: in STD_LOGIC;
		PS_SET_OP_MOD_REG: in STD_LOGIC;
		PS_1401_P_OP_CODE: in STD_LOGIC;
		PS_1401_L_NOT_PERCENT_OP_CODE: in STD_LOGIC;
		MS_1401_D_OP_CODE: in STD_LOGIC;
		MS_1401_Y_OP_CODE: in STD_LOGIC;
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_NOT_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		LAMPS_OPMOD_CE: out STD_LOGIC_VECTOR (7 downTo 0));
end OperationModifierRegister;


ARCHITECTURE structural of OperationModifierRegister is

	 signal XX_PS_OP_MOD_REG_NOT_B_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_NOT_C_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_NOT_8_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_NOT_A_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_NOT_4_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_NOT_2_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_NOT_1_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_B_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_C_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_A_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_8_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_4_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_1_BIT: STD_LOGIC;
	 signal XX_PS_OP_MOD_REG_2_BIT: STD_LOGIC;
	 signal XX_LAMP_11C8D08: STD_LOGIC;
	 signal XX_LAMP_11C8E08: STD_LOGIC;
	 signal XX_LAMP_11C8F08: STD_LOGIC;
	 signal XX_LAMP_11C8G08: STD_LOGIC;
	 signal XX_LAMP_11C8H08: STD_LOGIC;
	 signal XX_LAMP_11C8J08: STD_LOGIC;
	 signal XX_LAMP_11C8K08: STD_LOGIC;

BEGIN


	PS_OP_MOD_REG_NOT_BUS <= (
		XX_PS_OP_MOD_REG_NOT_C_BIT,
		'0',
		XX_PS_OP_MOD_REG_NOT_B_BIT,
		XX_PS_OP_MOD_REG_NOT_A_BIT,
		XX_PS_OP_MOD_REG_NOT_8_BIT,
		XX_PS_OP_MOD_REG_NOT_4_BIT,
		XX_PS_OP_MOD_REG_NOT_2_BIT,
		XX_PS_OP_MOD_REG_NOT_1_BIT);

	PS_OP_MOD_REG_BUS <= (
		XX_PS_OP_MOD_REG_C_BIT,
		'0',
		XX_PS_OP_MOD_REG_B_BIT,
		XX_PS_OP_MOD_REG_A_BIT,
		XX_PS_OP_MOD_REG_8_BIT,
		XX_PS_OP_MOD_REG_4_BIT,
		XX_PS_OP_MOD_REG_2_BIT,
		XX_PS_OP_MOD_REG_1_BIT);

	LAMPS_OPMOD_CE <= (
		XX_LAMP_11C8D08,
		'0',
		XX_LAMP_11C8E08,
		XX_LAMP_11C8F08,
		XX_LAMP_11C8G08,
		XX_LAMP_11C8H08,
		XX_LAMP_11C8J08,
		XX_LAMP_11C8K08);

Page_13_12_01_1: ENTITY ALD_13_12_01_1_OPERATION_MODIFIER_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_B_CH_NOT_C_BIT =>
		PS_B_CH_NOT_BUS(7),
	PS_B_CH_C_BIT =>
		PS_B_CH_BUS(7),
	MS_RESET_OP_MOD_REG =>
		MS_RESET_OP_MOD_REG,
	PS_1401_D_OR_P_OR_Y_OP_CODES =>
		PS_1401_D_OR_P_OR_Y_OP_CODES,
	PS_1401_DATA_MOVE_SET_OP_MOD =>
		PS_1401_DATA_MOVE_SET_OP_MOD,
	PS_SET_OP_MOD_REG =>
		PS_SET_OP_MOD_REG,
	PS_OP_REG_1401_C_BIT =>
		PS_OP_REG_1401_C_BIT,
	MS_OP_REG_A_BIT =>
		MS_OP_REG_A_BIT,
	PS_B_CH_NOT_B_BIT =>
		PS_B_CH_NOT_BUS(5),
	PS_B_CH_B_BIT =>
		PS_B_CH_BUS(5),
	PS_OP_MOD_REG_C_BIT =>
		XX_PS_OP_MOD_REG_C_BIT,
	PS_OP_MOD_REG_NOT_C_BIT =>
		XX_PS_OP_MOD_REG_NOT_C_BIT,
	PS_OP_MOD_REG_B_BIT =>
		XX_PS_OP_MOD_REG_B_BIT,
	PS_OP_MOD_REG_NOT_B_BIT =>
		XX_PS_OP_MOD_REG_NOT_B_BIT,
	LAMP_11C8D08 =>
		XX_LAMP_11C8D08,
	LAMP_11C8E08 =>
		XX_LAMP_11C8E08
	);

Page_13_12_02_1: ENTITY ALD_13_12_02_1_OPERATION_MODIFIER_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_B_CH_NOT_A_BIT =>
		PS_B_CH_NOT_BUS(4),
	PS_B_CH_A_BIT =>
		PS_B_CH_BUS(4),
	PS_OP_REG_B_BIT =>
		PS_OP_REG_BUS(5),
	MS_OP_REG_A_BIT =>
		MS_OP_REG_A_BIT,
	PS_B_CH_NOT_8_BIT =>
		PS_B_CH_NOT_BUS(3),
	MS_RESET_OP_MOD_REG =>
		MS_RESET_OP_MOD_REG,
	PS_B_CH_8_BIT =>
		PS_B_CH_BUS(3),
	PS_SET_OP_MOD_REG =>
		PS_SET_OP_MOD_REG,
	PS_1401_P_OP_CODE =>
		PS_1401_P_OP_CODE,
	PS_1401_DATA_MOVE_SET_OP_MOD =>
		PS_1401_DATA_MOVE_SET_OP_MOD,
	PS_B_CH_NOT_4_BIT =>
		PS_B_CH_NOT_BUS(2),
	PS_B_CH_4_BIT =>
		PS_B_CH_BUS(2),
	PS_1401_L_NOT_PERCENT_OP_CODE =>
		PS_1401_L_NOT_PERCENT_OP_CODE,
	PS_OP_MOD_REG_A_BIT =>
		XX_PS_OP_MOD_REG_A_BIT,
	PS_OP_MOD_REG_NOT_A_BIT =>
		XX_PS_OP_MOD_REG_NOT_A_BIT,
	PS_OP_MOD_REG_8_BIT =>
		XX_PS_OP_MOD_REG_8_BIT,
	PS_OP_MOD_REG_NOT_8_BIT =>
		XX_PS_OP_MOD_REG_NOT_8_BIT,
	PS_OP_MOD_REG_4_BIT =>
		XX_PS_OP_MOD_REG_4_BIT,
	PS_OP_MOD_REG_NOT_4_BIT =>
		XX_PS_OP_MOD_REG_NOT_4_BIT,
	LAMP_11C8F08 =>
		XX_LAMP_11C8F08,
	LAMP_11C8G08 =>
		XX_LAMP_11C8G08,
	LAMP_11C8H08 =>
		XX_LAMP_11C8H08
	);

Page_13_12_03_1: ENTITY ALD_13_12_03_1_OPERATION_MODIFIER_REGISTER
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_B_CH_NOT_2_BIT =>
		PS_B_CH_NOT_BUS(1),
	PS_B_CH_2_BIT =>
		PS_B_CH_BUS(1),
	MS_1401_D_OP_CODE =>
		MS_1401_D_OP_CODE,
	MS_RESET_OP_MOD_REG =>
		MS_RESET_OP_MOD_REG,
	PS_SET_OP_MOD_REG =>
		PS_SET_OP_MOD_REG,
	PS_1401_DATA_MOVE_SET_OP_MOD =>
		PS_1401_DATA_MOVE_SET_OP_MOD,
	PS_B_CH_NOT_1_BIT =>
		PS_B_CH_NOT_BUS(0),
	PS_B_CH_1_BIT =>
		PS_B_CH_BUS(0),
	MS_1401_Y_OP_CODE =>
		MS_1401_Y_OP_CODE,
	PS_OP_MOD_REG_2_BIT =>
		XX_PS_OP_MOD_REG_2_BIT,
	PS_OP_MOD_REG_NOT_2_BIT =>
		XX_PS_OP_MOD_REG_NOT_2_BIT,
	PS_OP_MOD_REG_1_BIT =>
		XX_PS_OP_MOD_REG_1_BIT,
	PS_OP_MOD_REG_NOT_1_BIT =>
		XX_PS_OP_MOD_REG_NOT_1_BIT,
	LAMP_11C8J08 =>
		XX_LAMP_11C8J08,
	LAMP_11C8K08 =>
		XX_LAMP_11C8K08
	);


END;