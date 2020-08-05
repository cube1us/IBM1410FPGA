-- VHDL for IBM SMS ALD page 13.64.08.1
-- Title: IN PROCESS LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/5/2020 11:05:16 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_64_08_1_IN_PROCESS_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_O_LOZENGE_LATCH:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_A_DELAY:	 in STD_LOGIC;
		PS_F_CH_NO_STATUS_ON:	 in STD_LOGIC;
		MS_F_CH_STATUS_SAMPLE_B_DELAY:	 in STD_LOGIC;
		MS_IN_PROCESS_RESET:	 in STD_LOGIC;
		PS_I_O_ASTERISK_LATCH:	 in STD_LOGIC;
		MS_F_CH_UNOVLP_IN_PROCESS:	 out STD_LOGIC;
		PS_F_CH_IN_PROCESS:	 out STD_LOGIC;
		MS_F_CH_IN_PROCESS:	 out STD_LOGIC;
		PS_F_CH_UNOVLP_IN_PROCESS:	 out STD_LOGIC;
		MS_F_CH_OVLP_IN_PROCESS:	 out STD_LOGIC;
		PS_F_CH_OVLP_IN_PROCESS:	 out STD_LOGIC;
		LAMP_15A1K15:	 out STD_LOGIC;
		LAMP_15A1H15:	 out STD_LOGIC);
end ALD_13_64_08_1_IN_PROCESS_LATCHES;

architecture behavioral of ALD_13_64_08_1_IN_PROCESS_LATCHES is 

	signal OUT_5A_D: STD_LOGIC;
	signal OUT_5B_F: STD_LOGIC;
	signal OUT_5B_F_Latch: STD_LOGIC;
	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_4B_NoPin_Latch: STD_LOGIC;
	signal OUT_3B_E: STD_LOGIC;
	signal OUT_2B_B: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_5D_E: STD_LOGIC;
	signal OUT_2D_R: STD_LOGIC;
	signal OUT_1D_D: STD_LOGIC;
	signal OUT_5E_F: STD_LOGIC;
	signal OUT_5E_F_Latch: STD_LOGIC;
	signal OUT_4E_NoPin: STD_LOGIC;
	signal OUT_4E_NoPin_Latch: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_2E_A: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;

begin

	OUT_5A_D <= NOT(PS_I_O_LOZENGE_LATCH AND PS_F_CH_STATUS_SAMPLE_A_DELAY AND PS_F_CH_NO_STATUS_ON );
	OUT_5B_F_Latch <= NOT(MS_IN_PROCESS_RESET AND MS_F_CH_STATUS_SAMPLE_B_DELAY AND OUT_4B_NoPin );
	OUT_4B_NoPin_Latch <= NOT(OUT_5A_D AND OUT_5B_F );
	OUT_3B_E <= NOT OUT_4B_NoPin;
	OUT_2B_B <= NOT OUT_3B_E;
	LAMP_15A1K15 <= OUT_2B_B;
	OUT_3C_D <= NOT OUT_5B_F;

	SMS_AEK_2C: entity SMS_AEK
	    port map (
		IN1 => OUT_3B_E,	-- Pin D
		IN2 => OUT_2D_R,	-- Pin E
		OUT1 => OUT_2C_C );

	OUT_5D_E <= NOT(PS_F_CH_NO_STATUS_ON AND PS_F_CH_STATUS_SAMPLE_A_DELAY AND PS_I_O_ASTERISK_LATCH );
	OUT_2D_R <= NOT OUT_3E_E;
	OUT_1D_D <= NOT OUT_2C_C;
	OUT_5E_F_Latch <= NOT(MS_IN_PROCESS_RESET AND MS_F_CH_STATUS_SAMPLE_B_DELAY AND OUT_4E_NoPin );
	OUT_4E_NoPin_Latch <= NOT(OUT_5D_E AND OUT_5E_F );
	OUT_3E_E <= NOT OUT_4E_NoPin;
	OUT_2E_A <= NOT OUT_3E_E;
	LAMP_15A1H15 <= OUT_2E_A;
	OUT_3F_D <= NOT OUT_5E_F;

	MS_F_CH_UNOVLP_IN_PROCESS <= OUT_3B_E;
	PS_F_CH_UNOVLP_IN_PROCESS <= OUT_3C_D;
	PS_F_CH_IN_PROCESS <= OUT_2C_C;
	MS_F_CH_IN_PROCESS <= OUT_1D_D;
	MS_F_CH_OVLP_IN_PROCESS <= OUT_3E_E;
	PS_F_CH_OVLP_IN_PROCESS <= OUT_3F_D;

	Latch_5B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5B_F_Latch,
		Q => OUT_5B_F,
		QBar => OPEN );

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_NoPin_Latch,
		Q => OUT_4B_NoPin,
		QBar => OPEN );

	Latch_5E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5E_F_Latch,
		Q => OUT_5E_F,
		QBar => OPEN );

	Latch_4E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4E_NoPin_Latch,
		Q => OUT_4E_NoPin,
		QBar => OPEN );


end;
