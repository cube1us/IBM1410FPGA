-- VHDL for IBM SMS ALD group ConsoleAssembly
-- Title: ConsoleAssembly
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/25/2020 10:18:39 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ConsoleAssembly is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE: in STD_LOGIC;
		PS_CONS_B_DATA_CH_GATE: in STD_LOGIC;
		PS_CONS_E2_REG_GATE: in STD_LOGIC;
		MS_SPECIAL_CHAR_A_C_E_I: in STD_LOGIC;
		MS_SPECIAL_CHAR_R: in STD_LOGIC;
		MS_SPECIAL_CHAR_POUND: in STD_LOGIC;
		MS_SPECIAL_CHAR_S: in STD_LOGIC;
		MS_SPECIAL_CHAR_C: in STD_LOGIC;
		MS_SPECIAL_CHAR_B: in STD_LOGIC;
		MS_SPECIAL_CHAR_E: in STD_LOGIC;
		MS_SPECIAL_CHAR_D: in STD_LOGIC;
		MS_SPECIAL_CHAR_I: in STD_LOGIC;
		PS_AR_CH_VC_GROUP_ONE: in STD_LOGIC;
		PS_AR_CH_VC_GROUP_TWO: in STD_LOGIC;
		PS_ASSEMBLY_CH_C_CHAR_BIT: in STD_LOGIC;
		PS_B_CH_WM_BIT_1: in STD_LOGIC;
		PS_OP_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_AR_EXIT_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_CH_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_DATA_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_E_CH_U_NU_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E_CH_U_SEL_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F_CH_U_NU_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F_CH_U_SEL_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_E2_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_CONS_MX_POS_BUS: in STD_LOGIC_VECTOR (35 downTo 19);
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS: in STD_LOGIC_VECTOR (3 downTo 0);
		PS_CONS_OUTPUT_WM_BIT: out STD_LOGIC;
		PS_CONSOLE_OUTPUT_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end ConsoleAssembly;


ARCHITECTURE structural of ConsoleAssembly is

	 signal XX_PS_CONSOLE_OUTPUT_1_BIT: STD_LOGIC;
	 signal XX_PS_CONSOLE_OUTPUT_2_BIT: STD_LOGIC;
	 signal XX_PS_CONSOLE_OUTPUT_4_BIT: STD_LOGIC;
	 signal XX_PS_CONSOLE_OUTPUT_8_BIT: STD_LOGIC;
	 signal XX_PS_CONSOLE_OUTPUT_A_BIT: STD_LOGIC;
	 signal XX_PS_CONSOLE_OUTPUT_B_BIT: STD_LOGIC;
	 signal XX_PS_CONSOLE_OUTPUT_C_BIT: STD_LOGIC;

BEGIN


	PS_CONSOLE_OUTPUT_BUS <= (
		XX_PS_CONSOLE_OUTPUT_C_BIT,
		'0',
		XX_PS_CONSOLE_OUTPUT_B_BIT,
		XX_PS_CONSOLE_OUTPUT_A_BIT,
		XX_PS_CONSOLE_OUTPUT_8_BIT,
		XX_PS_CONSOLE_OUTPUT_4_BIT,
		XX_PS_CONSOLE_OUTPUT_2_BIT,
		XX_PS_CONSOLE_OUTPUT_1_BIT);

Page_42_10_01_1: ENTITY ALD_42_10_01_1_CONSOLE_ASSEMBLY_1_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_ASSEMBLY_CH_1_BIT =>
		PS_ASSEMBLY_CH_BUS(0),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_AR_EXIT_CH_1_BIT =>
		PS_AR_EXIT_CH_BUS(0),
	PS_E_CH_U_SEL_REG_1_BIT =>
		PS_E_CH_U_SEL_REG_BUS(0),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_REG_1_BIT =>
		PS_OP_REG_BUS(0),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_UNIT_NU_REG_1_BIT =>
		PS_E_CH_U_NU_REG_BUS(0),
	PS_CONS_MX_27_POS =>
		PS_CONS_MX_POS_BUS(27),
	PS_OP_MOD_REG_1_BIT =>
		PS_OP_MOD_REG_BUS(0),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_F_CH_U_SEL_REG_1_BIT =>
		PS_F_CH_U_SEL_REG_BUS(0),
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	PS_A_DATA_REG_1_BIT =>
		PS_A_DATA_REG_BUS(0),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_F_CH_UNIT_NU_REG_1_BIT =>
		PS_F_CH_U_NU_REG_BUS(0),
	PS_CONS_MX_29_POS =>
		PS_CONS_MX_POS_BUS(29),
	PS_B_CH_1_BIT =>
		PS_B_CH_BUS(0),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_E2_REG_1_BIT =>
		PS_E2_REG_BUS(0),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_A_C_E_I =>
		MS_SPECIAL_CHAR_A_C_E_I,
	MS_SPECIAL_CHAR_R =>
		MS_SPECIAL_CHAR_R,
	MS_SPECIAL_CHAR_POUND =>
		MS_SPECIAL_CHAR_POUND,
	PS_CONSOLE_OUTPUT_1_BIT =>
		XX_PS_CONSOLE_OUTPUT_1_BIT
	);

Page_42_10_02_1: ENTITY ALD_42_10_02_1_CONSOLE_ASSEMBLY_2_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_AR_EXIT_CH_2_BIT =>
		PS_AR_EXIT_CH_BUS(1),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_OP_REG_2_BIT =>
		PS_OP_REG_BUS(1),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_U_SEL_REG_2_BIT =>
		PS_E_CH_U_SEL_REG_BUS(1),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_MOD_REG_2_BIT =>
		PS_OP_MOD_REG_BUS(1),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_E_CH_UNIT_NU_REG_2_BIT =>
		PS_E_CH_U_NU_REG_BUS(1),
	PS_CONS_MX_27_POS =>
		PS_CONS_MX_POS_BUS(27),
	PS_A_DATA_REG_2_BIT =>
		PS_A_DATA_REG_BUS(1),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_F_CH_U_SEL_REG_2_BIT =>
		PS_F_CH_U_SEL_REG_BUS(1),
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	PS_B_CH_2_BIT =>
		PS_B_CH_BUS(1),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_ASSEMBLY_CH_2_BIT =>
		PS_ASSEMBLY_CH_BUS(1),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	MS_SPECIAL_CHAR_S =>
		MS_SPECIAL_CHAR_S,
	PS_F_CH_UNIT_NU_REG_2_BIT =>
		PS_F_CH_U_NU_REG_BUS(1),
	PS_CONS_MX_29_POS =>
		PS_CONS_MX_POS_BUS(29),
	PS_E2_REG_2_BIT =>
		PS_E2_REG_BUS(1),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_C =>
		MS_SPECIAL_CHAR_C,
	MS_SPECIAL_CHAR_B =>
		MS_SPECIAL_CHAR_B,
	MS_SPECIAL_CHAR_POUND =>
		MS_SPECIAL_CHAR_POUND,
	PS_CONSOLE_OUTPUT_2_BIT =>
		XX_PS_CONSOLE_OUTPUT_2_BIT
	);

Page_42_10_03_1: ENTITY ALD_42_10_03_1_CONSOLE_ASSEMBLY_4_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_AR_CH_4_BIT_STAR_TRANSLATOR_STAR =>
		PS_AR_CH_STAR_TRANSLATOR_STAR_BUS(2),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_OP_REG_4_BIT =>
		PS_OP_REG_BUS(2),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_U_SEL_REG_4_BIT =>
		PS_E_CH_U_SEL_REG_BUS(2),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_MOD_REG_4_BIT =>
		PS_OP_MOD_REG_BUS(2),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_E_CH_UNIT_NU_REG_4_BIT =>
		PS_E_CH_U_NU_REG_BUS(2),
	PS_CONS_MX_27_POS =>
		PS_CONS_MX_POS_BUS(27),
	PS_A_DATA_REG_4_BIT =>
		PS_A_DATA_REG_BUS(2),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_F_CH_U_SEL_REG_4_BIT =>
		PS_F_CH_U_SEL_REG_BUS(2),
	PS_B_CH_4_BIT =>
		PS_B_CH_BUS(2),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	PS_ASSEMBLY_CH_4_BIT =>
		PS_ASSEMBLY_CH_BUS(2),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_F_CH_UNIT_NU_REG_4_BIT =>
		PS_F_CH_U_NU_REG_BUS(2),
	PS_CONS_MX_29_POS =>
		PS_CONS_MX_POS_BUS(29),
	PS_E2_REG_4_BIT =>
		PS_E2_REG_BUS(2),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_E =>
		MS_SPECIAL_CHAR_E,
	MS_SPECIAL_CHAR_D =>
		MS_SPECIAL_CHAR_D,
	PS_CONSOLE_OUTPUT_4_BIT =>
		XX_PS_CONSOLE_OUTPUT_4_BIT
	);

Page_42_10_04_1: ENTITY ALD_42_10_04_1_CONSOLE_ASSEMBLY_8_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_AR_EXIT_CH_8_BIT =>
		PS_AR_EXIT_CH_BUS(3),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_OP_REG_8_BIT =>
		PS_OP_REG_BUS(3),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_U_SEL_REG_8_BIT =>
		PS_E_CH_U_SEL_REG_BUS(3),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_MOD_REG_8_BIT =>
		PS_OP_MOD_REG_BUS(3),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_E_CH_UNIT_NU_REG_8_BIT =>
		PS_E_CH_U_NU_REG_BUS(3),
	PS_CONS_MX_27_POS =>
		PS_CONS_MX_POS_BUS(27),
	PS_A_DATA_REG_8_BIT =>
		PS_A_DATA_REG_BUS(3),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_F_CH_U_SEL_REG_8_BIT =>
		PS_F_CH_U_SEL_REG_BUS(3),
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	PS_B_CH_8_BIT =>
		PS_B_CH_BUS(3),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_ASSEMBLY_CH_8_BIT =>
		PS_ASSEMBLY_CH_BUS(3),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_F_CH_UNIT_NU_REG_8_BIT =>
		PS_F_CH_U_NU_REG_BUS(3),
	PS_CONS_MX_29_POS =>
		PS_CONS_MX_POS_BUS(29),
	PS_E2_REG_8_BIT =>
		PS_E2_REG_BUS(3),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_I =>
		MS_SPECIAL_CHAR_I,
	MS_SPECIAL_CHAR_R =>
		MS_SPECIAL_CHAR_R,
	MS_SPECIAL_CHAR_POUND =>
		MS_SPECIAL_CHAR_POUND,
	PS_CONSOLE_OUTPUT_8_BIT =>
		XX_PS_CONSOLE_OUTPUT_8_BIT
	);

Page_42_10_05_1: ENTITY ALD_42_10_05_1_CONSOLE_ASSEMBLY_A_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_OP_REG_A_BIT =>
		PS_OP_REG_BUS(4),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_U_SEL_REG_A_BIT =>
		PS_E_CH_U_SEL_REG_BUS(4),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_MOD_REG_A_BIT =>
		PS_OP_MOD_REG_BUS(4),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_B_CH_A_BIT =>
		PS_B_CH_BUS(4),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_A_DATA_REG_A_BIT =>
		PS_A_DATA_REG_BUS(4),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_ASSEMBLY_CH_A_BIT =>
		PS_ASSEMBLY_CH_BUS(4),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_F_CH_U_SEL_REG_A_BIT =>
		PS_F_CH_U_SEL_REG_BUS(4),
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	MS_SPECIAL_CHAR_D =>
		MS_SPECIAL_CHAR_D,
	PS_E2_REG_A_BIT =>
		PS_E2_REG_BUS(4),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_S =>
		MS_SPECIAL_CHAR_S,
	MS_SPECIAL_CHAR_A_C_E_I =>
		MS_SPECIAL_CHAR_A_C_E_I,
	MS_SPECIAL_CHAR_B =>
		MS_SPECIAL_CHAR_B,
	PS_AR_CH_VC_GROUP_TWO =>
		PS_AR_CH_VC_GROUP_TWO,
	PS_AR_CH_VC_GROUP_ONE =>
		PS_AR_CH_VC_GROUP_ONE,
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_CONSOLE_OUTPUT_A_BIT =>
		XX_PS_CONSOLE_OUTPUT_A_BIT
	);

Page_42_10_06_1: ENTITY ALD_42_10_06_1_CONSOLE_ASSEMBLY_B_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_OP_REG_B_BIT =>
		PS_OP_REG_BUS(5),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_U_SEL_REG_B_BIT =>
		PS_E_CH_U_SEL_REG_BUS(5),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_MOD_REG_B_BIT =>
		PS_OP_MOD_REG_BUS(5),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_B_CH_B_BIT =>
		PS_B_CH_BUS(5),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_A_DATA_REG_B_BIT =>
		PS_A_DATA_REG_BUS(5),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_ASSEMBLY_CH_B_BIT =>
		PS_ASSEMBLY_CH_BUS(5),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_F_CH_U_SEL_REG_B_BIT =>
		PS_F_CH_U_SEL_REG_BUS(5),
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	MS_SPECIAL_CHAR_R =>
		MS_SPECIAL_CHAR_R,
	PS_E2_REG_B_BIT =>
		PS_E2_REG_BUS(5),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_A_C_E_I =>
		MS_SPECIAL_CHAR_A_C_E_I,
	MS_SPECIAL_CHAR_B =>
		MS_SPECIAL_CHAR_B,
	MS_SPECIAL_CHAR_D =>
		MS_SPECIAL_CHAR_D,
	PS_CONSOLE_OUTPUT_B_BIT =>
		XX_PS_CONSOLE_OUTPUT_B_BIT
	);

Page_42_10_07_1: ENTITY ALD_42_10_07_1_CONSOLE_ASSEMBLY_C_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_AR_EXIT_CH_C_BIT =>
		PS_AR_EXIT_CH_BUS(7),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_OP_REG_C_BIT =>
		PS_OP_REG_BUS(7),
	PS_CONS_MX_19_POS =>
		PS_CONS_MX_POS_BUS(19),
	PS_E_CH_U_SEL_REG_C_BIT =>
		PS_E_CH_U_SEL_REG_BUS(7),
	PS_CONS_MX_26_POS =>
		PS_CONS_MX_POS_BUS(26),
	PS_OP_MOD_REG_C_BIT =>
		PS_OP_MOD_REG_BUS(7),
	PS_CONS_MX_20_POS =>
		PS_CONS_MX_POS_BUS(20),
	PS_E_CH_UNIT_NU_REG_C_BIT =>
		PS_E_CH_U_NU_REG_BUS(7),
	PS_CONS_MX_27_POS =>
		PS_CONS_MX_POS_BUS(27),
	PS_A_DATA_REG_C_BIT =>
		PS_A_DATA_REG_BUS(7),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_F_CH_U_SEL_REG_C_BIT =>
		PS_F_CH_U_SEL_REG_BUS(7),
	PS_CONS_MX_28_POS =>
		PS_CONS_MX_POS_BUS(28),
	PS_B_CH_C_BIT =>
		PS_B_CH_BUS(7),
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_ASSEMBLY_CH_C_CHAR_BIT =>
		PS_ASSEMBLY_CH_C_CHAR_BIT,
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_F_CH_UNIT_NU_REG_C_BIT =>
		PS_F_CH_U_NU_REG_BUS(7),
	PS_CONS_MX_29_POS =>
		PS_CONS_MX_POS_BUS(29),
	MS_SPECIAL_CHAR_E =>
		MS_SPECIAL_CHAR_E,
	PS_E2_REG_C_BIT =>
		PS_E2_REG_BUS(7),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	MS_SPECIAL_CHAR_S =>
		MS_SPECIAL_CHAR_S,
	MS_SPECIAL_CHAR_C =>
		MS_SPECIAL_CHAR_C,
	MS_SPECIAL_CHAR_I =>
		MS_SPECIAL_CHAR_I,
	PS_CONSOLE_OUTPUT_C_BIT =>
		XX_PS_CONSOLE_OUTPUT_C_BIT
	);

Page_42_10_08_1: ENTITY ALD_42_10_08_1_CONSOLE_ASSEMBLY_WM_BIT
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_A_DATA_REG_WM_BIT =>
		PS_A_DATA_REG_BUS(6),
	PS_CONS_MX_22_POS =>
		PS_CONS_MX_POS_BUS(22),
	PS_B_CH_WM_BIT_1 =>
		PS_B_CH_WM_BIT_1,
	PS_CONS_B_DATA_CH_GATE =>
		PS_CONS_B_DATA_CH_GATE,
	PS_ASSEMBLY_CH_WM_BIT =>
		PS_ASSEMBLY_CH_BUS(6),
	PS_CONS_MX_24_POS =>
		PS_CONS_MX_POS_BUS(24),
	PS_CONS_E2_REG_GATE =>
		PS_CONS_E2_REG_GATE,
	PS_E2_REG_WM_BIT =>
		PS_E2_REG_BUS(6),
	PS_CONS_OUTPUT_WM_BIT =>
		PS_CONS_OUTPUT_WM_BIT
	);


END;
