-- VHDL for IBM SMS ALD group EChRegisters
-- Title: EChRegisters
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/18/2020 5:47:15 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity EChRegisters is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_SET_E1_REG: in STD_LOGIC;
		PS_COPY_E1_BCD_TO_E2_REG: in STD_LOGIC;
		PS_SET_E2_REG: in STD_LOGIC;
		MS_SET_E2_WORD_SEPARATOR: in STD_LOGIC;
		PS_COPY_E1_WM_DOT_C_BIT: in STD_LOGIC;
		PS_COPY_INV_E1_WM_DOT_C_BIT: in STD_LOGIC;
		MS_E1_INPUT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E1_INPUT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E1_REG_NOT_WM_BIT: out STD_LOGIC;
		PS_E1_REG_WM_BIT: out STD_LOGIC;
		PS_E2_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MS_E2_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end EChRegisters;


ARCHITECTURE structural of EChRegisters is

	 signal XX_PS_E2_REG_1_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_2_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_4_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_8_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_A_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_B_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_C_BIT: STD_LOGIC;
	 signal XX_PS_E2_REG_WM_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_1_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_2_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_4_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_8_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_A_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_B_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_C_BIT: STD_LOGIC;
	 signal XX_MS_E2_REG_WM_BIT: STD_LOGIC;

BEGIN


	PS_E2_REG_BUS <= (
		XX_PS_E2_REG_C_BIT,
		XX_PS_E2_REG_WM_BIT,
		XX_PS_E2_REG_B_BIT,
		XX_PS_E2_REG_A_BIT,
		XX_PS_E2_REG_8_BIT,
		XX_PS_E2_REG_4_BIT,
		XX_PS_E2_REG_2_BIT,
		XX_PS_E2_REG_1_BIT);

	MS_E2_REG_BUS <= (
		XX_MS_E2_REG_C_BIT,
		XX_MS_E2_REG_WM_BIT,
		XX_MS_E2_REG_B_BIT,
		XX_MS_E2_REG_A_BIT,
		XX_MS_E2_REG_8_BIT,
		XX_MS_E2_REG_4_BIT,
		XX_MS_E2_REG_2_BIT,
		XX_MS_E2_REG_1_BIT);

Page_15_60_21_1: ENTITY ALD_15_60_21_1_E_CH_REGISTERS_1_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_1_BIT =>
		MS_E1_INPUT_BUS(0),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_1_BIT =>
		PS_E1_INPUT_BUS(0),
	PS_COPY_E1_BCD_TO_E2_REG =>
		PS_COPY_E1_BCD_TO_E2_REG,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	MS_E2_REG_1_BIT =>
		XX_MS_E2_REG_1_BIT,
	PS_E2_REG_1_BIT =>
		XX_PS_E2_REG_1_BIT
	);

Page_15_60_22_1: ENTITY ALD_15_60_22_1_E_CH_REGISTERS_2_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_2_BIT =>
		MS_E1_INPUT_BUS(1),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_2_BIT =>
		PS_E1_INPUT_BUS(1),
	PS_COPY_E1_BCD_TO_E2_REG =>
		PS_COPY_E1_BCD_TO_E2_REG,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	MS_E2_REG_2_BIT =>
		XX_MS_E2_REG_2_BIT,
	PS_E2_REG_2_BIT =>
		XX_PS_E2_REG_2_BIT
	);

Page_15_60_23_1: ENTITY ALD_15_60_23_1_E_CH_REGISTERS_4_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_4_BIT =>
		MS_E1_INPUT_BUS(2),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_4_BIT =>
		PS_E1_INPUT_BUS(2),
	PS_COPY_E1_BCD_TO_E2_REG =>
		PS_COPY_E1_BCD_TO_E2_REG,
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_E2_REG_4_BIT =>
		XX_MS_E2_REG_4_BIT,
	PS_E2_REG_4_BIT =>
		XX_PS_E2_REG_4_BIT
	);

Page_15_60_24_1: ENTITY ALD_15_60_24_1_E_CH_REGISTERS_8_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_8_BIT =>
		MS_E1_INPUT_BUS(3),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_8_BIT =>
		PS_E1_INPUT_BUS(3),
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	PS_COPY_E1_BCD_TO_E2_REG =>
		PS_COPY_E1_BCD_TO_E2_REG,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_E2_REG_8_BIT =>
		XX_MS_E2_REG_8_BIT,
	PS_E2_REG_8_BIT =>
		XX_PS_E2_REG_8_BIT
	);

Page_15_60_25_1: ENTITY ALD_15_60_25_1_E_CH_REGISTERS_A_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_A_BIT =>
		MS_E1_INPUT_BUS(4),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_A_BIT =>
		PS_E1_INPUT_BUS(4),
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	PS_COPY_E1_BCD_TO_E2_REG =>
		PS_COPY_E1_BCD_TO_E2_REG,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_E2_REG_A_BIT =>
		XX_MS_E2_REG_A_BIT,
	PS_E2_REG_A_BIT =>
		XX_PS_E2_REG_A_BIT
	);

Page_15_60_26_1: ENTITY ALD_15_60_26_1_E_CH_REGISTERS_B_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_B_BIT =>
		MS_E1_INPUT_BUS(5),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_B_BIT =>
		PS_E1_INPUT_BUS(5),
	PS_COPY_E1_BCD_TO_E2_REG =>
		PS_COPY_E1_BCD_TO_E2_REG,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	MS_E2_REG_B_BIT =>
		XX_MS_E2_REG_B_BIT,
	PS_E2_REG_B_BIT =>
		XX_PS_E2_REG_B_BIT
	);

Page_15_60_27_1: ENTITY ALD_15_60_27_1_E_CH_REGISTERS_C_BIT_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_C_BIT =>
		MS_E1_INPUT_BUS(7),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_C_BIT =>
		PS_E1_INPUT_BUS(7),
	PS_COPY_E1_WM_DOT_C_BIT =>
		PS_COPY_E1_WM_DOT_C_BIT,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	PS_COPY_INV_E1_WM_DOT_C_BIT =>
		PS_COPY_INV_E1_WM_DOT_C_BIT,
	MS_E2_REG_C_BIT =>
		XX_MS_E2_REG_C_BIT,
	PS_E2_REG_C_BIT =>
		XX_PS_E2_REG_C_BIT
	);

Page_15_60_28_1: ENTITY ALD_15_60_28_1_E_CH_REGISTERS_WM_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_E1_INPUT_WM_BIT =>
		MS_E1_INPUT_BUS(6),
	PS_SET_E1_REG =>
		PS_SET_E1_REG,
	PS_E1_INPUT_WM_BIT =>
		PS_E1_INPUT_BUS(6),
	PS_COPY_E1_WM_DOT_C_BIT =>
		PS_COPY_E1_WM_DOT_C_BIT,
	PS_SET_E2_REG =>
		PS_SET_E2_REG,
	MS_SET_E2_WORD_SEPARATOR =>
		MS_SET_E2_WORD_SEPARATOR,
	PS_COPY_INV_E1_WM_DOT_C_BIT =>
		PS_COPY_INV_E1_WM_DOT_C_BIT,
	PS_E1_REG_NOT_WM_BIT =>
		PS_E1_REG_NOT_WM_BIT,
	PS_E1_REG_WM_BIT =>
		PS_E1_REG_WM_BIT,
	PS_E2_REG_WM_BIT =>
		XX_PS_E2_REG_WM_BIT,
	MS_E2_REG_WM_BIT =>
		XX_MS_E2_REG_WM_BIT
	);


END;
