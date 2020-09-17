-- VHDL for IBM SMS ALD page 15.56.01.1
-- Title: F CH UNIT NUMBER REGISTER
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/17/2020 4:24:25 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_56_01_1_F_CH_UNIT_NUMBER_REGISTER is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ASSEMBLY_CH_NU_C_BIT:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_8_BIT:	 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_4_BIT:	 in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK:	 in STD_LOGIC;
		PS_I_RING_5_TIME:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_NOT_C_BIT:	 out STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_C_BIT:	 out STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_NOT_8_BIT:	 out STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_8_BIT:	 out STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_NOT_4_BIT:	 out STD_LOGIC;
		PS_F_CH_UNIT_NU_REG_4_BIT:	 out STD_LOGIC;
		PS_SET_F_CH_UNIT_NU_REG:	 out STD_LOGIC);
end ALD_15_56_01_1_F_CH_UNIT_NUMBER_REGISTER;

architecture behavioral of ALD_15_56_01_1_F_CH_UNIT_NUMBER_REGISTER is 

	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_F_Latch: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin_Latch: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_5C_R: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_4D_F: STD_LOGIC;
	signal OUT_4D_F_Latch: STD_LOGIC;
	signal OUT_3D_NoPin: STD_LOGIC;
	signal OUT_3D_NoPin_Latch: STD_LOGIC;
	signal OUT_2D_E: STD_LOGIC;
	signal OUT_5E_R: STD_LOGIC;
	signal OUT_2E_D: STD_LOGIC;
	signal OUT_4F_F: STD_LOGIC;
	signal OUT_4F_F_Latch: STD_LOGIC;
	signal OUT_3F_NoPin: STD_LOGIC;
	signal OUT_3F_NoPin_Latch: STD_LOGIC;
	signal OUT_2F_E: STD_LOGIC;
	signal OUT_5G_R: STD_LOGIC;
	signal OUT_2G_D: STD_LOGIC;
	signal OUT_5H_G: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;

begin

	OUT_4B_F_Latch <= NOT(MS_F_CH_RESET AND OUT_3B_NoPin );
	OUT_3B_NoPin_Latch <= NOT(OUT_4B_F AND OUT_5C_R );
	OUT_2B_E <= NOT OUT_3B_NoPin;
	OUT_5C_R <= NOT(PS_ASSEMBLY_CH_NU_C_BIT AND OUT_4H_C );
	OUT_2C_D <= NOT OUT_4B_F;
	OUT_4D_F_Latch <= NOT(MS_F_CH_RESET AND OUT_3D_NoPin );
	OUT_3D_NoPin_Latch <= NOT(OUT_4D_F AND OUT_5E_R );
	OUT_2D_E <= NOT OUT_3D_NoPin;
	OUT_5E_R <= NOT(PS_ASSEMBLY_CH_8_BIT AND OUT_4H_C );
	OUT_2E_D <= NOT OUT_4D_F;
	OUT_4F_F_Latch <= NOT(MS_F_CH_RESET AND OUT_3F_NoPin );
	OUT_3F_NoPin_Latch <= NOT(OUT_4F_F AND OUT_5G_R );
	OUT_2F_E <= NOT OUT_3F_NoPin;
	OUT_5G_R <= NOT(OUT_4H_C AND PS_ASSEMBLY_CH_4_BIT );
	OUT_2G_D <= NOT OUT_4F_F;
	OUT_5H_G <= NOT(PS_LOZENGE_OR_ASTERISK AND PS_I_RING_5_TIME AND PS_LAST_LOGIC_GATE_1 );
	OUT_4H_C <= NOT OUT_5H_G;

	PS_F_CH_UNIT_NU_REG_NOT_C_BIT <= OUT_2B_E;
	PS_F_CH_UNIT_NU_REG_C_BIT <= OUT_2C_D;
	PS_F_CH_UNIT_NU_REG_NOT_8_BIT <= OUT_2D_E;
	PS_F_CH_UNIT_NU_REG_8_BIT <= OUT_2E_D;
	PS_F_CH_UNIT_NU_REG_NOT_4_BIT <= OUT_2F_E;
	PS_F_CH_UNIT_NU_REG_4_BIT <= OUT_2G_D;
	PS_SET_F_CH_UNIT_NU_REG <= OUT_4H_C;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_F_Latch,
		Q => OUT_4B_F,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_NoPin_Latch,
		Q => OUT_3B_NoPin,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_F_Latch,
		Q => OUT_4D_F,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_NoPin_Latch,
		Q => OUT_3D_NoPin,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_F_Latch,
		Q => OUT_4F_F,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_NoPin_Latch,
		Q => OUT_3F_NoPin,
		QBar => OPEN );


end;
