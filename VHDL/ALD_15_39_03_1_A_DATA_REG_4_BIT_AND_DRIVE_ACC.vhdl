-- VHDL for IBM SMS ALD page 15.39.03.1
-- Title: A DATA REG 4 BIT AND DRIVE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 9:48:37 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_39_03_1_A_DATA_REG_4_BIT_AND_DRIVE_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_RESET_A_DATA_REG:	 in STD_LOGIC;
		PS_B_CH_4_BIT:	 in STD_LOGIC;
		PS_SW_B_CH_TO_A_REG:	 in STD_LOGIC;
		PS_AR_CH_4_BIT_STAR_TRANSLATOR_STAR:	 in STD_LOGIC;
		PS_SW_AR_EXIT_CH_TO_A_REG:	 in STD_LOGIC;
		PS_GATE_A_DATA_REG_TO_A_CH:	 in STD_LOGIC;
		PS_E2_REG_4_BIT:	 in STD_LOGIC;
		PS_GATE_E2_DATA_REG_TO_A_CH:	 in STD_LOGIC;
		PS_OP_MOD_REG_4_BIT:	 in STD_LOGIC;
		PS_GATE_OP_MOD_REG_TO_A_CH:	 in STD_LOGIC;
		PS_F2_REG_4_BIT:	 in STD_LOGIC;
		PS_GATE_F2_DATA_REG_TO_A_CH:	 in STD_LOGIC;
		PS_A_DATA_REG_4_BIT:	 out STD_LOGIC;
		PS_A_CH_NOT_4_BIT:	 out STD_LOGIC;
		PB_A_CH_4_BIT:	 out STD_LOGIC;
		PS_A_CH_4_BIT:	 out STD_LOGIC;
		PB_A_CH_NOT_4_BIT:	 out STD_LOGIC;
		LAMP_11C8H12:	 out STD_LOGIC);
end ALD_15_39_03_1_A_DATA_REG_4_BIT_AND_DRIVE_ACC;

architecture behavioral of ALD_15_39_03_1_A_DATA_REG_4_BIT_AND_DRIVE_ACC is 

	signal OUT_2A_B: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin_Latch: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_F_Latch: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_5D_F: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_3E_H: STD_LOGIC;
	signal OUT_5F_F: STD_LOGIC;
	signal OUT_1F_P: STD_LOGIC;
	signal OUT_5G_F: STD_LOGIC;
	signal OUT_2G_H: STD_LOGIC;
	signal OUT_5H_F: STD_LOGIC;
	signal OUT_4H_K: STD_LOGIC;
	signal OUT_1H_Q: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;

begin

	OUT_2A_B <= NOT OUT_3E_H;
	LAMP_11C8H12 <= OUT_2A_B;
	OUT_5B_NoPin_Latch <= NOT(MS_RESET_A_DATA_REG AND OUT_4B_F );
	OUT_4B_F_Latch <= NOT(OUT_5B_NoPin AND OUT_5C_NoPin AND OUT_5D_F );
	OUT_5C_NoPin <= NOT(PS_B_CH_4_BIT AND PS_SW_B_CH_TO_A_REG );
	OUT_5D_F <= NOT(PS_AR_CH_4_BIT_STAR_TRANSLATOR_STAR AND PS_SW_AR_EXIT_CH_TO_A_REG );
	OUT_5E_C <= NOT(PS_GATE_A_DATA_REG_TO_A_CH AND OUT_4B_F );
	OUT_4E_C <= NOT(OUT_5E_C AND OUT_5F_F AND OUT_5G_F );

	SMS_AEK_3E: entity SMS_AEK
	    port map (
		IN1 => OUT_DOT_4E,	-- Pin P
		OUT1 => OUT_3E_H,
		IN2 => OPEN );

	OUT_5F_F <= NOT(PS_E2_REG_4_BIT AND PS_GATE_E2_DATA_REG_TO_A_CH );
	OUT_1F_P <= NOT OUT_3E_H;
	OUT_5G_F <= NOT(PS_OP_MOD_REG_4_BIT AND PS_GATE_OP_MOD_REG_TO_A_CH );

	SMS_AEK_2G: entity SMS_AEK
	    port map (
		IN1 => OUT_3E_H,	-- Pin P
		OUT1 => OUT_2G_H,
		IN2 => OPEN );

	OUT_5H_F <= NOT(PS_F2_REG_4_BIT AND PS_GATE_F2_DATA_REG_TO_A_CH );
	OUT_4H_K <= NOT(OUT_5H_F );
	OUT_1H_Q <= NOT OUT_2G_H;
	OUT_DOT_4E <= OUT_4E_C OR OUT_4H_K;

	PS_A_DATA_REG_4_BIT <= OUT_4B_F;
	PS_A_CH_NOT_4_BIT <= OUT_3E_H;
	PB_A_CH_4_BIT <= OUT_1F_P;
	PS_A_CH_4_BIT <= OUT_2G_H;
	PB_A_CH_NOT_4_BIT <= OUT_1H_Q;

	Latch_5B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5B_NoPin_Latch,
		Q => OUT_5B_NoPin,
		QBar => OPEN );

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_F_Latch,
		Q => OUT_4B_F,
		QBar => OPEN );


end;
