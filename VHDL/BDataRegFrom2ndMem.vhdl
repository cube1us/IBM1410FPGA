-- VHDL for IBM SMS ALD group BDataRegFrom2ndMem
-- Title: BDataRegFrom2ndMem
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/22/2020 9:11:40 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity BDataRegFrom2ndMem is
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
end BDataRegFrom2ndMem;


ARCHITECTURE structural of BDataRegFrom2ndMem is

	 signal XX_PS_B_DATA_REG_1_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_2_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_4_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_8_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_A_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_B_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_C_BIT_STAR_FROM_M2_STAR: STD_LOGIC;
	 signal XX_PS_B_DATA_REG_WM_BIT_STAR_FROM_M2_STAR: STD_LOGIC;

BEGIN


	PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS <= (
		XX_PS_B_DATA_REG_C_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_WM_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_B_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_A_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_8_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_4_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_2_BIT_STAR_FROM_M2_STAR,
		XX_PS_B_DATA_REG_1_BIT_STAR_FROM_M2_STAR);

Page_39_50_60_1: ENTITY ALD_39_50_60_1_B_DATA_REG_FROM_2ND_MEM_TO_CPU
   PORT MAP (
	FPGA_CLK => FPGA_CLK,
	PS_B_DATA_REG_1_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(0),
	PS_B_DATA_REG_1_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(0),
	PS_B_DATA_REG_1_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(0),
	PS_B_DATA_REG_1_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(0),
	PS_B_DATA_REG_2_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(1),
	PS_B_DATA_REG_2_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(1),
	PS_B_DATA_REG_2_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(1),
	PS_B_DATA_REG_2_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(1),
	PS_B_DATA_REG_4_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(2),
	PS_B_DATA_REG_4_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(2),
	PS_B_DATA_REG_4_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(2),
	PS_B_DATA_REG_4_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(2),
	PS_B_DATA_REG_8_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(3),
	PS_B_DATA_REG_8_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(3),
	PS_B_DATA_REG_8_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(3),
	PS_B_DATA_REG_8_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(3),
	PS_B_DATA_REG_A_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(4),
	PS_B_DATA_REG_A_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(4),
	PS_B_DATA_REG_A_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(4),
	PS_B_DATA_REG_A_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(4),
	PS_B_DATA_REG_B_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(5),
	PS_B_DATA_REG_B_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(5),
	PS_B_DATA_REG_B_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(5),
	PS_B_DATA_REG_B_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(5),
	PS_B_DATA_REG_C_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(7),
	PS_B_DATA_REG_C_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(7),
	PS_B_DATA_REG_C_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(7),
	PS_B_DATA_REG_C_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(7),
	PS_B_DATA_REG_WM_BIT_STAR_0_STAR_Z =>
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS(6),
	PS_B_DATA_REG_WM_BIT_STAR_1_STAR_Z =>
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS(6),
	PS_B_DATA_REG_WM_BIT_STAR_2_STAR_Z =>
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS(6),
	PS_B_DATA_REG_WM_BIT_STAR_3_STAR_Z =>
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS(6),
	PS_B_DATA_REG_1_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_1_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_2_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_2_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_4_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_4_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_8_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_8_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_A_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_A_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_B_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_B_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_C_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_C_BIT_STAR_FROM_M2_STAR,
	PS_B_DATA_REG_WM_BIT_STAR_FROM_M2_STAR =>
		XX_PS_B_DATA_REG_WM_BIT_STAR_FROM_M2_STAR
	);


END;
