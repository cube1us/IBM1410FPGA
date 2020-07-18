-- VHDL for IBM SMS ALD page 12.65.04.1
-- Title: MASTER RESET
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/18/2020 9:56:57 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_65_04_1_MASTER_RESET is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_STOPPED_DOT_NOT_IN_PROCESS:	 in STD_LOGIC;
		PS_PROG_RST_KEY:	 in STD_LOGIC;
		MS_ALL_POWER_ON_DOT_CPR_RESETS:	 in STD_LOGIC;
		PS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		MS_AUTOMATIC_COMPUTER_RESET:	 in STD_LOGIC;
		MS_START_KEY_PULSE:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 out STD_LOGIC;
		MS_PROGRAM_RESET:	 out STD_LOGIC;
		MS_ONLY_PROGRAM_RESET:	 out STD_LOGIC;
		PS_PROGRAM_RESET:	 out STD_LOGIC;
		MS_PROGRAM_RESET_6:	 out STD_LOGIC;
		MS_START_RESET:	 out STD_LOGIC);
end ALD_12_65_04_1_MASTER_RESET;

architecture behavioral of ALD_12_65_04_1_MASTER_RESET is 

	signal OUT_5A_C: STD_LOGIC;
	signal OUT_5B_P: STD_LOGIC;
	signal OUT_4B_E: STD_LOGIC;
	signal OUT_3B_G: STD_LOGIC;
	signal OUT_1B_A: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_5I_B: STD_LOGIC;
	signal OUT_4I_G: STD_LOGIC;
	signal OUT_2I_NoPin: STD_LOGIC;
	signal OUT_1I_D: STD_LOGIC;

begin

	OUT_5A_C <= NOT(PS_STOPPED_DOT_NOT_IN_PROCESS AND PS_PROG_RST_KEY );
	OUT_5B_P <= NOT(PS_PROG_RST_KEY AND PS_STOPPED_AT_CYCLE_END );
	OUT_4B_E <= NOT(OUT_5A_C AND MS_ALL_POWER_ON_DOT_CPR_RESETS AND MS_AUTOMATIC_COMPUTER_RESET );
	OUT_3B_G <= OUT_4B_E;

	SMS_AEK_1B: entity SMS_AEK
	    port map (
		IN1 => OUT_3B_G,	-- Pin F
		OUT1 => OUT_1B_A,
		IN2 => OPEN );


	SMS_AEK_2H: entity SMS_AEK
	    port map (
		IN1 => OUT_3B_G,	-- Pin D
		OUT1 => OUT_2H_C,
		IN2 => OPEN );

	OUT_5I_B <= NOT MS_START_KEY_PULSE;
	OUT_4I_G <= NOT(OUT_5I_B AND PS_STOPPED_AT_CYCLE_END );
	OUT_2I_NoPin <= NOT(OUT_1B_A AND OUT_4I_G );
	OUT_1I_D <= NOT OUT_2I_NoPin;

	MS_ONLY_PROGRAM_RESET <= OUT_5B_P;
	PS_PROGRAM_RESET <= OUT_3B_G;
	MS_PROGRAM_RESET_1 <= OUT_1B_A;
	MS_PROGRAM_RESET <= OUT_1B_A;
	MS_PROGRAM_RESET_6 <= OUT_2H_C;
	MS_START_RESET <= OUT_1I_D;


end;
