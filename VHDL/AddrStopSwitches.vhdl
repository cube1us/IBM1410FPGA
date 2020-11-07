-- VHDL for IBM SMS ALD group AddrStopSwitches
-- Title: AddrStopSwitches
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 11/7/2020 2:57:16 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity AddrStopSwitches is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		M36_VOLTS: in STD_LOGIC;
		MINUS_36_VOLTS: in STD_LOGIC;
		MY_MEM_AR_NOT_UP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_TP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_HP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		MY_MEM_AR_NOT_THP_BUS: in STD_LOGIC_VECTOR (4 downTo 0);
		SWITCH_ROT_TENS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_TENS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_UNITS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_UNITS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_THOUS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_THOUS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_HUNDS_SYNC_DK2: in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_HUNDS_SYNC_DK1: in STD_LOGIC_VECTOR(12 downTo 0);
		MS_MAR_SYNC_COND: out STD_LOGIC;
		PS_UP8B_SYNC_COND: out STD_LOGIC;
		MS_MAR_SYNC_COND_JRJ: out STD_LOGIC;
		PS_HP8B_SYNC_COND: out STD_LOGIC);
end AddrStopSwitches;


ARCHITECTURE structural of AddrStopSwitches is

BEGIN

Page_14_17_17_1: ENTITY ALD_14_17_17_1_ADDRESS_STOP_ACC
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_MEM_AR_NOT_TP0B =>
		MY_MEM_AR_NOT_TP_BUS(0),
	MY_MEM_AR_NOT_TP1B =>
		MY_MEM_AR_NOT_TP_BUS(1),
	MY_MEM_AR_NOT_TP2B =>
		MY_MEM_AR_NOT_TP_BUS(2),
	MY_MEM_AR_NOT_TP4B =>
		MY_MEM_AR_NOT_TP_BUS(3),
	M36_VOLTS =>
		M36_VOLTS,
	MY_MEM_AR_NOT_TP8B =>
		MY_MEM_AR_NOT_TP_BUS(4),
	MY_MEM_AR_NOT_UP0B =>
		MY_MEM_AR_NOT_UP_BUS(0),
	MY_MEM_AR_NOT_UP1B =>
		MY_MEM_AR_NOT_UP_BUS(1),
	MY_MEM_AR_NOT_UP2B =>
		MY_MEM_AR_NOT_UP_BUS(2),
	MY_MEM_AR_NOT_UP4B =>
		MY_MEM_AR_NOT_UP_BUS(3),
	MY_MEM_AR_NOT_UP8B =>
		MY_MEM_AR_NOT_UP_BUS(4),
	SWITCH_ROT_TENS_SYNC_DK2 =>
		SWITCH_ROT_TENS_SYNC_DK2,
	SWITCH_ROT_TENS_SYNC_DK1 =>
		SWITCH_ROT_TENS_SYNC_DK1,
	SWITCH_ROT_UNITS_SYNC_DK2 =>
		SWITCH_ROT_UNITS_SYNC_DK2,
	SWITCH_ROT_UNITS_SYNC_DK1 =>
		SWITCH_ROT_UNITS_SYNC_DK1,
	MS_MAR_SYNC_COND =>
		MS_MAR_SYNC_COND,
	PS_UP8B_SYNC_COND =>
		PS_UP8B_SYNC_COND
	);

Page_14_17_19_1: ENTITY ALD_14_17_19_1_ADDRESS_STOP
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	MY_MEM_AR_NOT_THP0B =>
		MY_MEM_AR_NOT_THP_BUS(0),
	MY_MEM_AR_NOT_THP1B =>
		MY_MEM_AR_NOT_THP_BUS(1),
	MY_MEM_AR_NOT_THP2B =>
		MY_MEM_AR_NOT_THP_BUS(2),
	MY_MEM_AR_NOT_THP4B =>
		MY_MEM_AR_NOT_THP_BUS(3),
	MINUS_36_VOLTS =>
		MINUS_36_VOLTS,
	MY_MEM_AR_NOT_THP8B =>
		MY_MEM_AR_NOT_THP_BUS(4),
	MY_MEM_AR_NOT_HP0B =>
		MY_MEM_AR_NOT_HP_BUS(0),
	MY_MEM_AR_NOT_HP1B =>
		MY_MEM_AR_NOT_HP_BUS(1),
	MY_MEM_AR_NOT_HP2B =>
		MY_MEM_AR_NOT_HP_BUS(2),
	MY_MEM_AR_NOT_HP4B =>
		MY_MEM_AR_NOT_HP_BUS(3),
	MY_MEM_AR_NOT_HP8B =>
		MY_MEM_AR_NOT_HP_BUS(4),
	SWITCH_ROT_THOUS_SYNC_DK2 =>
		SWITCH_ROT_THOUS_SYNC_DK2,
	SWITCH_ROT_THOUS_SYNC_DK1 =>
		SWITCH_ROT_THOUS_SYNC_DK1,
	SWITCH_ROT_HUNDS_SYNC_DK2 =>
		SWITCH_ROT_HUNDS_SYNC_DK2,
	SWITCH_ROT_HUNDS_SYNC_DK1 =>
		SWITCH_ROT_HUNDS_SYNC_DK1,
	MS_MAR_SYNC_COND_JRJ =>
		MS_MAR_SYNC_COND_JRJ,
	PS_HP8B_SYNC_COND =>
		PS_HP8B_SYNC_COND
	);


END;
