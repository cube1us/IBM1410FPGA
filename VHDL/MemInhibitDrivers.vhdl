-- VHDL for IBM SMS ALD group MemInhibitDrivers
-- Title: MemInhibitDrivers
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/19/2020 4:59:19 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity MemInhibitDrivers is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_1: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_2: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_3: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_4: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_5: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_6: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_7: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_8: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_5: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_6: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_7: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_8: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_1: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_2: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_3: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_4: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_9: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_10: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_11: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_12: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_9: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_10: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_11: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_12: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_13: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_14: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_15: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_16: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_13: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_16: in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_15: in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_14: in STD_LOGIC;
		MY_INH_CHAR_0_D_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_1_D_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_2_D_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MY_INH_CHAR_3_D_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_0_D1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_0_B1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_1_D1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_1_B1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_2_D1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_2_B1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_3_D1_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		MV_INH_CHAR_3_B1_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end MemInhibitDrivers;


ARCHITECTURE structural of MemInhibitDrivers is

	 signal XX_MV_INH_CHAR_0_1_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_2_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_4_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_8_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_A_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_B_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_C_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_WM_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_1_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_2_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_4_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_8_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_A_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_B_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_C_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_0_WM_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_1_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_2_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_4_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_8_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_A_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_B_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_C_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_WM_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_1_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_2_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_4_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_8_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_A_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_B_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_C_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_1_WM_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_1_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_2_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_4_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_8_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_A_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_B_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_C_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_WM_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_1_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_2_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_4_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_8_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_A_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_B_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_C_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_2_WM_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_1_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_2_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_4_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_8_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_A_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_B_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_C_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_WM_BIT_D1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_1_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_2_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_4_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_8_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_A_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_B_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_C_BIT_B1: STD_LOGIC;
	 signal XX_MV_INH_CHAR_3_WM_BIT_B1: STD_LOGIC;

BEGIN


	MV_INH_CHAR_0_D1_BUS <= (
		XX_MV_INH_CHAR_0_C_BIT_D1,
		XX_MV_INH_CHAR_0_WM_BIT_D1,
		XX_MV_INH_CHAR_0_B_BIT_D1,
		XX_MV_INH_CHAR_0_A_BIT_D1,
		XX_MV_INH_CHAR_0_8_BIT_D1,
		XX_MV_INH_CHAR_0_4_BIT_D1,
		XX_MV_INH_CHAR_0_2_BIT_D1,
		XX_MV_INH_CHAR_0_1_BIT_D1);

	MV_INH_CHAR_0_B1_BUS <= (
		XX_MV_INH_CHAR_0_C_BIT_B1,
		XX_MV_INH_CHAR_0_WM_BIT_B1,
		XX_MV_INH_CHAR_0_B_BIT_B1,
		XX_MV_INH_CHAR_0_A_BIT_B1,
		XX_MV_INH_CHAR_0_8_BIT_B1,
		XX_MV_INH_CHAR_0_4_BIT_B1,
		XX_MV_INH_CHAR_0_2_BIT_B1,
		XX_MV_INH_CHAR_0_1_BIT_B1);

	MV_INH_CHAR_1_D1_BUS <= (
		XX_MV_INH_CHAR_1_C_BIT_D1,
		XX_MV_INH_CHAR_1_WM_BIT_D1,
		XX_MV_INH_CHAR_1_B_BIT_D1,
		XX_MV_INH_CHAR_1_A_BIT_D1,
		XX_MV_INH_CHAR_1_8_BIT_D1,
		XX_MV_INH_CHAR_1_4_BIT_D1,
		XX_MV_INH_CHAR_1_2_BIT_D1,
		XX_MV_INH_CHAR_1_1_BIT_D1);

	MV_INH_CHAR_1_B1_BUS <= (
		XX_MV_INH_CHAR_1_C_BIT_B1,
		XX_MV_INH_CHAR_1_WM_BIT_B1,
		XX_MV_INH_CHAR_1_B_BIT_B1,
		XX_MV_INH_CHAR_1_A_BIT_B1,
		XX_MV_INH_CHAR_1_8_BIT_B1,
		XX_MV_INH_CHAR_1_4_BIT_B1,
		XX_MV_INH_CHAR_1_2_BIT_B1,
		XX_MV_INH_CHAR_1_1_BIT_B1);

	MV_INH_CHAR_2_D1_BUS <= (
		XX_MV_INH_CHAR_2_C_BIT_D1,
		XX_MV_INH_CHAR_2_WM_BIT_D1,
		XX_MV_INH_CHAR_2_B_BIT_D1,
		XX_MV_INH_CHAR_2_A_BIT_D1,
		XX_MV_INH_CHAR_2_8_BIT_D1,
		XX_MV_INH_CHAR_2_4_BIT_D1,
		XX_MV_INH_CHAR_2_2_BIT_D1,
		XX_MV_INH_CHAR_2_1_BIT_D1);

	MV_INH_CHAR_2_B1_BUS <= (
		XX_MV_INH_CHAR_2_C_BIT_B1,
		XX_MV_INH_CHAR_2_WM_BIT_B1,
		XX_MV_INH_CHAR_2_B_BIT_B1,
		XX_MV_INH_CHAR_2_A_BIT_B1,
		XX_MV_INH_CHAR_2_8_BIT_B1,
		XX_MV_INH_CHAR_2_4_BIT_B1,
		XX_MV_INH_CHAR_2_2_BIT_B1,
		XX_MV_INH_CHAR_2_1_BIT_B1);

	MV_INH_CHAR_3_D1_BUS <= (
		XX_MV_INH_CHAR_3_C_BIT_D1,
		XX_MV_INH_CHAR_3_WM_BIT_D1,
		XX_MV_INH_CHAR_3_B_BIT_D1,
		XX_MV_INH_CHAR_3_A_BIT_D1,
		XX_MV_INH_CHAR_3_8_BIT_D1,
		XX_MV_INH_CHAR_3_4_BIT_D1,
		XX_MV_INH_CHAR_3_2_BIT_D1,
		XX_MV_INH_CHAR_3_1_BIT_D1);

	MV_INH_CHAR_3_B1_BUS <= (
		XX_MV_INH_CHAR_3_C_BIT_B1,
		XX_MV_INH_CHAR_3_WM_BIT_B1,
		XX_MV_INH_CHAR_3_B_BIT_B1,
		XX_MV_INH_CHAR_3_A_BIT_B1,
		XX_MV_INH_CHAR_3_8_BIT_B1,
		XX_MV_INH_CHAR_3_4_BIT_B1,
		XX_MV_INH_CHAR_3_2_BIT_B1,
		XX_MV_INH_CHAR_3_1_BIT_B1);

Page_37_11_01_1: ENTITY ALD_37_11_01_1_MEM_INH_DVRS_CHAR_0
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_INH_CHAR_0_1_BIT_D =>
		MY_INH_CHAR_0_D_BUS(0),
	MY_Z_GATE_FOR_5_9TH_5 =>
		MY_Z_GATE_FOR_5_9TH_5,
	MY_Z_GATE_FOR_0_4TH_1 =>
		MY_Z_GATE_FOR_0_4TH_1,
	MY_INH_CHAR_0_2_BIT_D =>
		MY_INH_CHAR_0_D_BUS(1),
	MY_INH_CHAR_0_4_BIT_D =>
		MY_INH_CHAR_0_D_BUS(2),
	MY_INH_CHAR_0_8_BIT_D =>
		MY_INH_CHAR_0_D_BUS(3),
	MY_Z_GATE_FOR_5_9TH_6 =>
		MY_Z_GATE_FOR_5_9TH_6,
	MY_INH_CHAR_0_A_BIT_D =>
		MY_INH_CHAR_0_D_BUS(4),
	MY_Z_GATE_FOR_0_4TH_2 =>
		MY_Z_GATE_FOR_0_4TH_2,
	MY_INH_CHAR_0_B_BIT_D =>
		MY_INH_CHAR_0_D_BUS(5),
	MY_Z_GATE_FOR_5_9TH_7 =>
		MY_Z_GATE_FOR_5_9TH_7,
	MY_Z_GATE_FOR_0_4TH_3 =>
		MY_Z_GATE_FOR_0_4TH_3,
	MY_INH_CHAR_0_C_BIT_D =>
		MY_INH_CHAR_0_D_BUS(7),
	MY_Z_GATE_FOR_5_9TH_8 =>
		MY_Z_GATE_FOR_5_9TH_8,
	MY_Z_GATE_FOR_0_4TH_4 =>
		MY_Z_GATE_FOR_0_4TH_4,
	MY_INH_CHAR_0_WM_BIT_D =>
		MY_INH_CHAR_0_D_BUS(6),
	MV_INH_CHAR_0_1_BIT_D1 =>
		XX_MV_INH_CHAR_0_1_BIT_D1,
	MV_INH_CHAR_0_1_BIT_B1 =>
		XX_MV_INH_CHAR_0_1_BIT_B1,
	MV_INH_CHAR_0_2_BIT_D1 =>
		XX_MV_INH_CHAR_0_2_BIT_D1,
	MV_INH_CHAR_0_2_BIT_B1 =>
		XX_MV_INH_CHAR_0_2_BIT_B1,
	MV_INH_CHAR_0_4_BIT_D1 =>
		XX_MV_INH_CHAR_0_4_BIT_D1,
	MV_INH_CHAR_0_4_BIT_B1 =>
		XX_MV_INH_CHAR_0_4_BIT_B1,
	MV_INH_CHAR_0_8_BIT_D1 =>
		XX_MV_INH_CHAR_0_8_BIT_D1,
	MV_INH_CHAR_0_8_BIT_B1 =>
		XX_MV_INH_CHAR_0_8_BIT_B1,
	MV_INH_CHAR_0_A_BIT_D1 =>
		XX_MV_INH_CHAR_0_A_BIT_D1,
	MV_INH_CHAR_0_A_BIT_B1 =>
		XX_MV_INH_CHAR_0_A_BIT_B1,
	MV_INH_CHAR_0_B_BIT_D1 =>
		XX_MV_INH_CHAR_0_B_BIT_D1,
	MV_INH_CHAR_0_B_BIT_B1 =>
		XX_MV_INH_CHAR_0_B_BIT_B1,
	MV_INH_CHAR_0_C_BIT_D1 =>
		XX_MV_INH_CHAR_0_C_BIT_D1,
	MV_INH_CHAR_0_C_BIT_B1 =>
		XX_MV_INH_CHAR_0_C_BIT_B1,
	MV_INH_CHAR_0_WM_BIT_D1 =>
		XX_MV_INH_CHAR_0_WM_BIT_D1,
	MV_INH_CHAR_0_WM_BIT_B1 =>
		XX_MV_INH_CHAR_0_WM_BIT_B1
	);

Page_37_11_02_1: ENTITY ALD_37_11_02_1_MEM_INH_DVRS_CHAR_1
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_INH_CHAR_1_1_BIT_D =>
		MY_INH_CHAR_1_D_BUS(0),
	MY_Z_GATE_FOR_5_9TH_1 =>
		MY_Z_GATE_FOR_5_9TH_1,
	MY_Z_GATE_FOR_0_4TH_5 =>
		MY_Z_GATE_FOR_0_4TH_5,
	MY_INH_CHAR_1_2_BIT_D =>
		MY_INH_CHAR_1_D_BUS(1),
	MY_INH_CHAR_1_4_BIT_D =>
		MY_INH_CHAR_1_D_BUS(2),
	MY_Z_GATE_FOR_5_9TH_2 =>
		MY_Z_GATE_FOR_5_9TH_2,
	MY_Z_GATE_FOR_0_4TH_6 =>
		MY_Z_GATE_FOR_0_4TH_6,
	MY_INH_CHAR_1_8_BIT_D =>
		MY_INH_CHAR_1_D_BUS(3),
	MY_INH_CHAR_1_A_BIT_D =>
		MY_INH_CHAR_1_D_BUS(4),
	MY_Z_GATE_FOR_5_9TH_3 =>
		MY_Z_GATE_FOR_5_9TH_3,
	MY_INH_CHAR_1_B_BIT_D =>
		MY_INH_CHAR_1_D_BUS(5),
	MY_Z_GATE_FOR_0_4TH_7 =>
		MY_Z_GATE_FOR_0_4TH_7,
	MY_Z_GATE_FOR_0_4TH_8 =>
		MY_Z_GATE_FOR_0_4TH_8,
	MY_INH_CHAR_1_C_BIT_D =>
		MY_INH_CHAR_1_D_BUS(7),
	MY_Z_GATE_FOR_5_9TH_4 =>
		MY_Z_GATE_FOR_5_9TH_4,
	MY_INH_CHAR_1_WM_BIT_D =>
		MY_INH_CHAR_1_D_BUS(6),
	MV_INH_CHAR_1_1_BIT_D1 =>
		XX_MV_INH_CHAR_1_1_BIT_D1,
	MV_INH_CHAR_1_1_BIT_B1 =>
		XX_MV_INH_CHAR_1_1_BIT_B1,
	MV_INH_CHAR_1_2_BIT_D1 =>
		XX_MV_INH_CHAR_1_2_BIT_D1,
	MV_INH_CHAR_1_2_BIT_B1 =>
		XX_MV_INH_CHAR_1_2_BIT_B1,
	MV_INH_CHAR_1_4_BIT_D1 =>
		XX_MV_INH_CHAR_1_4_BIT_D1,
	MV_INH_CHAR_1_4_BIT_B1 =>
		XX_MV_INH_CHAR_1_4_BIT_B1,
	MV_INH_CHAR_1_8_BIT_D1 =>
		XX_MV_INH_CHAR_1_8_BIT_D1,
	MV_INH_CHAR_1_8_BIT_B1 =>
		XX_MV_INH_CHAR_1_8_BIT_B1,
	MV_INH_CHAR_1_A_BIT_D1 =>
		XX_MV_INH_CHAR_1_A_BIT_D1,
	MV_INH_CHAR_1_A_BIT_B1 =>
		XX_MV_INH_CHAR_1_A_BIT_B1,
	MV_INH_CHAR_1_B_BIT_D1 =>
		XX_MV_INH_CHAR_1_B_BIT_D1,
	MV_INH_CHAR_1_B_BIT_B1 =>
		XX_MV_INH_CHAR_1_B_BIT_B1,
	MV_INH_CHAR_1_C_BIT_D1 =>
		XX_MV_INH_CHAR_1_C_BIT_D1,
	MV_INH_CHAR_1_C_BIT_B1 =>
		XX_MV_INH_CHAR_1_C_BIT_B1,
	MV_INH_CHAR_1_WM_BIT_D1 =>
		XX_MV_INH_CHAR_1_WM_BIT_D1,
	MV_INH_CHAR_1_WM_BIT_B1 =>
		XX_MV_INH_CHAR_1_WM_BIT_B1
	);

Page_37_11_03_1: ENTITY ALD_37_11_03_1_MEM_INH_DVRS_CHAR_2
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_INH_CHAR_2_1_BIT_D =>
		MY_INH_CHAR_2_D_BUS(0),
	MY_Z_GATE_FOR_5_9TH_9 =>
		MY_Z_GATE_FOR_5_9TH_9,
	MY_Z_GATE_FOR_0_4TH_9 =>
		MY_Z_GATE_FOR_0_4TH_9,
	MY_INH_CHAR_2_2_BIT_D =>
		MY_INH_CHAR_2_D_BUS(1),
	MY_INH_CHAR_2_4_BIT_D =>
		MY_INH_CHAR_2_D_BUS(2),
	MY_Z_GATE_FOR_5_9TH_10 =>
		MY_Z_GATE_FOR_5_9TH_10,
	MY_INH_CHAR_2_8_BIT_D =>
		MY_INH_CHAR_2_D_BUS(3),
	MY_INH_CHAR_2_A_BIT_D =>
		MY_INH_CHAR_2_D_BUS(4),
	MY_Z_GATE_FOR_0_4TH_10 =>
		MY_Z_GATE_FOR_0_4TH_10,
	MY_Z_GATE_FOR_5_9TH_11 =>
		MY_Z_GATE_FOR_5_9TH_11,
	MY_INH_CHAR_2_B_BIT_D =>
		MY_INH_CHAR_2_D_BUS(5),
	MY_INH_CHAR_2_C_BIT_D =>
		MY_INH_CHAR_2_D_BUS(7),
	MY_Z_GATE_FOR_5_9TH_12 =>
		MY_Z_GATE_FOR_5_9TH_12,
	MY_Z_GATE_FOR_0_4TH_12 =>
		MY_Z_GATE_FOR_0_4TH_12,
	MY_INH_CHAR_2_WM_BIT_D =>
		MY_INH_CHAR_2_D_BUS(6),
	MY_Z_GATE_FOR_0_4TH_11 =>
		MY_Z_GATE_FOR_0_4TH_11,
	MV_INH_CHAR_2_1_BIT_D1 =>
		XX_MV_INH_CHAR_2_1_BIT_D1,
	MV_INH_CHAR_2_1_BIT_B1 =>
		XX_MV_INH_CHAR_2_1_BIT_B1,
	MV_INH_CHAR_2_2_BIT_D1 =>
		XX_MV_INH_CHAR_2_2_BIT_D1,
	MV_INH_CHAR_2_2_BIT_B1 =>
		XX_MV_INH_CHAR_2_2_BIT_B1,
	MV_INH_CHAR_2_4_BIT_D1 =>
		XX_MV_INH_CHAR_2_4_BIT_D1,
	MV_INH_CHAR_2_4_BIT_B1 =>
		XX_MV_INH_CHAR_2_4_BIT_B1,
	MV_INH_CHAR_2_8_BIT_D1 =>
		XX_MV_INH_CHAR_2_8_BIT_D1,
	MV_INH_CHAR_2_8_BIT_B1 =>
		XX_MV_INH_CHAR_2_8_BIT_B1,
	MV_INH_CHAR_2_A_BIT_D1 =>
		XX_MV_INH_CHAR_2_A_BIT_D1,
	MV_INH_CHAR_2_A_BIT_B1 =>
		XX_MV_INH_CHAR_2_A_BIT_B1,
	MV_INH_CHAR_2_B_BIT_D1 =>
		XX_MV_INH_CHAR_2_B_BIT_D1,
	MV_INH_CHAR_2_B_BIT_B1 =>
		XX_MV_INH_CHAR_2_B_BIT_B1,
	MV_INH_CHAR_2_C_BIT_D1 =>
		XX_MV_INH_CHAR_2_C_BIT_D1,
	MV_INH_CHAR_2_C_BIT_B1 =>
		XX_MV_INH_CHAR_2_C_BIT_B1,
	MV_INH_CHAR_2_WM_BIT_D1 =>
		XX_MV_INH_CHAR_2_WM_BIT_D1,
	MV_INH_CHAR_2_WM_BIT_B1 =>
		XX_MV_INH_CHAR_2_WM_BIT_B1
	);

Page_37_11_04_1: ENTITY ALD_37_11_04_1_MEM_INH_DVRS_CHAR_3
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_INH_CHAR_3_1_BIT_D =>
		MY_INH_CHAR_3_D_BUS(0),
	MY_Z_GATE_FOR_5_9TH_13 =>
		MY_Z_GATE_FOR_5_9TH_13,
	MY_INH_CHAR_3_2_BIT_D =>
		MY_INH_CHAR_3_D_BUS(1),
	MY_Z_GATE_FOR_0_4TH_13 =>
		MY_Z_GATE_FOR_0_4TH_13,
	MY_INH_CHAR_3_4_BIT_D =>
		MY_INH_CHAR_3_D_BUS(2),
	MY_Z_GATE_FOR_5_9TH_14 =>
		MY_Z_GATE_FOR_5_9TH_14,
	MY_Z_GATE_FOR_0_4TH_14 =>
		MY_Z_GATE_FOR_0_4TH_14,
	MY_INH_CHAR_3_8_BIT_D =>
		MY_INH_CHAR_3_D_BUS(3),
	MY_INH_CHAR_3_A_BIT_D =>
		MY_INH_CHAR_3_D_BUS(4),
	MY_Z_GATE_FOR_5_9TH_15 =>
		MY_Z_GATE_FOR_5_9TH_15,
	MY_INH_CHAR_3_B_BIT_D =>
		MY_INH_CHAR_3_D_BUS(5),
	MY_Z_GATE_FOR_0_4TH_15 =>
		MY_Z_GATE_FOR_0_4TH_15,
	MY_INH_CHAR_3_C_BIT_D =>
		MY_INH_CHAR_3_D_BUS(7),
	MY_Z_GATE_FOR_0_4TH_16 =>
		MY_Z_GATE_FOR_0_4TH_16,
	MY_INH_CHAR_3_WM_BIT_D =>
		MY_INH_CHAR_3_D_BUS(6),
	MY_Z_GATE_FOR_5_9TH_16 =>
		MY_Z_GATE_FOR_5_9TH_16,
	MV_INH_CHAR_3_1_BIT_D1 =>
		XX_MV_INH_CHAR_3_1_BIT_D1,
	MV_INH_CHAR_3_1_BIT_B1 =>
		XX_MV_INH_CHAR_3_1_BIT_B1,
	MV_INH_CHAR_3_2_BIT_D1 =>
		XX_MV_INH_CHAR_3_2_BIT_D1,
	MV_INH_CHAR_3_2_BIT_B1 =>
		XX_MV_INH_CHAR_3_2_BIT_B1,
	MV_INH_CHAR_3_4_BIT_D1 =>
		XX_MV_INH_CHAR_3_4_BIT_D1,
	MV_INH_CHAR_3_4_BIT_B1 =>
		XX_MV_INH_CHAR_3_4_BIT_B1,
	MV_INH_CHAR_3_8_BIT_D1 =>
		XX_MV_INH_CHAR_3_8_BIT_D1,
	MV_INH_CHAR_3_8_BIT_B1 =>
		XX_MV_INH_CHAR_3_8_BIT_B1,
	MV_INH_CHAR_3_A_BIT_D1 =>
		XX_MV_INH_CHAR_3_A_BIT_D1,
	MV_INH_CHAR_3_A_BIT_B1 =>
		XX_MV_INH_CHAR_3_A_BIT_B1,
	MV_INH_CHAR_3_B_BIT_D1 =>
		XX_MV_INH_CHAR_3_B_BIT_D1,
	MV_INH_CHAR_3_B_BIT_B1 =>
		XX_MV_INH_CHAR_3_B_BIT_B1,
	MV_INH_CHAR_3_C_BIT_D1 =>
		XX_MV_INH_CHAR_3_C_BIT_D1,
	MV_INH_CHAR_3_C_BIT_B1 =>
		XX_MV_INH_CHAR_3_C_BIT_B1,
	MV_INH_CHAR_3_WM_BIT_D1 =>
		XX_MV_INH_CHAR_3_WM_BIT_D1,
	MV_INH_CHAR_3_WM_BIT_B1 =>
		XX_MV_INH_CHAR_3_WM_BIT_B1
	);


END;
