-- VHDL for IBM SMS ALD group AddOutputTranslatorBits2to8
-- Title: AddOutputTranslatorBits2to8
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/29/2020 7:46:16 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddOutputTranslatorBits2to8 is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PB_Q0_DOT_B0_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_B1_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_B2_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_B3_SHIFT: in STD_LOGIC;
		PB_Q2_DOT_B0_OR_B1_SHIFT: in STD_LOGIC;
		PB_Q2_DOT_B2_OR_B3_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B0_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B1_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B2_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_B3_SHIFT: in STD_LOGIC;
		PB_Q6_DOT_B0_OR_B1_SHIFT: in STD_LOGIC;
		PB_Q6_DOT_B2_OR_B3_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B2_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B3_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B0_OR_B1_SHIFT: in STD_LOGIC;
		PB_Q0_DOT_ANY_SHIFT: in STD_LOGIC;
		PB_Q4_DOT_ANY_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B0_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B1_SHIFT: in STD_LOGIC;
		PB_Q8_DOT_B2_OR_B3_SHIFT: in STD_LOGIC;
		PB_ADDER_OUT_NOT_2_BIT: out STD_LOGIC;
		PB_ADDER_OUT_2_BIT: out STD_LOGIC;
		PB_ADDER_OUT_NOT_4_BIT: out STD_LOGIC;
		PB_ADDER_OUT_4_BIT: out STD_LOGIC;
		PB_ADDER_OUT_NOT_8_BIT: out STD_LOGIC;
		PB_ADDER_OUT_8_BIT: out STD_LOGIC);
end AddOutputTranslatorBits2to8;


ARCHITECTURE structural of AddOutputTranslatorBits2to8 is

BEGIN

Page_16_14_07_1: ENTITY ALD_16_14_07_1_ADD_OUTPUT_TRANSLATOR_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PB_Q0_DOT_B1_SHIFT =>
		PB_Q0_DOT_B1_SHIFT,
	PB_Q2_DOT_B2_OR_B3_SHIFT =>
		PB_Q2_DOT_B2_OR_B3_SHIFT,
	PB_Q4_DOT_B0_SHIFT =>
		PB_Q4_DOT_B0_SHIFT,
	PB_Q4_DOT_B1_SHIFT =>
		PB_Q4_DOT_B1_SHIFT,
	PB_Q6_DOT_B2_OR_B3_SHIFT =>
		PB_Q6_DOT_B2_OR_B3_SHIFT,
	PB_Q8_DOT_B3_SHIFT =>
		PB_Q8_DOT_B3_SHIFT,
	PB_Q8_DOT_B0_OR_B1_SHIFT =>
		PB_Q8_DOT_B0_OR_B1_SHIFT,
	PB_Q0_DOT_B0_SHIFT =>
		PB_Q0_DOT_B0_SHIFT,
	PB_Q0_DOT_B2_SHIFT =>
		PB_Q0_DOT_B2_SHIFT,
	PB_Q0_DOT_B3_SHIFT =>
		PB_Q0_DOT_B3_SHIFT,
	PB_Q2_DOT_B0_OR_B1_SHIFT =>
		PB_Q2_DOT_B0_OR_B1_SHIFT,
	PB_Q4_DOT_B2_SHIFT =>
		PB_Q4_DOT_B2_SHIFT,
	PB_Q4_DOT_B3_SHIFT =>
		PB_Q4_DOT_B3_SHIFT,
	PB_Q6_DOT_B0_OR_B1_SHIFT =>
		PB_Q6_DOT_B0_OR_B1_SHIFT,
	PB_Q8_DOT_B2_SHIFT =>
		PB_Q8_DOT_B2_SHIFT,
	PB_ADDER_OUT_NOT_2_BIT =>
		PB_ADDER_OUT_NOT_2_BIT,
	PB_ADDER_OUT_2_BIT =>
		PB_ADDER_OUT_2_BIT
	);

Page_16_14_08_1: ENTITY ALD_16_14_08_1_ADD_OUTPUT_TRANSLATOR_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PB_Q0_DOT_ANY_SHIFT =>
		PB_Q0_DOT_ANY_SHIFT,
	PB_Q2_DOT_B0_OR_B1_SHIFT =>
		PB_Q2_DOT_B0_OR_B1_SHIFT,
	PB_Q6_DOT_B2_OR_B3_SHIFT =>
		PB_Q6_DOT_B2_OR_B3_SHIFT,
	PB_Q8_DOT_B0_SHIFT =>
		PB_Q8_DOT_B0_SHIFT,
	PB_Q8_DOT_B1_SHIFT =>
		PB_Q8_DOT_B1_SHIFT,
	PB_Q8_DOT_B2_OR_B3_SHIFT =>
		PB_Q8_DOT_B2_OR_B3_SHIFT,
	PB_Q2_DOT_B2_OR_B3_SHIFT =>
		PB_Q2_DOT_B2_OR_B3_SHIFT,
	PB_Q4_DOT_ANY_SHIFT =>
		PB_Q4_DOT_ANY_SHIFT,
	PB_Q6_DOT_B0_OR_B1_SHIFT =>
		PB_Q6_DOT_B0_OR_B1_SHIFT,
	PB_ADDER_OUT_NOT_4_BIT =>
		PB_ADDER_OUT_NOT_4_BIT,
	PB_ADDER_OUT_4_BIT =>
		PB_ADDER_OUT_4_BIT
	);

Page_16_14_09_1: ENTITY ALD_16_14_09_1_ADD_OUTPUT_TRANSLATOR_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PB_Q0_DOT_B2_SHIFT =>
		PB_Q0_DOT_B2_SHIFT,
	PB_Q0_DOT_B1_SHIFT =>
		PB_Q0_DOT_B1_SHIFT,
	PB_Q2_DOT_B0_OR_B1_SHIFT =>
		PB_Q2_DOT_B0_OR_B1_SHIFT,
	PB_Q2_DOT_B2_OR_B3_SHIFT =>
		PB_Q2_DOT_B2_OR_B3_SHIFT,
	PB_Q0_DOT_B3_SHIFT =>
		PB_Q0_DOT_B3_SHIFT,
	PB_Q4_DOT_ANY_SHIFT =>
		PB_Q4_DOT_ANY_SHIFT,
	PB_Q6_DOT_B0_OR_B1_SHIFT =>
		PB_Q6_DOT_B0_OR_B1_SHIFT,
	PB_Q8_DOT_B3_SHIFT =>
		PB_Q8_DOT_B3_SHIFT,
	PB_Q0_DOT_B0_SHIFT =>
		PB_Q0_DOT_B0_SHIFT,
	PB_Q6_DOT_B2_OR_B3_SHIFT =>
		PB_Q6_DOT_B2_OR_B3_SHIFT,
	PB_Q8_DOT_B2_SHIFT =>
		PB_Q8_DOT_B2_SHIFT,
	PB_Q8_DOT_B0_OR_B1_SHIFT =>
		PB_Q8_DOT_B0_OR_B1_SHIFT,
	PB_ADDER_OUT_NOT_8_BIT =>
		PB_ADDER_OUT_NOT_8_BIT,
	PB_ADDER_OUT_8_BIT =>
		PB_ADDER_OUT_8_BIT
	);


END;
