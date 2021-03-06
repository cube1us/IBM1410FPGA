-- VHDL for IBM SMS ALD page 12.12.01.1
-- Title: A CYCLE LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:27:17 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_01_1_A_CYCLE_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RES_OR_S_LOGIC_GATE:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_A_CYCLE_CTRL:	 in STD_LOGIC;
		MS_B_CYCLE:	 in STD_LOGIC;
		MS_A_CYCLE_CTRL:	 in STD_LOGIC;
		PS_A_CYCLE:	 out STD_LOGIC;
		MS_A_CYCLE:	 out STD_LOGIC;
		PS_A_OR_B_CYCLE:	 out STD_LOGIC;
		LAMP_11C8A15:	 out STD_LOGIC;
		LAMP_15A1A10:	 out STD_LOGIC);
end ALD_12_12_01_1_A_CYCLE_LATCH;

architecture behavioral of ALD_12_12_01_1_A_CYCLE_LATCH is 

	signal OUT_3B_A: STD_LOGIC;
	signal OUT_5E_D: STD_LOGIC;
	signal OUT_5E_D_Latch: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_4E_C_Latch: STD_LOGIC;
	signal OUT_5F_K: STD_LOGIC;
	signal OUT_3F_F: STD_LOGIC;
	signal OUT_5G_G: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_1G_L: STD_LOGIC;
	signal OUT_2H_K: STD_LOGIC;
	signal OUT_2I_K: STD_LOGIC;

begin


	SMS_AEK_3B: entity SMS_AEK
	    port map (
		IN1 => OUT_5E_D,	-- Pin F
		OUT1 => OUT_3B_A,
		IN2 => OPEN );

	OUT_5E_D_Latch <= NOT(OUT_4E_C AND MS_PROGRAM_RES_OR_S_LOGIC_GATE AND OUT_5G_G );
	OUT_4E_C_Latch <= NOT(OUT_5E_D AND OUT_5F_K );
	OUT_5F_K <= NOT(PS_LOGIC_GATE_B_1 AND PS_A_CYCLE_CTRL );
	OUT_3F_F <= NOT OUT_4E_C;
	OUT_5G_G <= NOT(PS_LOGIC_GATE_B_1 AND MS_A_CYCLE_CTRL );
	OUT_2G_C <= NOT(MS_B_CYCLE AND OUT_3F_F );
	OUT_1G_L <= OUT_2G_C;
	OUT_2H_K <= NOT OUT_3F_F;
	LAMP_11C8A15 <= OUT_2H_K;
	OUT_2I_K <= NOT OUT_3F_F;
	LAMP_15A1A10 <= OUT_2I_K;

	PS_A_CYCLE <= OUT_3B_A;
	MS_A_CYCLE <= OUT_3F_F;
	PS_A_OR_B_CYCLE <= OUT_1G_L;

	Latch_5E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5E_D_Latch,
		Q => OUT_5E_D,
		QBar => OPEN );

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_C_Latch,
		Q => OUT_4E_C,
		QBar => OPEN );


end;
