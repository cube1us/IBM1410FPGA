-- VHDL for IBM SMS ALD group YLSMSDrvrEncoder
-- Title: YLSMSDrvrEncoder
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/16/2020 3:20:25 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity YLSMSDrvrEncoder is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MY_Y_WR_1: in STD_LOGIC;
		MY_Y_RD_1: in STD_LOGIC;
		MY_Y_RD_2: in STD_LOGIC;
		MY_Y_WR_2: in STD_LOGIC;
		MY_MEM_AR_NOT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_HP8B_Z: out STD_LOGIC;
		MY_MEM_AR_NOT_HP4B_Z: out STD_LOGIC;
		MY_MEM_AR_NOT_HP2B_Z: out STD_LOGIC;
		MY_MEM_AR_NOT_HP1B_Z: out STD_LOGIC;
		MY_MEM_AR_NOT_HP0B_Z: out STD_LOGIC;
		PY_Y_RD_2: out STD_LOGIC;
		PY_Y_LSMS_DRVR_BUS: out STD_LOGIC_VECTOR (14 downTo 0));
end YLSMSDrvrEncoder;


ARCHITECTURE structural of YLSMSDrvrEncoder is

	 signal XX_PY_Y_LSMS_DRVR_1: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_2: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_3: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_4: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_5: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_6: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_7: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_8: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_9: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_10: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_11: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_14: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_12: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_15: STD_LOGIC;
	 signal XX_PY_Y_LSMS_DRVR_13: STD_LOGIC;

BEGIN


	PY_Y_LSMS_DRVR_BUS <= (
		XX_PY_Y_LSMS_DRVR_15,
		XX_PY_Y_LSMS_DRVR_14,
		XX_PY_Y_LSMS_DRVR_13,
		XX_PY_Y_LSMS_DRVR_12,
		XX_PY_Y_LSMS_DRVR_11,
		XX_PY_Y_LSMS_DRVR_10,
		XX_PY_Y_LSMS_DRVR_9,
		XX_PY_Y_LSMS_DRVR_8,
		XX_PY_Y_LSMS_DRVR_7,
		XX_PY_Y_LSMS_DRVR_6,
		XX_PY_Y_LSMS_DRVR_5,
		XX_PY_Y_LSMS_DRVR_4,
		XX_PY_Y_LSMS_DRVR_3,
		XX_PY_Y_LSMS_DRVR_2,
		XX_PY_Y_LSMS_DRVR_1);

Page_33_10_01_1: ENTITY ALD_33_10_01_1_Y_LSMS_DRVR_ECDR_1_5_FEATURE
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_MEM_AR_HP8B =>
		MY_MEM_AR_HP_BUS(4),
	MY_MEM_AR_HP4B =>
		MY_MEM_AR_HP_BUS(3),
	MY_MEM_AR_NOT_HP8B =>
		MY_MEM_AR_NOT_HP_BUS(4),
	MY_MEM_AR_NOT_HP4B =>
		MY_MEM_AR_NOT_HP_BUS(3),
	MY_Y_WR_1 =>
		MY_Y_WR_1,
	MY_MEM_AR_HP2B =>
		MY_MEM_AR_HP_BUS(2),
	MY_Y_RD_1 =>
		MY_Y_RD_1,
	MY_MEM_AR_HP1B =>
		MY_MEM_AR_HP_BUS(1),
	MY_MEM_AR_NOT_HP2B =>
		MY_MEM_AR_NOT_HP_BUS(2),
	MY_MEM_AR_NOT_HP1B =>
		MY_MEM_AR_NOT_HP_BUS(1),
	MY_MEM_AR_HP0B =>
		MY_MEM_AR_HP_BUS(0),
	MY_MEM_AR_NOT_HP0B =>
		MY_MEM_AR_NOT_HP_BUS(0),
	MY_MEM_AR_NOT_HP8B_Z =>
		MY_MEM_AR_NOT_HP8B_Z,
	PY_Y_LSMS_DRVR_1 =>
		XX_PY_Y_LSMS_DRVR_1,
	MY_MEM_AR_NOT_HP4B_Z =>
		MY_MEM_AR_NOT_HP4B_Z,
	PY_Y_LSMS_DRVR_2 =>
		XX_PY_Y_LSMS_DRVR_2,
	PY_Y_LSMS_DRVR_3 =>
		XX_PY_Y_LSMS_DRVR_3,
	MY_MEM_AR_NOT_HP2B_Z =>
		MY_MEM_AR_NOT_HP2B_Z,
	PY_Y_LSMS_DRVR_4 =>
		XX_PY_Y_LSMS_DRVR_4,
	MY_MEM_AR_NOT_HP1B_Z =>
		MY_MEM_AR_NOT_HP1B_Z,
	PY_Y_LSMS_DRVR_5 =>
		XX_PY_Y_LSMS_DRVR_5,
	MY_MEM_AR_NOT_HP0B_Z =>
		MY_MEM_AR_NOT_HP0B_Z
	);

Page_33_10_02_1: ENTITY ALD_33_10_02_1_Y_LSMS_DRVR_ECDR_4_8
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_MEM_AR_HP2B =>
		MY_MEM_AR_HP_BUS(2),
	MY_Y_RD_1 =>
		MY_Y_RD_1,
	MY_MEM_AR_HP1B =>
		MY_MEM_AR_HP_BUS(1),
	MY_Y_WR_1 =>
		MY_Y_WR_1,
	MY_MEM_AR_NOT_HP2B =>
		MY_MEM_AR_NOT_HP_BUS(2),
	MY_MEM_AR_NOT_HP1B =>
		MY_MEM_AR_NOT_HP_BUS(1),
	MY_MEM_AR_HP0B =>
		MY_MEM_AR_HP_BUS(0),
	MY_MEM_AR_NOT_HP0B =>
		MY_MEM_AR_NOT_HP_BUS(0),
	PY_Y_LSMS_DRVR_6 =>
		XX_PY_Y_LSMS_DRVR_6,
	PY_Y_LSMS_DRVR_7 =>
		XX_PY_Y_LSMS_DRVR_7,
	PY_Y_LSMS_DRVR_8 =>
		XX_PY_Y_LSMS_DRVR_8
	);

Page_33_10_03_1: ENTITY ALD_33_10_03_1_Y_LSMS_DRVR_ECDR_9_11
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_MEM_AR_HP4B =>
		MY_MEM_AR_HP_BUS(3),
	MY_Y_RD_2 =>
		MY_Y_RD_2,
	MY_MEM_AR_HP0B =>
		MY_MEM_AR_HP_BUS(0),
	MY_MEM_AR_NOT_HP0B =>
		MY_MEM_AR_NOT_HP_BUS(0),
	MY_MEM_AR_NOT_HP4B =>
		MY_MEM_AR_NOT_HP_BUS(3),
	MY_Y_WR_2 =>
		MY_Y_WR_2,
	MY_MEM_AR_HP1B =>
		MY_MEM_AR_HP_BUS(1),
	MY_MEM_AR_NOT_HP1B =>
		MY_MEM_AR_NOT_HP_BUS(1),
	MY_MEM_AR_HP2B =>
		MY_MEM_AR_HP_BUS(2),
	MY_MEM_AR_NOT_HP2B =>
		MY_MEM_AR_NOT_HP_BUS(2),
	PY_Y_LSMS_DRVR_9 =>
		XX_PY_Y_LSMS_DRVR_9,
	PY_Y_LSMS_DRVR_10 =>
		XX_PY_Y_LSMS_DRVR_10,
	PY_Y_LSMS_DRVR_11 =>
		XX_PY_Y_LSMS_DRVR_11
	);

Page_33_10_04_1: ENTITY ALD_33_10_04_1_Y_LSMS_DRVR_ECDR_12_15
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_MEM_AR_HP0B =>
		MY_MEM_AR_HP_BUS(0),
	MY_MEM_AR_HP2B =>
		MY_MEM_AR_HP_BUS(2),
	MY_MEM_AR_NOT_HP0B =>
		MY_MEM_AR_NOT_HP_BUS(0),
	MY_MEM_AR_NOT_HP2B =>
		MY_MEM_AR_NOT_HP_BUS(2),
	MY_MEM_AR_HP8B =>
		MY_MEM_AR_HP_BUS(4),
	MY_Y_WR_2 =>
		MY_Y_WR_2,
	MY_MEM_AR_NOT_HP8B =>
		MY_MEM_AR_NOT_HP_BUS(4),
	MY_Y_RD_2 =>
		MY_Y_RD_2,
	MY_MEM_AR_HP1B =>
		MY_MEM_AR_HP_BUS(1),
	MY_MEM_AR_HP4B =>
		MY_MEM_AR_HP_BUS(3),
	MY_MEM_AR_NOT_HP1B =>
		MY_MEM_AR_NOT_HP_BUS(1),
	MY_MEM_AR_NOT_HP4B =>
		MY_MEM_AR_NOT_HP_BUS(3),
	PY_Y_LSMS_DRVR_14 =>
		XX_PY_Y_LSMS_DRVR_14,
	PY_Y_LSMS_DRVR_12 =>
		XX_PY_Y_LSMS_DRVR_12,
	PY_Y_RD_2 =>
		PY_Y_RD_2,
	PY_Y_LSMS_DRVR_15 =>
		XX_PY_Y_LSMS_DRVR_15,
	PY_Y_LSMS_DRVR_13 =>
		XX_PY_Y_LSMS_DRVR_13
	);


END;
