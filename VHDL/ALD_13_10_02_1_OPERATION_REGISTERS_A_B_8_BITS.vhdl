-- VHDL for IBM SMS ALD page 13.10.02.1
-- Title: OPERATION REGISTERS A.B.8 BITS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/19/2020 9:43:38 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_10_02_1_OPERATION_REGISTERS_A_B_8_BITS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_SET_OP_REG:	 in STD_LOGIC;
		PS_B_CH_NOT_A_BIT:	 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_8_BIT:	 in STD_LOGIC;
		PS_B_CH_8_BIT:	 in STD_LOGIC;
		PS_OP_REG_B_BIT:	 out STD_LOGIC;
		PS_OP_REG_NOT_B_BIT:	 out STD_LOGIC;
		MS_OP_REG_A_BIT:	 out STD_LOGIC;
		PS_OP_REG_A_BIT:	 out STD_LOGIC;
		PS_OP_REG_NOT_A_BIT:	 out STD_LOGIC;
		PS_OP_REG_8_BIT:	 out STD_LOGIC;
		PS_OP_REG_NOT_8_BIT:	 out STD_LOGIC;
		LAMP_11C8E09:	 out STD_LOGIC;
		LAMP_11C8F09:	 out STD_LOGIC;
		LAMP_11C8G09:	 out STD_LOGIC);
end ALD_13_10_02_1_OPERATION_REGISTERS_A_B_8_BITS;

architecture behavioral of ALD_13_10_02_1_OPERATION_REGISTERS_A_B_8_BITS is 

	signal OUT_2A_C: STD_LOGIC;
	signal OUT_5B_B: STD_LOGIC;
	signal OUT_4B_P: STD_LOGIC;
	signal OUT_4B_P_Latch: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin_Latch: STD_LOGIC;
	signal OUT_2B_B: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_2C_K: STD_LOGIC;
	signal OUT_2D_D: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_5E_F: STD_LOGIC;
	signal OUT_4E_F: STD_LOGIC;
	signal OUT_4E_F_Latch: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin_Latch: STD_LOGIC;
	signal OUT_2E_E: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_2F_E: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_5H_E: STD_LOGIC;
	signal OUT_4H_P: STD_LOGIC;
	signal OUT_4H_P_Latch: STD_LOGIC;
	signal OUT_3H_NoPin: STD_LOGIC;
	signal OUT_3H_NoPin_Latch: STD_LOGIC;
	signal OUT_2H_B: STD_LOGIC;
	signal OUT_5I_G: STD_LOGIC;
	signal OUT_2I_B: STD_LOGIC;

begin

	OUT_2A_C <= NOT OUT_4B_P;
	OUT_5B_B <= NOT(PS_B_CH_NOT_B_BIT AND PS_SET_OP_REG );
	OUT_4B_P_Latch <= NOT(OUT_5B_B AND OUT_3B_NoPin );
	OUT_3B_NoPin_Latch <= NOT(OUT_4B_P AND OUT_5C_G );
	OUT_2B_B <= NOT OUT_3B_NoPin;
	OUT_5C_G <= NOT(PS_B_CH_B_BIT AND PS_SET_OP_REG );
	OUT_2C_K <= NOT OUT_2B_B;
	LAMP_11C8E09 <= OUT_2C_K;
	OUT_2D_D <= NOT OUT_4E_F;
	OUT_1D_C <= NOT(OUT_2D_D );
	OUT_5E_F <= NOT(PS_B_CH_NOT_A_BIT AND PS_SET_OP_REG );
	OUT_4E_F_Latch <= NOT(OUT_5E_F AND OUT_3E_NoPin );
	OUT_3E_NoPin_Latch <= NOT(OUT_4E_F AND OUT_5F_D );
	OUT_2E_E <= NOT OUT_3E_NoPin;
	OUT_5F_D <= NOT(PS_B_CH_A_BIT AND PS_SET_OP_REG );
	OUT_2F_E <= NOT OUT_2E_E;
	LAMP_11C8F09 <= OUT_2F_E;
	OUT_2G_C <= NOT OUT_4H_P;
	OUT_5H_E <= NOT(PS_B_CH_NOT_8_BIT AND PS_SET_OP_REG );
	OUT_4H_P_Latch <= NOT(OUT_5H_E AND OUT_3H_NoPin );
	OUT_3H_NoPin_Latch <= NOT(OUT_4H_P AND OUT_5I_G );
	OUT_2H_B <= NOT OUT_3H_NoPin;
	OUT_5I_G <= NOT(PS_SET_OP_REG AND PS_B_CH_8_BIT );
	OUT_2I_B <= NOT OUT_2H_B;
	LAMP_11C8G09 <= OUT_2I_B;

	PS_OP_REG_B_BIT <= OUT_2A_C;
	PS_OP_REG_NOT_B_BIT <= OUT_2B_B;
	PS_OP_REG_A_BIT <= OUT_2D_D;
	MS_OP_REG_A_BIT <= OUT_1D_C;
	PS_OP_REG_NOT_A_BIT <= OUT_2E_E;
	PS_OP_REG_8_BIT <= OUT_2G_C;
	PS_OP_REG_NOT_8_BIT <= OUT_2H_B;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_P_Latch,
		Q => OUT_4B_P,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_NoPin_Latch,
		Q => OUT_3B_NoPin,
		QBar => OPEN );

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_F_Latch,
		Q => OUT_4E_F,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_NoPin_Latch,
		Q => OUT_3E_NoPin,
		QBar => OPEN );

	Latch_4H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4H_P_Latch,
		Q => OUT_4H_P,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_NoPin_Latch,
		Q => OUT_3H_NoPin,
		QBar => OPEN );


end;
