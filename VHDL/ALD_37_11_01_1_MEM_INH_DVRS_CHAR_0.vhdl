-- VHDL for IBM SMS ALD page 37.11.01.1
-- Title: MEM INH DVRS CHAR 0
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/19/2020 4:45:15 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_37_11_01_1_MEM_INH_DVRS_CHAR_0 is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_INH_CHAR_0_1_BIT_D:	 in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_5:	 in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_1:	 in STD_LOGIC;
		MY_INH_CHAR_0_2_BIT_D:	 in STD_LOGIC;
		MY_INH_CHAR_0_4_BIT_D:	 in STD_LOGIC;
		MY_INH_CHAR_0_8_BIT_D:	 in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_6:	 in STD_LOGIC;
		MY_INH_CHAR_0_A_BIT_D:	 in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_2:	 in STD_LOGIC;
		MY_INH_CHAR_0_B_BIT_D:	 in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_7:	 in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_3:	 in STD_LOGIC;
		MY_INH_CHAR_0_C_BIT_D:	 in STD_LOGIC;
		MY_Z_GATE_FOR_5_9TH_8:	 in STD_LOGIC;
		MY_Z_GATE_FOR_0_4TH_4:	 in STD_LOGIC;
		MY_INH_CHAR_0_WM_BIT_D:	 in STD_LOGIC;
		MV_INH_CHAR_0_1_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_1_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_2_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_2_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_4_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_4_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_8_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_8_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_A_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_A_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_B_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_B_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_C_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_C_BIT_B1:	 out STD_LOGIC;
		MV_INH_CHAR_0_WM_BIT_D1:	 out STD_LOGIC;
		MV_INH_CHAR_0_WM_BIT_B1:	 out STD_LOGIC);
end ALD_37_11_01_1_MEM_INH_DVRS_CHAR_0;

architecture behavioral of ALD_37_11_01_1_MEM_INH_DVRS_CHAR_0 is 

	signal OUT_4A_D: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_4B_D: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_4D_D: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_2G_D: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_2H_D: STD_LOGIC;

begin

	OUT_4A_D <= MY_INH_CHAR_0_1_BIT_D OR MY_Z_GATE_FOR_5_9TH_5;
	OUT_2A_D <= MY_INH_CHAR_0_1_BIT_D OR MY_Z_GATE_FOR_0_4TH_1;
	OUT_4B_D <= MY_INH_CHAR_0_2_BIT_D OR MY_Z_GATE_FOR_5_9TH_5;
	OUT_2B_D <= MY_INH_CHAR_0_2_BIT_D OR MY_Z_GATE_FOR_0_4TH_1;
	OUT_4C_D <= MY_INH_CHAR_0_4_BIT_D OR MY_Z_GATE_FOR_5_9TH_6;
	OUT_2C_D <= MY_INH_CHAR_0_4_BIT_D OR MY_Z_GATE_FOR_0_4TH_2;
	OUT_4D_D <= MY_INH_CHAR_0_8_BIT_D OR MY_Z_GATE_FOR_5_9TH_6;
	OUT_2D_D <= MY_INH_CHAR_0_8_BIT_D OR MY_Z_GATE_FOR_0_4TH_2;
	OUT_4E_D <= MY_INH_CHAR_0_A_BIT_D OR MY_Z_GATE_FOR_5_9TH_7;
	OUT_2E_D <= MY_INH_CHAR_0_A_BIT_D OR MY_Z_GATE_FOR_0_4TH_3;
	OUT_4F_D <= MY_INH_CHAR_0_B_BIT_D OR MY_Z_GATE_FOR_5_9TH_7;
	OUT_2F_D <= MY_INH_CHAR_0_B_BIT_D OR MY_Z_GATE_FOR_0_4TH_3;
	OUT_4G_D <= MY_INH_CHAR_0_C_BIT_D OR MY_Z_GATE_FOR_5_9TH_8;
	OUT_2G_D <= MY_INH_CHAR_0_C_BIT_D OR MY_Z_GATE_FOR_0_4TH_4;
	OUT_4H_D <= MY_INH_CHAR_0_WM_BIT_D OR MY_Z_GATE_FOR_5_9TH_8;
	OUT_2H_D <= MY_INH_CHAR_0_WM_BIT_D OR MY_Z_GATE_FOR_0_4TH_4;

	MV_INH_CHAR_0_1_BIT_B1 <= OUT_4A_D;
	MV_INH_CHAR_0_1_BIT_D1 <= OUT_2A_D;
	MV_INH_CHAR_0_2_BIT_B1 <= OUT_4B_D;
	MV_INH_CHAR_0_2_BIT_D1 <= OUT_2B_D;
	MV_INH_CHAR_0_4_BIT_B1 <= OUT_4C_D;
	MV_INH_CHAR_0_4_BIT_D1 <= OUT_2C_D;
	MV_INH_CHAR_0_8_BIT_B1 <= OUT_4D_D;
	MV_INH_CHAR_0_8_BIT_D1 <= OUT_2D_D;
	MV_INH_CHAR_0_A_BIT_B1 <= OUT_4E_D;
	MV_INH_CHAR_0_A_BIT_D1 <= OUT_2E_D;
	MV_INH_CHAR_0_B_BIT_B1 <= OUT_4F_D;
	MV_INH_CHAR_0_B_BIT_D1 <= OUT_2F_D;
	MV_INH_CHAR_0_C_BIT_B1 <= OUT_4G_D;
	MV_INH_CHAR_0_C_BIT_D1 <= OUT_2G_D;
	MV_INH_CHAR_0_WM_BIT_B1 <= OUT_4H_D;
	MV_INH_CHAR_0_WM_BIT_D1 <= OUT_2H_D;


end;
