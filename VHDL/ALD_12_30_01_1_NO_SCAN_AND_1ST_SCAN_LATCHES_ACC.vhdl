-- VHDL for IBM SMS ALD page 12.30.01.1
-- Title: NO SCAN AND 1ST SCAN LATCHES-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/8/2020 10:07:52 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_30_01_1_NO_SCAN_AND_1ST_SCAN_LATCHES_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_NO_SCAN_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_1ST_SCAN_CTRL:	 in STD_LOGIC;
		PS_NO_SCAN:	 out STD_LOGIC;
		PS_NO_SCAN_1:	 out STD_LOGIC;
		MS_NO_SCAN:	 out STD_LOGIC;
		PS_1ST_SCAN:	 out STD_LOGIC;
		MS_1ST_SCAN:	 out STD_LOGIC;
		LAMP_15A1A08:	 out STD_LOGIC;
		LAMP_15A1B08:	 out STD_LOGIC);
end ALD_12_30_01_1_NO_SCAN_AND_1ST_SCAN_LATCHES_ACC;

architecture behavioral of ALD_12_30_01_1_NO_SCAN_AND_1ST_SCAN_LATCHES_ACC is 

	signal OUT_2A_D: STD_LOGIC;
	signal OUT_1A_D: STD_LOGIC;
	signal OUT_2B_E: STD_LOGIC;
	signal OUT_3C_F: STD_LOGIC;
	signal OUT_3C_F_Latch: STD_LOGIC;
	signal OUT_2C_NoPin: STD_LOGIC;
	signal OUT_2C_NoPin_Latch: STD_LOGIC;
	signal OUT_1C_E: STD_LOGIC;
	signal OUT_4D_G: STD_LOGIC;
	signal OUT_1E_A: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_3G_C_Latch: STD_LOGIC;
	signal OUT_2G_F: STD_LOGIC;
	signal OUT_2G_F_Latch: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_3I_B: STD_LOGIC;
	signal OUT_1I_D: STD_LOGIC;

begin

	OUT_2A_D <= NOT OUT_1C_E;
	OUT_1A_D <= NOT OUT_3C_F;
	OUT_2B_E <= NOT OUT_1C_E;
	LAMP_15A1A08 <= OUT_2B_E;
	OUT_3C_F_Latch <= NOT(MS_LOGIC_GATE_B_1 AND MS_PROGRAM_RESET_1 AND OUT_2C_NoPin );
	OUT_2C_NoPin_Latch <= NOT(OUT_3C_F AND OUT_4D_G );
	OUT_1C_E <= NOT OUT_2C_NoPin;
	OUT_4D_G <= NOT(PS_NO_SCAN_CTRL AND PS_LOGIC_GATE_C_1 );

	SMS_AEK_1E: entity SMS_AEK
	    port map (
		IN1 => OUT_3G_C,	-- Pin F
		OUT1 => OUT_1E_A,
		IN2 => OPEN );

	OUT_3G_C_Latch <= NOT(OUT_2G_F AND MS_LOGIC_GATE_B_1 AND MS_PROGRAM_RESET_1 );
	OUT_2G_F_Latch <= NOT(OUT_3G_C AND OUT_4H_NoPin );
	OUT_4H_NoPin <= NOT(PS_LOGIC_GATE_C_1 AND PS_1ST_SCAN_CTRL );
	OUT_3I_B <= NOT OUT_1I_D;
	LAMP_15A1B08 <= OUT_3I_B;
	OUT_1I_D <= NOT OUT_2G_F;

	PS_NO_SCAN_1 <= OUT_2A_D;
	PS_NO_SCAN <= OUT_1A_D;
	MS_NO_SCAN <= OUT_1C_E;
	PS_1ST_SCAN <= OUT_1E_A;
	MS_1ST_SCAN <= OUT_1I_D;

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_F_Latch,
		Q => OUT_3C_F,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_NoPin_Latch,
		Q => OUT_2C_NoPin,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_C_Latch,
		Q => OUT_3G_C,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_F_Latch,
		Q => OUT_2G_F,
		QBar => OPEN );


end;
