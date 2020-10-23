-- VHDL for IBM SMS ALD page 40.10.03.1
-- Title: 1*OFF-NORMAL IND + STORAGE SCAN S
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/23/2020 2:09:07 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_40_10_03_1_1_OFF_NORMAL_IND_STORAGE_SCAN_S is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		MV_CONS_MODE_SW_CE_MODE:	 in STD_LOGIC;
		MV_CONS_MODE_SW_ADDR_SET_MODE:	 in STD_LOGIC;
		SWITCH_TOG_AUTO_START_PL1:	 in STD_LOGIC;
		SWITCH_ROT_ADDR_ENTRY_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_TOG_WR_INHIBIT_PL1:	 in STD_LOGIC;
		SWITCH_ROT_STOR_SCAN_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_CYCLE_CTRL_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_ADDR_ENTRY_DKA:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_CHECK_CTRL_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_TOG_INHIBIT_PO_PL1:	 in STD_LOGIC;
		SWITCH_ROT_STOR_SCAN_DK4:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_TOG_ASTERISK_PL1:	 in STD_LOGIC;
		SWITCH_ROT_STOR_SCAN_DK3:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_ADDR_ENTRY_DK2:	 in STD_LOGIC_VECTOR(12 downTo 0);
		MC_DISK_WRITE_NORMAL_STAR_F_CH:	 out STD_LOGIC;
		MC_DISK_WRITE_NORMAL_STAR_E_CH:	 out STD_LOGIC;
		MV_STORAGE_SCAN_MODE_1:	 out STD_LOGIC;
		MV_STORAGE_SCAN_MODE_2:	 out STD_LOGIC;
		MV_CONS_CE_POUND_PRINT:	 out STD_LOGIC;
		LAMP_15A1K24:	 out STD_LOGIC);
end ALD_40_10_03_1_1_OFF_NORMAL_IND_STORAGE_SCAN_S;

architecture behavioral of ALD_40_10_03_1_1_OFF_NORMAL_IND_STORAGE_SCAN_S is 

	signal OUT_3A_F: STD_LOGIC;
	signal OUT_2A_N: STD_LOGIC;
	signal OUT_5B_A: STD_LOGIC;
	signal OUT_5B_B: STD_LOGIC;
	signal OUT_4B_N: STD_LOGIC;
	signal OUT_4B_T: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_4C_A: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_4C_E: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_5D_A: STD_LOGIC;
	signal OUT_5D_K: STD_LOGIC;
	signal OUT_3D_K: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3D_F: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_5E_A: STD_LOGIC;
	signal OUT_5E_K: STD_LOGIC;
	signal OUT_3E_X: STD_LOGIC;
	signal OUT_5F_T: STD_LOGIC;
	signal OUT_4F_A: STD_LOGIC;
	signal OUT_4F_E: STD_LOGIC;
	signal OUT_4F_B: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_3F_X: STD_LOGIC;
	signal OUT_5G_T: STD_LOGIC;
	signal OUT_4G_A: STD_LOGIC;
	signal OUT_4G_B: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_4G_E: STD_LOGIC;
	signal OUT_5H_A: STD_LOGIC;
	signal OUT_5H_B: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_5H_F: STD_LOGIC;
	signal OUT_5H_G: STD_LOGIC;
	signal OUT_5H_K: STD_LOGIC;
	signal OUT_4H_A: STD_LOGIC;
	signal OUT_3H_X: STD_LOGIC;
	signal OUT_DOT_1C: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;
	signal OUT_DOT_5H: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;

begin

	OUT_3A_F <= OUT_4B_N;
	OUT_2A_N <= SWITCH_TOG_AUTO_START_PL1;
	OUT_5B_A <= NOT SWITCH_ROT_ADDR_ENTRY_DK1(1);
	OUT_5B_B <= NOT SWITCH_ROT_ADDR_ENTRY_DK1(2);
	OUT_4B_N <= SWITCH_TOG_WR_INHIBIT_PL1;
	OUT_4B_T <=  NOT SWITCH_TOG_WR_INHIBIT_PL1;
	OUT_3B_F <= OUT_4B_N;
	OUT_4C_A <= NOT SWITCH_ROT_STOR_SCAN_DK1(1);
	OUT_4C_B <= NOT SWITCH_ROT_STOR_SCAN_DK1(2);
	OUT_4C_D <= NOT SWITCH_ROT_STOR_SCAN_DK1(4);
	OUT_4C_E <= NOT SWITCH_ROT_STOR_SCAN_DK1(5);
	OUT_3C_A <= OUT_DOT_1C;
	LAMP_15A1K24 <= OUT_3C_A;
	OUT_5D_A <= NOT SWITCH_ROT_CYCLE_CTRL_DK1(1);
	OUT_5D_K <= NOT SWITCH_ROT_CYCLE_CTRL_DK1(3);
	OUT_3D_K <= NOT SWITCH_ROT_ADDR_ENTRY_DKA(3);
	OUT_3D_D <= NOT SWITCH_ROT_ADDR_ENTRY_DKA(4);
	OUT_3D_F <= NOT SWITCH_ROT_ADDR_ENTRY_DKA(6);
	OUT_3D_G <= NOT SWITCH_ROT_ADDR_ENTRY_DKA(7);
	OUT_5E_A <= NOT SWITCH_ROT_CHECK_CTRL_DK1(1);
	OUT_5E_K <= NOT SWITCH_ROT_CHECK_CTRL_DK1(3);
	OUT_3E_X <= OUT_DOT_4F;
	OUT_5F_T <=  NOT SWITCH_TOG_INHIBIT_PO_PL1;
	OUT_4F_A <= NOT SWITCH_ROT_STOR_SCAN_DK4(1);
	OUT_4F_E <= NOT SWITCH_ROT_STOR_SCAN_DK4(5);
	OUT_4F_B <= NOT SWITCH_ROT_STOR_SCAN_DK4(2);
	OUT_4F_D <= NOT SWITCH_ROT_STOR_SCAN_DK4(4);
	OUT_3F_X <= OUT_DOT_4F;
	OUT_5G_T <=  NOT SWITCH_TOG_ASTERISK_PL1;
	OUT_4G_A <= NOT SWITCH_ROT_STOR_SCAN_DK3(1);
	OUT_4G_B <= NOT SWITCH_ROT_STOR_SCAN_DK3(2);
	OUT_4G_D <= NOT SWITCH_ROT_STOR_SCAN_DK3(4);
	OUT_4G_E <= NOT SWITCH_ROT_STOR_SCAN_DK3(5);
	OUT_5H_A <= NOT SWITCH_ROT_ADDR_ENTRY_DK2(1);
	OUT_5H_B <= NOT SWITCH_ROT_ADDR_ENTRY_DK2(2);
	OUT_5H_D <= NOT SWITCH_ROT_ADDR_ENTRY_DK2(4);
	OUT_5H_F <= NOT SWITCH_ROT_ADDR_ENTRY_DK2(6);
	OUT_5H_G <= NOT SWITCH_ROT_ADDR_ENTRY_DK2(7);
	OUT_5H_K <= NOT SWITCH_ROT_ADDR_ENTRY_DK2(3);
	OUT_4H_A <= OUT_DOT_4H;
	OUT_3H_X <= OUT_DOT_5H;
	OUT_DOT_1C <= OUT_5B_A OR OUT_5B_B OR OUT_4B_T OR OUT_2A_N OR OUT_4C_A OR OUT_4C_B OR OUT_4C_D OR OUT_4C_E OR OUT_5D_A OR OUT_5D_K OR OUT_3D_K OR OUT_3D_D OR OUT_3D_F OR OUT_3D_G OR OUT_5E_A OR OUT_5E_K OR OUT_5F_T OR OUT_5G_T;
	OUT_DOT_4H <= OUT_4G_A AND OUT_4G_B AND OUT_4G_D AND OUT_4G_E;
	OUT_DOT_5H <= OUT_5H_A AND OUT_5H_B AND OUT_5H_D AND OUT_5H_F AND OUT_5H_G AND OUT_4H_A AND OUT_5H_G AND OUT_5H_K;
	OUT_DOT_4F <= OUT_4F_A AND OUT_4F_E AND OUT_4F_B AND OUT_4F_D;

	MC_DISK_WRITE_NORMAL_STAR_F_CH <= OUT_3A_F;
	MC_DISK_WRITE_NORMAL_STAR_E_CH <= OUT_3B_F;
	MV_STORAGE_SCAN_MODE_1 <= OUT_3E_X;
	MV_STORAGE_SCAN_MODE_2 <= OUT_3F_X;
	MV_CONS_CE_POUND_PRINT <= OUT_3H_X;


end;
