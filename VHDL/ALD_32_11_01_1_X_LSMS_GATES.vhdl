-- VHDL for IBM SMS ALD page 32.11.01.1
-- Title: X LSMS GATES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/16/2020 2:47:26 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_32_11_01_1_X_LSMS_GATES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_10_19:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_00_09:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_30_39:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_20_29:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_50_59:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_40_49:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_70_79:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_60_69:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_80_89:	 in STD_LOGIC;
		PY_X_LSMS_GATE_SEL_90_99:	 in STD_LOGIC;
		MV_GATE_X_LSMS_YY00_09_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY00_09_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY10_19_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY10_19_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY20_29_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY20_29_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY30_39_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY30_39_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY40_49_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY40_49_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY50_59_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY50_59_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY60_60_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY60_69_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY70_79_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY70_79_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY80_89_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY80_89_B:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY90_99_A:	 out STD_LOGIC;
		MV_GATE_X_LSMS_YY90_99_B:	 out STD_LOGIC);
end ALD_32_11_01_1_X_LSMS_GATES;

architecture behavioral of ALD_32_11_01_1_X_LSMS_GATES is 

	signal OUT_5A_D: STD_LOGIC;
	signal OUT_4A_D: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_1A_D: STD_LOGIC;
	signal OUT_5C_D: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_5E_D: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_5G_D: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_2G_D: STD_LOGIC;
	signal OUT_1G_D: STD_LOGIC;
	signal OUT_5I_D: STD_LOGIC;
	signal OUT_4I_D: STD_LOGIC;
	signal OUT_2I_D: STD_LOGIC;
	signal OUT_1I_D: STD_LOGIC;

begin

	OUT_5A_D <= NOT(PY_X_LSMS_GATE_SEL_10_19 );
	OUT_4A_D <= NOT(PY_X_LSMS_GATE_SEL_10_19 );
	OUT_2A_D <= NOT(PY_X_LSMS_GATE_SEL_00_09 );
	OUT_1A_D <= NOT(PY_X_LSMS_GATE_SEL_00_09 );
	OUT_5C_D <= NOT(PY_X_LSMS_GATE_SEL_30_39 );
	OUT_4C_D <= NOT(PY_X_LSMS_GATE_SEL_30_39 );
	OUT_2C_D <= NOT(PY_X_LSMS_GATE_SEL_20_29 );
	OUT_1C_D <= NOT(PY_X_LSMS_GATE_SEL_20_29 );
	OUT_5E_D <= NOT(PY_X_LSMS_GATE_SEL_50_59 );
	OUT_4E_D <= NOT(PY_X_LSMS_GATE_SEL_50_59 );
	OUT_2E_D <= NOT(PY_X_LSMS_GATE_SEL_40_49 );
	OUT_1E_D <= NOT(PY_X_LSMS_GATE_SEL_40_49 );
	OUT_5G_D <= NOT(PY_X_LSMS_GATE_SEL_70_79 );
	OUT_4G_D <= NOT(PY_X_LSMS_GATE_SEL_70_79 );
	OUT_2G_D <= NOT(PY_X_LSMS_GATE_SEL_60_69 );
	OUT_1G_D <= NOT(PY_X_LSMS_GATE_SEL_60_69 );
	OUT_5I_D <= NOT(PY_X_LSMS_GATE_SEL_90_99 );
	OUT_4I_D <= NOT(PY_X_LSMS_GATE_SEL_90_99 );
	OUT_2I_D <= NOT(PY_X_LSMS_GATE_SEL_80_89 );
	OUT_1I_D <= NOT(PY_X_LSMS_GATE_SEL_80_89 );

	MV_GATE_X_LSMS_YY10_19_B <= OUT_5A_D;
	MV_GATE_X_LSMS_YY10_19_A <= OUT_4A_D;
	MV_GATE_X_LSMS_YY00_09_B <= OUT_2A_D;
	MV_GATE_X_LSMS_YY00_09_A <= OUT_1A_D;
	MV_GATE_X_LSMS_YY30_39_B <= OUT_5C_D;
	MV_GATE_X_LSMS_YY30_39_A <= OUT_4C_D;
	MV_GATE_X_LSMS_YY20_29_B <= OUT_2C_D;
	MV_GATE_X_LSMS_YY20_29_A <= OUT_1C_D;
	MV_GATE_X_LSMS_YY50_59_B <= OUT_5E_D;
	MV_GATE_X_LSMS_YY50_59_A <= OUT_4E_D;
	MV_GATE_X_LSMS_YY40_49_B <= OUT_2E_D;
	MV_GATE_X_LSMS_YY40_49_A <= OUT_1E_D;
	MV_GATE_X_LSMS_YY70_79_B <= OUT_5G_D;
	MV_GATE_X_LSMS_YY70_79_A <= OUT_4G_D;
	MV_GATE_X_LSMS_YY60_69_B <= OUT_2G_D;
	MV_GATE_X_LSMS_YY60_60_A <= OUT_1G_D;
	MV_GATE_X_LSMS_YY90_99_B <= OUT_5I_D;
	MV_GATE_X_LSMS_YY90_99_A <= OUT_4I_D;
	MV_GATE_X_LSMS_YY80_89_B <= OUT_2I_D;
	MV_GATE_X_LSMS_YY80_89_A <= OUT_1I_D;


end;