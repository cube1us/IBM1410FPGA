-- VHDL for IBM SMS ALD page 15.39.01.1
-- Title: A DATA REG 1 BIT AND DRIVE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/9/2020 11:22:26 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_39_01_1_A_DATA_REG_1_BIT_AND_DRIVE_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_RESET_A_DATA_REG:	 in STD_LOGIC;
		PS_B_CH_1_BIT:	 in STD_LOGIC;
		PS_SW_B_CH_TO_A_REG:	 in STD_LOGIC;
		PS_AR_EXIT_CH_1_BIT:	 in STD_LOGIC;
		PS_SW_AR_EXIT_CH_TO_A_REG:	 in STD_LOGIC;
		PS_GATE_A_DATA_REG_TO_A_CH:	 in STD_LOGIC;
		PS_E2_REG_1_BIT:	 in STD_LOGIC;
		PS_GATE_E2_DATA_REG_TO_A_CH:	 in STD_LOGIC;
		PS_OP_MOD_REG_1_BIT:	 in STD_LOGIC;
		PS_GATE_OP_MOD_REG_TO_A_CH:	 in STD_LOGIC;
		PS_F2_REG_1_BIT:	 in STD_LOGIC;
		PS_GATE_F2_DATA_REG_TO_A_CH:	 in STD_LOGIC;
		PS_A_DATA_REG_1_BIT:	 out STD_LOGIC;
		PS_A_CH_NOT_1_BIT:	 out STD_LOGIC;
		PB_A_CH_1_BIT:	 out STD_LOGIC;
		PS_A_CH_1_BIT:	 out STD_LOGIC;
		PB_A_CH_NOT_1_BIT:	 out STD_LOGIC;
		LAMP_11C8K12:	 out STD_LOGIC);
end ALD_15_39_01_1_A_DATA_REG_1_BIT_AND_DRIVE_ACC;

architecture behavioral of ALD_15_39_01_1_A_DATA_REG_1_BIT_AND_DRIVE_ACC is 

	signal OUT_2A_K: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin_Latch: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_4B_F_Latch: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_5D_B: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_3E_A: STD_LOGIC;
	signal OUT_5F_B: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_5G_B: STD_LOGIC;
	signal OUT_2G_A: STD_LOGIC;
	signal OUT_5H_B: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_1H_M: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;

begin

	OUT_2A_K <= NOT OUT_3E_A;
	LAMP_11C8K12 <= OUT_2A_K;
	OUT_5B_NoPin_Latch <= NOT(MS_RESET_A_DATA_REG AND OUT_4B_F );
	OUT_4B_F_Latch <= NOT(OUT_5B_NoPin AND OUT_5C_NoPin AND OUT_5D_B );
	OUT_5C_NoPin <= NOT(PS_B_CH_1_BIT AND PS_SW_B_CH_TO_A_REG );
	OUT_5D_B <= NOT(PS_AR_EXIT_CH_1_BIT AND PS_SW_AR_EXIT_CH_TO_A_REG );
	OUT_5E_C <= NOT(PS_GATE_A_DATA_REG_TO_A_CH AND OUT_4B_F );
	OUT_4E_D <= NOT(OUT_5E_C AND OUT_5F_B AND OUT_5G_B );

	SMS_AEK_3E: entity SMS_AEK
	    port map (
		IN1 => OUT_DOT_4E,	-- Pin F
		OUT1 => OUT_3E_A,
		IN2 => OPEN );

	OUT_5F_B <= NOT(PS_E2_REG_1_BIT AND PS_GATE_E2_DATA_REG_TO_A_CH );
	OUT_1F_C <= NOT OUT_3E_A;
	OUT_5G_B <= NOT(PS_OP_MOD_REG_1_BIT AND PS_GATE_OP_MOD_REG_TO_A_CH );

	SMS_AEK_2G: entity SMS_AEK
	    port map (
		IN1 => OUT_3E_A,	-- Pin F
		OUT1 => OUT_2G_A,
		IN2 => OPEN );

	OUT_5H_B <= NOT(PS_F2_REG_1_BIT AND PS_GATE_F2_DATA_REG_TO_A_CH );
	OUT_4H_G <= NOT(OUT_5H_B );
	OUT_1H_M <= NOT OUT_2G_A;
	OUT_DOT_4E <= OUT_4E_D OR OUT_4H_G;

	PS_A_DATA_REG_1_BIT <= OUT_4B_F;
	PS_A_CH_NOT_1_BIT <= OUT_3E_A;
	PB_A_CH_1_BIT <= OUT_1F_C;
	PS_A_CH_1_BIT <= OUT_2G_A;
	PB_A_CH_NOT_1_BIT <= OUT_1H_M;

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
