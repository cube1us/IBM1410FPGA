-- VHDL for IBM SMS ALD page 15.70.32.1
-- Title: F CH LINE DRIVERS B A AND 8 BITS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/28/2020 10:30:42 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_70_32_1_F_CH_LINE_DRIVERS_B_A_AND_8_BITS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_F2_REG_B_BIT:	 in STD_LOGIC;
		MS_F2_REG_A_BIT:	 in STD_LOGIC;
		MS_F2_REG_8_BIT:	 in STD_LOGIC;
		MC_CPU_TO_F_CH_TAU_B_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_1301_B_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_1405_B_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_TAU_A_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_1301_A_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_1405_A_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_TAU_8_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_1301_8_BIT:	 out STD_LOGIC;
		MC_CPU_TO_F_CH_1405_8_BIT:	 out STD_LOGIC);
end ALD_15_70_32_1_F_CH_LINE_DRIVERS_B_A_AND_8_BITS;

architecture behavioral of ALD_15_70_32_1_F_CH_LINE_DRIVERS_B_A_AND_8_BITS is 

	signal OUT_3A_H: STD_LOGIC;
	signal OUT_3B_H: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_3E_A: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_3H_E: STD_LOGIC;

begin

	OUT_3A_H <= MS_F2_REG_B_BIT;
	OUT_3B_H <= MS_F2_REG_B_BIT;
	OUT_3D_A <= MS_F2_REG_A_BIT;
	OUT_3E_A <= MS_F2_REG_A_BIT;
	OUT_3G_E <= MS_F2_REG_8_BIT;
	OUT_3H_E <= MS_F2_REG_8_BIT;

	MC_CPU_TO_F_CH_TAU_B_BIT <= OUT_3A_H;
	MC_CPU_TO_F_CH_1301_B_BIT <= OUT_3B_H;
	MC_CPU_TO_F_CH_1405_B_BIT <= OUT_3B_H;
	MC_CPU_TO_F_CH_TAU_A_BIT <= OUT_3D_A;
	MC_CPU_TO_F_CH_1301_A_BIT <= OUT_3E_A;
	MC_CPU_TO_F_CH_1405_A_BIT <= OUT_3E_A;
	MC_CPU_TO_F_CH_TAU_8_BIT <= OUT_3G_E;
	MC_CPU_TO_F_CH_1301_8_BIT <= OUT_3H_E;
	MC_CPU_TO_F_CH_1405_8_BIT <= OUT_3H_E;


end;
