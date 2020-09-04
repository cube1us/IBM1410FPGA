-- VHDL for IBM SMS ALD group ADDRRegSetTtoTTHP
-- Title: ADDRRegSetTtoTTHP
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/4/2020 12:51:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ADDRRegSetTtoTTHP is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_LOGIC_GATE_C_1: in STD_LOGIC;
		PS_LOGIC_GATE_H: in STD_LOGIC;
		MS_LOGIC_GATE_T: in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R: in STD_LOGIC;
		PS_I_RING_4_OR_9_TIME: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		PS_X_CYCLE: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_4: in STD_LOGIC;
		PS_CONSOLE_STROBE_GTD: in STD_LOGIC;
		PS_CONS_CLOCK_2_POS: in STD_LOGIC;
		MS_LOGIC_GATE_D_1: in STD_LOGIC;
		MS_LOGIC_GATE_U: in STD_LOGIC;
		PS_I_RING_3_OR_8_TIME: in STD_LOGIC;
		MS_LOGIC_GATE_E_1: in STD_LOGIC;
		PS_LOGIC_GATE_J: in STD_LOGIC;
		MS_LOGIC_GATE_V: in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME: in STD_LOGIC;
		PS_I_RING_2_OR_7_TIME: in STD_LOGIC;
		MS_LOGIC_GATE_F_1: in STD_LOGIC;
		PS_LOGIC_GATE_K: in STD_LOGIC;
		MS_LOGIC_GATE_W: in STD_LOGIC;
		PS_I_RING_1_OR_6_TIME: in STD_LOGIC;
		PS_A_RING_BUS: in STD_LOGIC_VECTOR (6 downTo 1);
		PS_CONS_MX_Y_POS_BUS: in STD_LOGIC_VECTOR (6 downTo 1);
		PS_SET_AR_T_POS: out STD_LOGIC;
		PS_SET_AR_H_POS: out STD_LOGIC;
		PS_SET_AR_TH_POS: out STD_LOGIC;
		PS_SET_AR_TTH_POS: out STD_LOGIC);
end ADDRRegSetTtoTTHP;


ARCHITECTURE structural of ADDRRegSetTtoTTHP is

BEGIN

Page_14_71_02_1: ENTITY ALD_14_71_02_1_ADDR_REGISTERS_SET_TENS_POS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_2ND_CLOCK_PULSE_4 =>
		PS_2ND_CLOCK_PULSE_4,
	PS_I_RING_4_OR_9_TIME =>
		PS_I_RING_4_OR_9_TIME,
	PS_I_CYCLE =>
		PS_I_CYCLE,
	PS_LOGIC_GATE_A_OR_R =>
		PS_LOGIC_GATE_A_OR_R,
	PS_X_CYCLE =>
		PS_X_CYCLE,
	PS_A_RING_3_TIME =>
		PS_A_RING_BUS(3),
	PS_LOGIC_GATE_H =>
		PS_LOGIC_GATE_H,
	MS_LOGIC_GATE_C_1 =>
		MS_LOGIC_GATE_C_1,
	MS_LOGIC_GATE_T =>
		MS_LOGIC_GATE_T,
	PS_CONS_MX_Y4_POS =>
		PS_CONS_MX_Y_POS_BUS(4),
	PS_CONSOLE_STROBE_GTD =>
		PS_CONSOLE_STROBE_GTD,
	PS_CONS_CLOCK_2_POS =>
		PS_CONS_CLOCK_2_POS,
	PS_SET_AR_T_POS =>
		PS_SET_AR_T_POS
	);

Page_14_71_03_1: ENTITY ALD_14_71_03_1_ADDR_REGISTERS_SET_HUNDREDS_POS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_2ND_CLOCK_PULSE_4 =>
		PS_2ND_CLOCK_PULSE_4,
	PS_I_RING_3_OR_8_TIME =>
		PS_I_RING_3_OR_8_TIME,
	PS_I_CYCLE =>
		PS_I_CYCLE,
	PS_LOGIC_GATE_A_OR_R =>
		PS_LOGIC_GATE_A_OR_R,
	PS_X_CYCLE =>
		PS_X_CYCLE,
	PS_A_RING_4_TIME =>
		PS_A_RING_BUS(4),
	PS_LOGIC_GATE_H =>
		PS_LOGIC_GATE_H,
	MS_LOGIC_GATE_D_1 =>
		MS_LOGIC_GATE_D_1,
	MS_LOGIC_GATE_U =>
		MS_LOGIC_GATE_U,
	PS_CONS_CLOCK_2_POS =>
		PS_CONS_CLOCK_2_POS,
	PS_CONS_MX_Y3_POS =>
		PS_CONS_MX_Y_POS_BUS(3),
	PS_CONSOLE_STROBE_GTD =>
		PS_CONSOLE_STROBE_GTD,
	PS_SET_AR_H_POS =>
		PS_SET_AR_H_POS
	);

Page_14_71_04_1: ENTITY ALD_14_71_04_1_ADDR_REGISTERS_SET_THOUSANDS_POS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_2ND_CLOCK_PULSE_4 =>
		PS_2ND_CLOCK_PULSE_4,
	PS_I_RING_2_OR_7_TIME =>
		PS_I_RING_2_OR_7_TIME,
	PS_I_CYCLE =>
		PS_I_CYCLE,
	PS_LOGIC_GATE_A_OR_R =>
		PS_LOGIC_GATE_A_OR_R,
	PS_A_RING_5_TIME =>
		PS_A_RING_BUS(5),
	PS_LOGIC_GATE_H =>
		PS_LOGIC_GATE_H,
	PS_CONS_MX_Y2_POS =>
		PS_CONS_MX_Y_POS_BUS(2),
	PS_I_RING_5_OR_10_TIME =>
		PS_I_RING_5_OR_10_TIME,
	PS_LOGIC_GATE_J =>
		PS_LOGIC_GATE_J,
	PS_CONSOLE_STROBE_GTD =>
		PS_CONSOLE_STROBE_GTD,
	PS_CONS_CLOCK_2_POS =>
		PS_CONS_CLOCK_2_POS,
	PS_A_RING_4_TIME =>
		PS_A_RING_BUS(4),
	PS_X_CYCLE =>
		PS_X_CYCLE,
	MS_LOGIC_GATE_E_1 =>
		MS_LOGIC_GATE_E_1,
	MS_LOGIC_GATE_V =>
		MS_LOGIC_GATE_V,
	PS_SET_AR_TH_POS =>
		PS_SET_AR_TH_POS
	);

Page_14_71_05_1: ENTITY ALD_14_71_05_1_ADDR_REGS_SET_TEN_THOUSANDS_POS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_2ND_CLOCK_PULSE_4 =>
		PS_2ND_CLOCK_PULSE_4,
	PS_I_RING_1_OR_6_TIME =>
		PS_I_RING_1_OR_6_TIME,
	PS_LOGIC_GATE_A_OR_R =>
		PS_LOGIC_GATE_A_OR_R,
	PS_I_CYCLE =>
		PS_I_CYCLE,
	PS_A_RING_6_TIME =>
		PS_A_RING_BUS(6),
	PS_LOGIC_GATE_H =>
		PS_LOGIC_GATE_H,
	PS_CONS_MX_Y1_POS =>
		PS_CONS_MX_Y_POS_BUS(1),
	PS_X_CYCLE =>
		PS_X_CYCLE,
	PS_I_RING_5_OR_10_TIME =>
		PS_I_RING_5_OR_10_TIME,
	PS_CONS_CLOCK_2_POS =>
		PS_CONS_CLOCK_2_POS,
	PS_LOGIC_GATE_K =>
		PS_LOGIC_GATE_K,
	PS_A_RING_4_TIME =>
		PS_A_RING_BUS(4),
	MS_LOGIC_GATE_F_1 =>
		MS_LOGIC_GATE_F_1,
	MS_LOGIC_GATE_W =>
		MS_LOGIC_GATE_W,
	PS_CONSOLE_STROBE_GTD =>
		PS_CONSOLE_STROBE_GTD,
	PS_SET_AR_TTH_POS =>
		PS_SET_AR_TTH_POS
	);


END;
