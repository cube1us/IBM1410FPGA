-- VHDL for IBM SMS ALD page 14.30.03.1
-- Title: ADDRESS MODIFICATION
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/28/2020 10:42:52 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_30_03_1_ADDRESS_MODIFICATION is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PY_MEM_AR_TTHP0B_TO_MOD:	 in STD_LOGIC;
		PY_MEM_AR_THP0B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_HP0B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TP0B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_UP0B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TTHP1B_TO_MOD:	 in STD_LOGIC;
		PY_MEM_AR_THP1B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_HP1B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TP1B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_UP1B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TTHP2B_TO_MOD:	 in STD_LOGIC;
		PY_MEM_AR_THP2B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_HP2B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TP2B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_UP2B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TTHP4B_TO_MOD:	 in STD_LOGIC;
		PY_MEM_AR_THP4B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_HP4B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TP4B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_UP4B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TTHP8B_TO_MOD:	 in STD_LOGIC;
		PY_MEM_AR_THP8B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_HP8B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_TP8B_TO_ADDR_MOD:	 in STD_LOGIC;
		PY_MEM_AR_UP8B_TO_ADDR_MOD:	 in STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_0_BIT:	 out STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_1_BIT:	 out STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_2_BIT:	 out STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_4_BIT:	 out STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_8_BIT:	 out STD_LOGIC);
end ALD_14_30_03_1_ADDRESS_MODIFICATION;

architecture behavioral of ALD_14_30_03_1_ADDRESS_MODIFICATION is 

	signal OUT_2A_A: STD_LOGIC;
	signal OUT_2C_P: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_2I_D: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_5C: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;
	signal OUT_DOT_5G: STD_LOGIC;
	signal OUT_DOT_5I: STD_LOGIC;

begin

	OUT_2A_A <= NOT OUT_DOT_5A;
	OUT_2C_P <= NOT OUT_DOT_5C;
	OUT_2E_D <= NOT OUT_DOT_5E;
	OUT_2G_A <= NOT OUT_DOT_5G;
	OUT_2I_D <= NOT OUT_DOT_5I;
	OUT_DOT_5A <= PY_MEM_AR_TTHP0B_TO_MOD OR PY_MEM_AR_THP0B_TO_ADDR_MOD OR PY_MEM_AR_HP0B_TO_ADDR_MOD OR PY_MEM_AR_TP0B_TO_ADDR_MOD OR PY_MEM_AR_UP0B_TO_ADDR_MOD;
	OUT_DOT_5C <= PY_MEM_AR_TTHP1B_TO_MOD OR PY_MEM_AR_THP1B_TO_ADDR_MOD OR PY_MEM_AR_HP1B_TO_ADDR_MOD OR PY_MEM_AR_TP1B_TO_ADDR_MOD OR PY_MEM_AR_UP1B_TO_ADDR_MOD;
	OUT_DOT_5E <= PY_MEM_AR_TTHP2B_TO_MOD OR PY_MEM_AR_THP2B_TO_ADDR_MOD OR PY_MEM_AR_HP2B_TO_ADDR_MOD OR PY_MEM_AR_TP2B_TO_ADDR_MOD OR PY_MEM_AR_UP2B_TO_ADDR_MOD;
	OUT_DOT_5G <= PY_MEM_AR_TTHP4B_TO_MOD OR PY_MEM_AR_THP4B_TO_ADDR_MOD OR PY_MEM_AR_HP4B_TO_ADDR_MOD OR PY_MEM_AR_TP4B_TO_ADDR_MOD OR PY_MEM_AR_UP4B_TO_ADDR_MOD;
	OUT_DOT_5I <= PY_MEM_AR_TTHP8B_TO_MOD OR PY_MEM_AR_THP8B_TO_ADDR_MOD OR PY_MEM_AR_HP8B_TO_ADDR_MOD OR PY_MEM_AR_TP8B_TO_ADDR_MOD OR PY_MEM_AR_UP8B_TO_ADDR_MOD;

	MY_MEM_AR_TO_ADDR_MOD_0_BIT <= OUT_2A_A;
	MY_MEM_AR_TO_ADDR_MOD_1_BIT <= OUT_2C_P;
	MY_MEM_AR_TO_ADDR_MOD_2_BIT <= OUT_2E_D;
	MY_MEM_AR_TO_ADDR_MOD_4_BIT <= OUT_2G_A;
	MY_MEM_AR_TO_ADDR_MOD_8_BIT <= OUT_2I_D;


end;
