-- VHDL for IBM SMS ALD page 40.10.01.1
-- Title: CONSOLE MODE SWITCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/22/2020 2:23:46 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_40_10_01_1_CONSOLE_MODE_SWITCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		CONS_36V:	 in STD_LOGIC;
		SWITCH_ROT_MODE_SW:	 in STD_LOGIC_VECTOR(12 downTo 0);
		MV_CONS_MODE_SW_I_E_CYCLE_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_ADDR_SET_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_CE_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ:	 out STD_LOGIC;
		MV_CONS_MODE_SW_RUN_MODE:	 out STD_LOGIC;
		MV_CONSOLE_MODE_SW_STOP_POS:	 out STD_LOGIC;
		MV_CONS_MODE_SW_DISPLAY_MODE:	 out STD_LOGIC;
		MV_CONS_MODE_SW_ALTER_MODE:	 out STD_LOGIC);
end ALD_40_10_01_1_CONSOLE_MODE_SWITCH;

architecture behavioral of ALD_40_10_01_1_CONSOLE_MODE_SWITCH is 

	signal OUT_4B_X: STD_LOGIC;
	signal OUT_5C_A: STD_LOGIC;
	signal OUT_5C_B: STD_LOGIC;
	signal OUT_5C_K: STD_LOGIC;
	signal OUT_5C_D: STD_LOGIC;
	signal OUT_5C_E: STD_LOGIC;
	signal OUT_5C_F: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_5C_H: STD_LOGIC;
	signal OUT_5C_J: STD_LOGIC;
	signal OUT_5C_L: STD_LOGIC;
	signal OUT_5C_M: STD_LOGIC;
	signal OUT_5C_N: STD_LOGIC;
	signal OUT_4C_X: STD_LOGIC;
	signal OUT_4D_X: STD_LOGIC;
	signal OUT_4F_X: STD_LOGIC;
	signal OUT_4G_X: STD_LOGIC;
	signal OUT_4H_X: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;

begin

	OUT_4B_X <= OUT_5C_K;
	OUT_5C_A <= NOT SWITCH_ROT_MODE_SW(1);
	OUT_5C_B <= NOT SWITCH_ROT_MODE_SW(2);
	OUT_5C_K <= NOT SWITCH_ROT_MODE_SW(3);
	OUT_5C_D <= NOT SWITCH_ROT_MODE_SW(4);
	OUT_5C_E <= NOT SWITCH_ROT_MODE_SW(5);
	OUT_5C_E <= NOT SWITCH_ROT_MODE_SW(5);
	OUT_5C_F <= NOT SWITCH_ROT_MODE_SW(6);
	OUT_5C_G <= NOT SWITCH_ROT_MODE_SW(7);
	OUT_5C_H <= NOT SWITCH_ROT_MODE_SW(8);
	OUT_5C_J <= NOT SWITCH_ROT_MODE_SW(9);
	OUT_5C_L <= NOT SWITCH_ROT_MODE_SW(10);
	OUT_5C_M <= NOT SWITCH_ROT_MODE_SW(11);
	OUT_5C_N <= NOT SWITCH_ROT_MODE_SW(12);
	OUT_4C_X <= OUT_5C_E;
	OUT_4D_X <= OUT_5C_G;
	OUT_4F_X <= OUT_DOT_5D;
	OUT_4G_X <= OUT_5C_J;
	OUT_4H_X <= OUT_5C_M;
	OUT_DOT_5D <= OUT_5C_B AND OUT_5C_D AND OUT_5C_F AND OUT_5C_H AND OUT_5C_L AND OUT_5C_N;

	MV_CONS_MODE_SW_I_E_CYCLE_MODE <= OUT_4B_X;
	MV_CONS_MODE_SW_CE_MODE <= OUT_5C_A;
	MV_CONS_MODE_SW_ADDR_SET_MODE <= OUT_5C_E;
	MV_CONS_MODE_SW_ADDR_SET_MODE_JRJ <= OUT_4C_X;
	MV_CONS_MODE_SW_RUN_MODE <= OUT_4D_X;
	MV_CONSOLE_MODE_SW_STOP_POS <= OUT_4F_X;
	MV_CONS_MODE_SW_DISPLAY_MODE <= OUT_4G_X;
	MV_CONS_MODE_SW_ALTER_MODE <= OUT_4H_X;


end;