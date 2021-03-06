-- VHDL for IBM SMS ALD page 13.10.03.1
-- Title: OPERATION REGISTERS 4.2.1 BITS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/19/2020 9:43:44 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_10_03_1_OPERATION_REGISTERS_4_2_1_BITS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_B_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_SET_OP_REG:	 in STD_LOGIC;
		PS_B_CH_NOT_2_BIT:	 in STD_LOGIC;
		PS_B_CH_2_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_1_BIT:	 in STD_LOGIC;
		PS_B_CH_1_BIT:	 in STD_LOGIC;
		PS_OP_REG_4_BIT:	 out STD_LOGIC;
		PS_OP_REG_NOT_4_BIT:	 out STD_LOGIC;
		PS_OP_REG_2_BIT:	 out STD_LOGIC;
		PS_OP_REG_NOT_2_BIT:	 out STD_LOGIC;
		PS_OP_REG_1_BIT:	 out STD_LOGIC;
		PS_OP_REG_NOT_1_BIT:	 out STD_LOGIC;
		LAMP_11C8H09:	 out STD_LOGIC;
		LAMP_11C8J09:	 out STD_LOGIC;
		LAMP_11C8K09:	 out STD_LOGIC);
end ALD_13_10_03_1_OPERATION_REGISTERS_4_2_1_BITS;

architecture behavioral of ALD_13_10_03_1_OPERATION_REGISTERS_4_2_1_BITS is 

	signal OUT_2A_D: STD_LOGIC;
	signal OUT_5B_B: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_F_Latch: STD_LOGIC;
	signal OUT_3B_NoPin: STD_LOGIC;
	signal OUT_3B_NoPin_Latch: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_2C_A: STD_LOGIC;
	signal OUT_2D_C: STD_LOGIC;
	signal OUT_5E_F: STD_LOGIC;
	signal OUT_4E_P: STD_LOGIC;
	signal OUT_4E_P_Latch: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin_Latch: STD_LOGIC;
	signal OUT_2E_B: STD_LOGIC;
	signal OUT_5F_D: STD_LOGIC;
	signal OUT_2F_D: STD_LOGIC;
	signal OUT_2G_D: STD_LOGIC;
	signal OUT_5H_E: STD_LOGIC;
	signal OUT_4H_F: STD_LOGIC;
	signal OUT_4H_F_Latch: STD_LOGIC;
	signal OUT_3H_NoPin: STD_LOGIC;
	signal OUT_3H_NoPin_Latch: STD_LOGIC;
	signal OUT_2H_E: STD_LOGIC;
	signal OUT_5I_C: STD_LOGIC;
	signal OUT_2I_C: STD_LOGIC;

begin

	OUT_2A_D <= NOT OUT_4B_F;
	OUT_5B_B <= NOT(PS_B_CH_NOT_4_BIT AND PS_SET_OP_REG );
	OUT_4B_F_Latch <= NOT(OUT_5B_B AND OUT_3B_NoPin );
	OUT_3B_NoPin_Latch <= NOT(OUT_4B_F AND OUT_5C_G );
	OUT_2B_E <= NOT OUT_3B_NoPin;
	OUT_5C_G <= NOT(PS_B_CH_4_BIT AND PS_SET_OP_REG );
	OUT_2C_A <= NOT OUT_2B_E;
	LAMP_11C8H09 <= OUT_2C_A;
	OUT_2D_C <= NOT OUT_4E_P;
	OUT_5E_F <= NOT(PS_B_CH_NOT_2_BIT AND PS_SET_OP_REG );
	OUT_4E_P_Latch <= NOT(OUT_5E_F AND OUT_3E_NoPin );
	OUT_3E_NoPin_Latch <= NOT(OUT_4E_P AND OUT_5F_D );
	OUT_2E_B <= NOT OUT_3E_NoPin;
	OUT_5F_D <= NOT(PS_B_CH_2_BIT AND PS_SET_OP_REG );
	OUT_2F_D <= NOT OUT_2E_B;
	LAMP_11C8J09 <= OUT_2F_D;
	OUT_2G_D <= NOT OUT_4H_F;
	OUT_5H_E <= NOT(PS_B_CH_NOT_1_BIT AND PS_SET_OP_REG );
	OUT_4H_F_Latch <= NOT(OUT_5H_E AND OUT_3H_NoPin );
	OUT_3H_NoPin_Latch <= NOT(OUT_4H_F AND OUT_5I_C );
	OUT_2H_E <= NOT OUT_3H_NoPin;
	OUT_5I_C <= NOT(PS_SET_OP_REG AND PS_B_CH_1_BIT );
	OUT_2I_C <= NOT OUT_2H_E;
	LAMP_11C8K09 <= OUT_2I_C;

	PS_OP_REG_4_BIT <= OUT_2A_D;
	PS_OP_REG_NOT_4_BIT <= OUT_2B_E;
	PS_OP_REG_2_BIT <= OUT_2D_C;
	PS_OP_REG_NOT_2_BIT <= OUT_2E_B;
	PS_OP_REG_1_BIT <= OUT_2G_D;
	PS_OP_REG_NOT_1_BIT <= OUT_2H_E;

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

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_P_Latch,
		Q => OUT_4E_P,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_NoPin_Latch,
		Q => OUT_3E_NoPin,
		QBar => OPEN );

	Latch_4H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4H_F_Latch,
		Q => OUT_4H_F,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_NoPin_Latch,
		Q => OUT_3H_NoPin,
		QBar => OPEN );


end;
