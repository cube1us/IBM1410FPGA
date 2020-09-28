-- VHDL for IBM SMS ALD group FChLineDrivers
-- Title: FChLineDrivers
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/28/2020 10:40:59 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChLineDrivers is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_U: in STD_LOGIC;
		PS_F_CH_SELECT_UNIT_B: in STD_LOGIC;
		MS_F2_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_F2_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MC_CPU_TO_F_CH_TAU_C_BIT: out STD_LOGIC;
		TW_CPU_TO_F_CH_TAU_C_BIT: out STD_LOGIC;
		MC_CPU_TO_F_CH_TAU_BUS: out STD_LOGIC_VECTOR (5 downTo 0);
		MC_CPU_TO_F_CH_1301_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MC_CPU_TO_F_CH_1405_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end FChLineDrivers;


ARCHITECTURE structural of FChLineDrivers is

	 signal XX_MC_CPU_TO_F_CH_TAU_4_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_TAU_2_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_TAU_1_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_TAU_B_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_TAU_A_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_TAU_8_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_4_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_2_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_1_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_B_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_A_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_8_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_C_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1301_WM_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_4_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_2_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_1_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_B_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_A_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_8_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_C_BIT: STD_LOGIC;
	 signal XX_MC_CPU_TO_F_CH_1405_WM_BIT: STD_LOGIC;

BEGIN


	MC_CPU_TO_F_CH_TAU_BUS <= (
		XX_MC_CPU_TO_F_CH_TAU_B_BIT,
		XX_MC_CPU_TO_F_CH_TAU_A_BIT,
		XX_MC_CPU_TO_F_CH_TAU_8_BIT,
		XX_MC_CPU_TO_F_CH_TAU_4_BIT,
		XX_MC_CPU_TO_F_CH_TAU_2_BIT,
		XX_MC_CPU_TO_F_CH_TAU_1_BIT);

	MC_CPU_TO_F_CH_1301_BUS <= (
		XX_MC_CPU_TO_F_CH_1301_C_BIT,
		XX_MC_CPU_TO_F_CH_1301_WM_BIT,
		XX_MC_CPU_TO_F_CH_1301_B_BIT,
		XX_MC_CPU_TO_F_CH_1301_A_BIT,
		XX_MC_CPU_TO_F_CH_1301_8_BIT,
		XX_MC_CPU_TO_F_CH_1301_4_BIT,
		XX_MC_CPU_TO_F_CH_1301_2_BIT,
		XX_MC_CPU_TO_F_CH_1301_1_BIT);

	MC_CPU_TO_F_CH_1405_BUS <= (
		XX_MC_CPU_TO_F_CH_1405_C_BIT,
		XX_MC_CPU_TO_F_CH_1405_WM_BIT,
		XX_MC_CPU_TO_F_CH_1405_B_BIT,
		XX_MC_CPU_TO_F_CH_1405_A_BIT,
		XX_MC_CPU_TO_F_CH_1405_8_BIT,
		XX_MC_CPU_TO_F_CH_1405_4_BIT,
		XX_MC_CPU_TO_F_CH_1405_2_BIT,
		XX_MC_CPU_TO_F_CH_1405_1_BIT);

Page_15_70_31_1: ENTITY ALD_15_70_31_1_F_CH_LINE_DRIVERS_4_2_AND_1_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_F2_REG_4_BIT =>
		MS_F2_REG_BUS(2),
	MS_F2_REG_2_BIT =>
		MS_F2_REG_BUS(1),
	MS_F2_REG_1_BIT =>
		MS_F2_REG_BUS(0),
	MC_CPU_TO_F_CH_TAU_4_BIT =>
		XX_MC_CPU_TO_F_CH_TAU_4_BIT,
	MC_CPU_TO_F_CH_1301_4_BIT =>
		XX_MC_CPU_TO_F_CH_1301_4_BIT,
	MC_CPU_TO_F_CH_1405_4_BIT =>
		XX_MC_CPU_TO_F_CH_1405_4_BIT,
	MC_CPU_TO_F_CH_TAU_2_BIT =>
		XX_MC_CPU_TO_F_CH_TAU_2_BIT,
	MC_CPU_TO_F_CH_1301_2_BIT =>
		XX_MC_CPU_TO_F_CH_1301_2_BIT,
	MC_CPU_TO_F_CH_1405_2_BIT =>
		XX_MC_CPU_TO_F_CH_1405_2_BIT,
	MC_CPU_TO_F_CH_TAU_1_BIT =>
		XX_MC_CPU_TO_F_CH_TAU_1_BIT,
	MC_CPU_TO_F_CH_1301_1_BIT =>
		XX_MC_CPU_TO_F_CH_1301_1_BIT,
	MC_CPU_TO_F_CH_1405_1_BIT =>
		XX_MC_CPU_TO_F_CH_1405_1_BIT
	);

Page_15_70_32_1: ENTITY ALD_15_70_32_1_F_CH_LINE_DRIVERS_B_A_AND_8_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MS_F2_REG_B_BIT =>
		MS_F2_REG_BUS(5),
	MS_F2_REG_A_BIT =>
		MS_F2_REG_BUS(4),
	MS_F2_REG_8_BIT =>
		MS_F2_REG_BUS(3),
	MC_CPU_TO_F_CH_TAU_B_BIT =>
		XX_MC_CPU_TO_F_CH_TAU_B_BIT,
	MC_CPU_TO_F_CH_1301_B_BIT =>
		XX_MC_CPU_TO_F_CH_1301_B_BIT,
	MC_CPU_TO_F_CH_1405_B_BIT =>
		XX_MC_CPU_TO_F_CH_1405_B_BIT,
	MC_CPU_TO_F_CH_TAU_A_BIT =>
		XX_MC_CPU_TO_F_CH_TAU_A_BIT,
	MC_CPU_TO_F_CH_1301_A_BIT =>
		XX_MC_CPU_TO_F_CH_1301_A_BIT,
	MC_CPU_TO_F_CH_1405_A_BIT =>
		XX_MC_CPU_TO_F_CH_1405_A_BIT,
	MC_CPU_TO_F_CH_TAU_8_BIT =>
		XX_MC_CPU_TO_F_CH_TAU_8_BIT,
	MC_CPU_TO_F_CH_1301_8_BIT =>
		XX_MC_CPU_TO_F_CH_1301_8_BIT,
	MC_CPU_TO_F_CH_1405_8_BIT =>
		XX_MC_CPU_TO_F_CH_1405_8_BIT
	);

Page_15_70_33_1: ENTITY ALD_15_70_33_1_F_CH_LINE_DRIVERS_C_AND_WM_BITS
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_F_CH_SELECT_UNIT_U =>
		PS_F_CH_SELECT_UNIT_U,
	PS_F2_REG_C_BIT =>
		PS_F2_REG_BUS(7),
	MS_F2_REG_C_BIT =>
		MS_F2_REG_BUS(7),
	PS_F_CH_SELECT_UNIT_B =>
		PS_F_CH_SELECT_UNIT_B,
	MS_F2_REG_WM_BIT =>
		MS_F2_REG_BUS(6),
	MC_CPU_TO_F_CH_TAU_C_BIT =>
		MC_CPU_TO_F_CH_TAU_C_BIT,
	TW_CPU_TO_F_CH_TAU_C_BIT =>
		TW_CPU_TO_F_CH_TAU_C_BIT,
	MC_CPU_TO_F_CH_1301_C_BIT =>
		XX_MC_CPU_TO_F_CH_1301_C_BIT,
	MC_CPU_TO_F_CH_1405_C_BIT =>
		XX_MC_CPU_TO_F_CH_1405_C_BIT,
	MC_CPU_TO_F_CH_1301_WM_BIT =>
		XX_MC_CPU_TO_F_CH_1301_WM_BIT,
	MC_CPU_TO_F_CH_1405_WM_BIT =>
		XX_MC_CPU_TO_F_CH_1405_WM_BIT
	);


END;
