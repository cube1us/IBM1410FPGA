-- VHDL for IBM SMS ALD page 14.18.20.1
-- Title: BIN REGISTERS B4 AND B8-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/27/2020 5:40:56 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_18_20_1_BIN_REGISTERS_B4_AND_B8_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_SET_BIN_REG_B4_DOT_B8:	 in STD_LOGIC;
		MS_RESET_BIN_REG:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_BIN_REG_B4_BIT:	 out STD_LOGIC;
		PS_BIN_REG_NOT_B4_BIT:	 out STD_LOGIC;
		PS_BIN_REG_B8_BIT:	 out STD_LOGIC;
		PS_BIN_REG_NOT_B8_BIT:	 out STD_LOGIC);
end ALD_14_18_20_1_BIN_REGISTERS_B4_AND_B8_ACC;

architecture behavioral of ALD_14_18_20_1_BIN_REGISTERS_B4_AND_B8_ACC is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_4B_A: STD_LOGIC;
	signal OUT_4B_A_Latch: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_3B_G_Latch: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_4D_K: STD_LOGIC;
	signal OUT_4D_K_Latch: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_3D_C_Latch: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_B_CH_A_BIT AND PS_SET_BIN_REG_B4_DOT_B8 );
	OUT_4B_A_Latch <= NOT(OUT_3B_G AND MS_RESET_BIN_REG );
	OUT_3B_G_Latch <= NOT(OUT_5A_NoPin AND OUT_4B_A );
	OUT_5C_G <= NOT(PS_SET_BIN_REG_B4_DOT_B8 AND PS_B_CH_B_BIT );
	OUT_4D_K_Latch <= NOT(OUT_3D_C AND MS_RESET_BIN_REG );
	OUT_3D_C_Latch <= NOT(OUT_5C_G AND OUT_4D_K );

	PS_BIN_REG_NOT_B4_BIT <= OUT_4B_A;
	PS_BIN_REG_B4_BIT <= OUT_3B_G;
	PS_BIN_REG_NOT_B8_BIT <= OUT_4D_K;
	PS_BIN_REG_B8_BIT <= OUT_3D_C;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_A_Latch,
		Q => OUT_4B_A,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_G_Latch,
		Q => OUT_3B_G,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_K_Latch,
		Q => OUT_4D_K,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_C_Latch,
		Q => OUT_3D_C,
		QBar => OPEN );


end;
