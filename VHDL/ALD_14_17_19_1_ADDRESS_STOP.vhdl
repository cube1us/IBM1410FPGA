-- VHDL for IBM SMS ALD page 14.17.19.1
-- Title: ADDRESS STOP
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 2:54:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_17_19_1_ADDRESS_STOP is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_MEM_AR_NOT_THP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP1B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP2B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP4B:	 in STD_LOGIC;
		MINUS_36_VOLTS:	 in STD_LOGIC;
		MY_MEM_AR_NOT_THP8B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP0B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP1B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP2B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP4B:	 in STD_LOGIC;
		MY_MEM_AR_NOT_HP8B:	 in STD_LOGIC;
		SWITCH_ROT_THOUS_SYNC_DK2:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_THOUS_SYNC_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_HUNDS_SYNC_DK2:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_ROT_HUNDS_SYNC_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		MS_MAR_SYNC_COND_JRJ:	 out STD_LOGIC;
		PS_HP8B_SYNC_COND:	 out STD_LOGIC);
end ALD_14_17_19_1_ADDRESS_STOP;

architecture behavioral of ALD_14_17_19_1_ADDRESS_STOP is 

	signal OUT_5A_A: STD_LOGIC;
	signal OUT_5A_B: STD_LOGIC;
	signal OUT_5A_K: STD_LOGIC;
	signal OUT_5A_D: STD_LOGIC;
	signal OUT_5A_E: STD_LOGIC;
	signal OUT_5A_F: STD_LOGIC;
	signal OUT_5A_G: STD_LOGIC;
	signal OUT_5A_H: STD_LOGIC;
	signal OUT_5A_J: STD_LOGIC;
	signal OUT_5A_L: STD_LOGIC;
	signal OUT_3A_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_1B_F: STD_LOGIC;
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
	signal OUT_3C_NoPin: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_1E_C: STD_LOGIC;
	signal OUT_5F_A: STD_LOGIC;
	signal OUT_5F_B: STD_LOGIC;
	signal OUT_5F_K: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_5F_E: STD_LOGIC;
	signal OUT_5F_F: STD_LOGIC;
	signal OUT_5F_G: STD_LOGIC;
	signal OUT_5F_H: STD_LOGIC;
	signal OUT_5F_J: STD_LOGIC;
	signal OUT_5F_L: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_3G_NoPin: STD_LOGIC;
	signal OUT_5H_A: STD_LOGIC;
	signal OUT_5H_B: STD_LOGIC;
	signal OUT_5H_K: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_5H_E: STD_LOGIC;
	signal OUT_5H_F: STD_LOGIC;
	signal OUT_5H_G: STD_LOGIC;
	signal OUT_5H_H: STD_LOGIC;
	signal OUT_5H_J: STD_LOGIC;
	signal OUT_5H_L: STD_LOGIC;
	signal OUT_3H_NoPin: STD_LOGIC;
	signal OUT_1H_F: STD_LOGIC;
	signal OUT_3I_NoPin: STD_LOGIC;
	signal OUT_1I_C: STD_LOGIC;
	signal OUT_DOT_1B: STD_LOGIC;
	signal OUT_DOT_5A: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_5B: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;
	signal OUT_DOT_5D: STD_LOGIC;
	signal OUT_DOT_5F: STD_LOGIC;
	signal OUT_DOT_4F: STD_LOGIC;
	signal OUT_DOT_5H: STD_LOGIC;
	signal OUT_DOT_4H: STD_LOGIC;
	signal OUT_DOT_5I: STD_LOGIC;

begin

	OUT_5A_A <= NOT SWITCH_ROT_THOUS_SYNC_DK2(1);
	OUT_5A_B <= NOT SWITCH_ROT_THOUS_SYNC_DK2(2);
	OUT_5A_K <= NOT SWITCH_ROT_THOUS_SYNC_DK2(3);
	OUT_5A_D <= NOT SWITCH_ROT_THOUS_SYNC_DK2(4);
	OUT_5A_E <= NOT SWITCH_ROT_THOUS_SYNC_DK2(5);
	OUT_5A_F <= NOT SWITCH_ROT_THOUS_SYNC_DK2(6);
	OUT_5A_G <= NOT SWITCH_ROT_THOUS_SYNC_DK2(7);
	OUT_5A_H <= NOT SWITCH_ROT_THOUS_SYNC_DK2(8);
	OUT_5A_J <= NOT SWITCH_ROT_THOUS_SYNC_DK2(9);
	OUT_5A_L <= NOT SWITCH_ROT_THOUS_SYNC_DK2(10);
	OUT_3A_NoPin <= NOT(OUT_DOT_5A AND MY_MEM_AR_NOT_THP0B );
	OUT_3B_NoPin <= NOT(OUT_DOT_4A AND MY_MEM_AR_NOT_THP1B );
	OUT_1B_F <= NOT(OUT_3A_NoPin AND OUT_3B_NoPin AND OUT_3C_NoPin );
	OUT_5C_A <= NOT SWITCH_ROT_THOUS_SYNC_DK1(1);
	OUT_5C_B <= NOT SWITCH_ROT_THOUS_SYNC_DK1(2);
	OUT_5C_K <= NOT SWITCH_ROT_THOUS_SYNC_DK1(3);
	OUT_5C_D <= NOT SWITCH_ROT_THOUS_SYNC_DK1(4);
	OUT_5C_E <= NOT SWITCH_ROT_THOUS_SYNC_DK1(5);
	OUT_5C_F <= NOT SWITCH_ROT_THOUS_SYNC_DK1(6);
	OUT_5C_G <= NOT SWITCH_ROT_THOUS_SYNC_DK1(7);
	OUT_5C_H <= NOT SWITCH_ROT_THOUS_SYNC_DK1(8);
	OUT_5C_J <= NOT SWITCH_ROT_THOUS_SYNC_DK1(9);
	OUT_5C_L <= NOT SWITCH_ROT_THOUS_SYNC_DK1(10);
	OUT_3C_NoPin <= NOT(OUT_DOT_5B AND MY_MEM_AR_NOT_THP2B );
	OUT_3D_C <= NOT(OUT_DOT_4C AND MY_MEM_AR_NOT_THP4B );
	OUT_3E_D <= NOT(OUT_DOT_5D AND MY_MEM_AR_NOT_THP8B );
	OUT_1E_C <= NOT(OUT_3D_C AND OUT_3E_D AND OUT_3F_D );
	OUT_5F_A <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(1);
	OUT_5F_B <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(2);
	OUT_5F_K <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(3);
	OUT_5F_D <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(4);
	OUT_5F_E <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(5);
	OUT_5F_F <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(6);
	OUT_5F_G <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(7);
	OUT_5F_H <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(8);
	OUT_5F_J <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(9);
	OUT_5F_L <= NOT SWITCH_ROT_HUNDS_SYNC_DK2(10);
	OUT_3F_D <= NOT(OUT_DOT_5F AND MY_MEM_AR_NOT_HP0B );
	OUT_3G_NoPin <= NOT(OUT_DOT_4F AND MY_MEM_AR_NOT_HP1B );
	OUT_5H_A <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(1);
	OUT_5H_B <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(2);
	OUT_5H_K <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(3);
	OUT_5H_D <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(4);
	OUT_5H_E <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(5);
	OUT_5H_F <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(6);
	OUT_5H_G <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(7);
	OUT_5H_H <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(8);
	OUT_5H_J <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(9);
	OUT_5H_L <= NOT SWITCH_ROT_HUNDS_SYNC_DK1(10);
	OUT_3H_NoPin <= NOT(OUT_DOT_5H AND MY_MEM_AR_NOT_HP2B );
	OUT_1H_F <= NOT(OUT_3G_NoPin AND OUT_3H_NoPin AND OUT_3I_NoPin );
	OUT_3I_NoPin <= NOT(OUT_DOT_4H AND MY_MEM_AR_NOT_HP4B );
	OUT_1I_C <= NOT(OUT_DOT_5I AND MY_MEM_AR_NOT_HP8B );
	OUT_DOT_1B <= OUT_1B_F OR OUT_1E_C OR OUT_1H_F;
	OUT_DOT_5A <= OUT_5A_A AND OUT_5A_B AND OUT_5A_D AND OUT_5A_H;
	OUT_DOT_4A <= OUT_5A_K AND OUT_5A_E AND OUT_5A_J AND OUT_5C_A;
	OUT_DOT_5B <= OUT_5A_F AND OUT_5A_L AND OUT_5C_B AND OUT_5C_K;
	OUT_DOT_4C <= OUT_5C_D AND OUT_5C_E AND OUT_5C_F AND OUT_5C_G;
	OUT_DOT_5D <= OUT_5A_G AND OUT_5C_H AND OUT_5C_J AND OUT_5C_L;
	OUT_DOT_5F <= OUT_5F_A AND OUT_5F_B AND OUT_5F_D AND OUT_5F_H;
	OUT_DOT_4F <= OUT_5F_K AND OUT_5F_E AND OUT_5F_J AND OUT_5H_A;
	OUT_DOT_5H <= OUT_5F_F AND OUT_5F_L AND OUT_5H_B AND OUT_5H_K;
	OUT_DOT_4H <= OUT_5H_D AND OUT_5H_E AND OUT_5H_F AND OUT_5H_G;
	OUT_DOT_5I <= OUT_5F_G AND OUT_5H_H AND OUT_5H_J AND OUT_5H_L;

	PS_HP8B_SYNC_COND <= OUT_1I_C;
	MS_MAR_SYNC_COND_JRJ <= OUT_DOT_1B;


end;
