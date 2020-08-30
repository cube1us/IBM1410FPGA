-- VHDL for IBM SMS ALD group BCDTo2Of5NumericTranslator
-- Title: BCDTo2Of5NumericTranslator
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/30/2020 10:17:00 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity BCDTo2Of5NumericTranslator is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_ASSEMBLY_CH_NU_C_BIT: in STD_LOGIC;
		PS_ASSEMBLY_CH_NOT_NU_C_BIT: in STD_LOGIC;
		PS_SET_NU_TO_ADDR_CH: in STD_LOGIC;
		PS_1ST_ADDRESS: in STD_LOGIC;
		MS_1401_MODE_1: in STD_LOGIC;
		MS_PERCENT_TYPE_OP_CODES: in STD_LOGIC;
		MS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		MS_ADDR_CH_NU_TSLTR_1_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_3_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_5_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_7_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_2_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_4_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_6_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_8_LINE: out STD_LOGIC;
		MS_PERCENT_CONVERSION: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_9_LINE: out STD_LOGIC;
		MS_ADDR_CH_NU_TSLTR_0_LINE: out STD_LOGIC);
end BCDTo2Of5NumericTranslator;


ARCHITECTURE structural of BCDTo2Of5NumericTranslator is

BEGIN

Page_14_42_03_1: ENTITY ALD_14_42_03_1_BCD_TO_TWO_OUT_OF_FIVE_NU_TSLTR
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_ASSEMBLY_CH_4_BIT =>
		MS_ASSEMBLY_CH_BUS(2),
	MS_ASSEMBLY_CH_2_BIT =>
		MS_ASSEMBLY_CH_BUS(1),
	PS_ASSEMBLY_CH_1_BIT =>
		PS_ASSEMBLY_CH_BUS(0),
	PS_ASSEMBLY_CH_NU_C_BIT =>
		PS_ASSEMBLY_CH_NU_C_BIT,
	PS_ASSEMBLY_CH_NOT_NU_C_BIT =>
		PS_ASSEMBLY_CH_NOT_NU_C_BIT,
	PS_ASSEMBLY_CH_2_BIT =>
		PS_ASSEMBLY_CH_BUS(1),
	MS_ASSEMBLY_CH_8_BIT =>
		MS_ASSEMBLY_CH_BUS(3),
	PS_ASSEMBLY_CH_4_BIT =>
		PS_ASSEMBLY_CH_BUS(2),
	PS_SET_NU_TO_ADDR_CH =>
		PS_SET_NU_TO_ADDR_CH,
	MS_ADDR_CH_NU_TSLTR_1_LINE =>
		MS_ADDR_CH_NU_TSLTR_1_LINE,
	MS_ADDR_CH_NU_TSLTR_3_LINE =>
		MS_ADDR_CH_NU_TSLTR_3_LINE,
	MS_ADDR_CH_NU_TSLTR_5_LINE =>
		MS_ADDR_CH_NU_TSLTR_5_LINE,
	MS_ADDR_CH_NU_TSLTR_7_LINE =>
		MS_ADDR_CH_NU_TSLTR_7_LINE
	);

Page_14_42_04_1: ENTITY ALD_14_42_04_1_BCD_TO_TO_OUT_OF_FIVE_NU_TSLTR
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_SET_NU_TO_ADDR_CH =>
		PS_SET_NU_TO_ADDR_CH,
	PS_ASSEMBLY_CH_2_BIT =>
		PS_ASSEMBLY_CH_BUS(1),
	MS_ASSEMBLY_CH_8_BIT =>
		MS_ASSEMBLY_CH_BUS(3),
	MS_ASSEMBLY_CH_1_BIT =>
		MS_ASSEMBLY_CH_BUS(0),
	PS_ASSEMBLY_CH_NOT_NU_C_BIT =>
		PS_ASSEMBLY_CH_NOT_NU_C_BIT,
	PS_ASSEMBLY_CH_4_BIT =>
		PS_ASSEMBLY_CH_BUS(2),
	MS_ASSEMBLY_CH_4_BIT =>
		MS_ASSEMBLY_CH_BUS(2),
	MS_ASSEMBLY_CH_2_BIT =>
		MS_ASSEMBLY_CH_BUS(1),
	PS_ASSEMBLY_CH_NU_C_BIT =>
		PS_ASSEMBLY_CH_NU_C_BIT,
	PS_ASSEMBLY_CH_8_BIT =>
		PS_ASSEMBLY_CH_BUS(3),
	MS_ADDR_CH_NU_TSLTR_2_LINE =>
		MS_ADDR_CH_NU_TSLTR_2_LINE,
	MS_ADDR_CH_NU_TSLTR_4_LINE =>
		MS_ADDR_CH_NU_TSLTR_4_LINE,
	MS_ADDR_CH_NU_TSLTR_6_LINE =>
		MS_ADDR_CH_NU_TSLTR_6_LINE,
	MS_ADDR_CH_NU_TSLTR_8_LINE =>
		MS_ADDR_CH_NU_TSLTR_8_LINE
	);

Page_14_42_05_1: ENTITY ALD_14_42_05_1_BCD_TO_TWO_OUT_OF_FIVE_TSLTR_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_1ST_ADDRESS =>
		PS_1ST_ADDRESS,
	MS_PERCENT_TYPE_OP_CODES =>
		MS_PERCENT_TYPE_OP_CODES,
	MS_1401_MODE_1 =>
		MS_1401_MODE_1,
	PS_ASSEMBLY_CH_4_BIT =>
		PS_ASSEMBLY_CH_BUS(2),
	MS_ASSEMBLY_CH_2_BIT =>
		MS_ASSEMBLY_CH_BUS(1),
	PS_ASSEMBLY_CH_1_BIT =>
		PS_ASSEMBLY_CH_BUS(0),
	PS_SET_NU_TO_ADDR_CH =>
		PS_SET_NU_TO_ADDR_CH,
	MS_ASSEMBLY_CH_4_BIT =>
		MS_ASSEMBLY_CH_BUS(2),
	MS_ASSEMBLY_CH_1_BIT =>
		MS_ASSEMBLY_CH_BUS(0),
	PS_ASSEMBLY_CH_8_BIT =>
		PS_ASSEMBLY_CH_BUS(3),
	PS_ASSEMBLY_CH_2_BIT =>
		PS_ASSEMBLY_CH_BUS(1),
	PS_ASSEMBLY_CH_NU_C_BIT =>
		PS_ASSEMBLY_CH_NU_C_BIT,
	MS_PERCENT_CONVERSION =>
		MS_PERCENT_CONVERSION,
	MS_ADDR_CH_NU_TSLTR_9_LINE =>
		MS_ADDR_CH_NU_TSLTR_9_LINE,
	MS_ADDR_CH_NU_TSLTR_0_LINE =>
		MS_ADDR_CH_NU_TSLTR_0_LINE
	);


END;
