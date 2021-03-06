-- VHDL for IBM SMS ALD group ARing
-- Title: ARing
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/3/2020 3:09:44 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ARing is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		MS_SET_A_RING_1_TRIG: in STD_LOGIC;
		PS_A_RING_ADV_B: in STD_LOGIC;
		PS_A_CYCLE: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE: in STD_LOGIC;
		MS_CONS_ADDR_REG_EXIT_GATE: in STD_LOGIC;
		PS_A_RING_ADV_A: in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_A: in STD_LOGIC;
		MS_1401_MODE_1: in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_B: in STD_LOGIC;
		PS_CONS_MX_Y_POS_BUS: in STD_LOGIC_VECTOR (6 downTo 1);
		PS_ADDR_SCNR_2_POS: out STD_LOGIC;
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME: out STD_LOGIC;
		PS_ADDR_SCNR_3_POS: out STD_LOGIC;
		PS_ADDR_SCNR_4_POS: out STD_LOGIC;
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME: out STD_LOGIC;
		PS_ADDR_SCNR_5_POS: out STD_LOGIC;
		PS_ADDR_SCNR_6_POS: out STD_LOGIC;
		PS_A_RING_2_OR_3_TIME: out STD_LOGIC;
		PS_A_RING_2_OR_3_OR_4_OR_5_TIME: out STD_LOGIC;
		PS_A_RING_OFF_TIME: out STD_LOGIC;
		PS_A_RING_BUS: out STD_LOGIC_VECTOR (6 downTo 1);
		MS_A_RING_BUS: out STD_LOGIC_VECTOR (6 downTo 1);
		LAMPS_ARING: out STD_LOGIC_VECTOR (6 downTo 1));
end ARing;


ARCHITECTURE structural of ARing is

	 signal XX_PS_A_RING_1_TIME: STD_LOGIC;
	 signal XX_PS_A_RING_2_TIME: STD_LOGIC;
	 signal XX_PS_A_RING_3_TIME: STD_LOGIC;
	 signal XX_PS_A_RING_4_TIME: STD_LOGIC;
	 signal XX_PS_A_RING_5_TIME: STD_LOGIC;
	 signal XX_MS_A_RING_6_TIME: STD_LOGIC;
	 signal XX_PS_A_RING_6_TIME: STD_LOGIC;
	 signal XX_MS_A_RING_1_TIME: STD_LOGIC;
	 signal XX_MS_A_RING_2_TIME: STD_LOGIC;
	 signal XX_MS_A_RING_3_TIME: STD_LOGIC;
	 signal XX_MS_A_RING_4_TIME: STD_LOGIC;
	 signal XX_MS_A_RING_5_TIME: STD_LOGIC;
	 signal XX_LAMP_15A1A04: STD_LOGIC;
	 signal XX_LAMP_15A1B04: STD_LOGIC;
	 signal XX_LAMP_15A1C04: STD_LOGIC;
	 signal XX_LAMP_15A1D04: STD_LOGIC;
	 signal XX_LAMP_15A1E04: STD_LOGIC;
	 signal XX_LAMP_15A1F04: STD_LOGIC;

BEGIN


	PS_A_RING_BUS <= (
		XX_PS_A_RING_6_TIME,
		XX_PS_A_RING_5_TIME,
		XX_PS_A_RING_4_TIME,
		XX_PS_A_RING_3_TIME,
		XX_PS_A_RING_2_TIME,
		XX_PS_A_RING_1_TIME);

	MS_A_RING_BUS <= (
		XX_MS_A_RING_6_TIME,
		XX_MS_A_RING_5_TIME,
		XX_MS_A_RING_4_TIME,
		XX_MS_A_RING_3_TIME,
		XX_MS_A_RING_2_TIME,
		XX_MS_A_RING_1_TIME);

	LAMPS_ARING <= (
		XX_LAMP_15A1F04,
		XX_LAMP_15A1E04,
		XX_LAMP_15A1D04,
		XX_LAMP_15A1C04,
		XX_LAMP_15A1B04,
		XX_LAMP_15A1A04);

Page_14_70_01_1: ENTITY ALD_14_70_01_1_A_RING_1_TIME
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_SET_A_RING_1_TRIG =>
		MS_SET_A_RING_1_TRIG,
	PS_A_RING_ADV_B =>
		PS_A_RING_ADV_B,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	MS_A_RING_1_TIME =>
		XX_MS_A_RING_1_TIME,
	PS_A_RING_1_TIME =>
		XX_PS_A_RING_1_TIME,
	LAMP_15A1A04 =>
		XX_LAMP_15A1A04
	);

Page_14_70_02_1: ENTITY ALD_14_70_02_1_A_RING_2_TIME_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_CONS_MX_Y5_POS =>
		PS_CONS_MX_Y_POS_BUS(5),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	MS_CONS_ADDR_REG_EXIT_GATE =>
		MS_CONS_ADDR_REG_EXIT_GATE,
	PS_A_RING_1_TIME =>
		XX_PS_A_RING_1_TIME,
	PS_A_RING_ADV_A =>
		PS_A_RING_ADV_A,
	MS_A_RING_1_TIME =>
		XX_MS_A_RING_1_TIME,
	PS_A_RING_ADV_B =>
		PS_A_RING_ADV_B,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_A_CYCLE =>
		PS_A_CYCLE,
	PS_1401_STORE_AR_OP_CODES =>
		PS_1401_STORE_AR_OP_CODES,
	PS_ADDR_SCNR_2_POS =>
		PS_ADDR_SCNR_2_POS,
	MS_A_RING_2_TIME =>
		XX_MS_A_RING_2_TIME,
	PS_A_RING_2_TIME =>
		XX_PS_A_RING_2_TIME,
	MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME =>
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME,
	LAMP_15A1B04 =>
		XX_LAMP_15A1B04
	);

Page_14_70_03_1: ENTITY ALD_14_70_03_1_A_RING_3_TIME
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_CONS_MX_Y4_POS =>
		PS_CONS_MX_Y_POS_BUS(4),
	MS_CONS_ADDR_REG_EXIT_GATE =>
		MS_CONS_ADDR_REG_EXIT_GATE,
	PS_A_RING_2_TIME =>
		XX_PS_A_RING_2_TIME,
	PS_A_RING_ADV_A =>
		PS_A_RING_ADV_A,
	MS_A_RING_2_TIME =>
		XX_MS_A_RING_2_TIME,
	PS_A_RING_ADV_B =>
		PS_A_RING_ADV_B,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_ADDR_SCNR_3_POS =>
		PS_ADDR_SCNR_3_POS,
	MS_A_RING_3_TIME =>
		XX_MS_A_RING_3_TIME,
	PS_A_RING_3_TIME =>
		XX_PS_A_RING_3_TIME,
	LAMP_15A1C04 =>
		XX_LAMP_15A1C04
	);

Page_14_70_04_1: ENTITY ALD_14_70_04_1_A_RING_4_TIME
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_CONS_MX_Y3_POS =>
		PS_CONS_MX_Y_POS_BUS(3),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	MS_CONS_ADDR_REG_EXIT_GATE =>
		MS_CONS_ADDR_REG_EXIT_GATE,
	PS_A_RING_3_TIME =>
		XX_PS_A_RING_3_TIME,
	PS_A_RING_ADV_A =>
		PS_A_RING_ADV_A,
	MS_A_RING_3_TIME =>
		XX_MS_A_RING_3_TIME,
	PS_A_RING_ADV_B =>
		PS_A_RING_ADV_B,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_A_CYCLE =>
		PS_A_CYCLE,
	PS_1401_STORE_AR_OP_CODES =>
		PS_1401_STORE_AR_OP_CODES,
	PS_ADDR_SCNR_4_POS =>
		PS_ADDR_SCNR_4_POS,
	MS_A_RING_4_TIME =>
		XX_MS_A_RING_4_TIME,
	PS_A_RING_4_TIME =>
		XX_PS_A_RING_4_TIME,
	MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME =>
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME,
	LAMP_15A1D04 =>
		XX_LAMP_15A1D04
	);

Page_14_70_05_1: ENTITY ALD_14_70_05_1_A_RING_5_TIME
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_STORE_AR_SET_A_CYCLE_CTRL_A =>
		MS_STORE_AR_SET_A_CYCLE_CTRL_A,
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	PS_CONS_MX_Y2_POS =>
		PS_CONS_MX_Y_POS_BUS(2),
	MS_CONS_ADDR_REG_EXIT_GATE =>
		MS_CONS_ADDR_REG_EXIT_GATE,
	PS_A_RING_4_TIME =>
		XX_PS_A_RING_4_TIME,
	PS_A_RING_ADV_A =>
		PS_A_RING_ADV_A,
	MS_A_RING_4_TIME =>
		XX_MS_A_RING_4_TIME,
	PS_A_RING_ADV_B =>
		PS_A_RING_ADV_B,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	MS_1401_MODE_1 =>
		MS_1401_MODE_1,
	PS_ADDR_SCNR_5_POS =>
		PS_ADDR_SCNR_5_POS,
	MS_A_RING_5_TIME =>
		XX_MS_A_RING_5_TIME,
	PS_A_RING_5_TIME =>
		XX_PS_A_RING_5_TIME,
	LAMP_15A1E04 =>
		XX_LAMP_15A1E04
	);

Page_14_70_06_1: ENTITY ALD_14_70_06_1_A_RING_6_TIME
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_STORE_AR_SET_C_CYCLE_CTRL_B =>
		MS_STORE_AR_SET_C_CYCLE_CTRL_B,
	PS_CONS_MX_Y1_POS =>
		PS_CONS_MX_Y_POS_BUS(1),
	PS_CONS_ADDR_REG_EXIT_GATE =>
		PS_CONS_ADDR_REG_EXIT_GATE,
	MS_CONS_ADDR_REG_EXIT_GATE =>
		MS_CONS_ADDR_REG_EXIT_GATE,
	PS_A_RING_5_TIME =>
		XX_PS_A_RING_5_TIME,
	PS_A_RING_ADV_A =>
		PS_A_RING_ADV_A,
	MS_A_RING_5_TIME =>
		XX_MS_A_RING_5_TIME,
	PS_A_RING_ADV_B =>
		PS_A_RING_ADV_B,
	MS_PROGRAM_RESET_1 =>
		MS_PROGRAM_RESET_1,
	PS_ADDR_SCNR_6_POS =>
		PS_ADDR_SCNR_6_POS,
	MS_A_RING_6_TIME =>
		XX_MS_A_RING_6_TIME,
	PS_A_RING_6_TIME =>
		XX_PS_A_RING_6_TIME,
	LAMP_15A1F04 =>
		XX_LAMP_15A1F04
	);

Page_14_70_07_1: ENTITY ALD_14_70_07_1_A_RING_MIX
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_A_RING_2_TIME =>
		XX_MS_A_RING_2_TIME,
	MS_A_RING_5_TIME =>
		XX_MS_A_RING_5_TIME,
	MS_A_RING_3_TIME =>
		XX_MS_A_RING_3_TIME,
	MS_A_RING_4_TIME =>
		XX_MS_A_RING_4_TIME,
	MS_A_RING_6_TIME =>
		XX_MS_A_RING_6_TIME,
	PS_A_RING_2_OR_3_TIME =>
		PS_A_RING_2_OR_3_TIME,
	PS_A_RING_2_OR_3_OR_4_OR_5_TIME =>
		PS_A_RING_2_OR_3_OR_4_OR_5_TIME,
	PS_A_RING_OFF_TIME =>
		PS_A_RING_OFF_TIME
	);


END;
