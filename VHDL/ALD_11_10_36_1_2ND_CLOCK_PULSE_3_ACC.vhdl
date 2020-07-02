-- VHDL for IBM SMS ALD page 11.10.36.1
-- Title: 2ND CLOCK PULSE 3-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 12:51:25 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_36_1_2ND_CLOCK_PULSE_3_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_1ST_CLOCK_PULSE_PRIME:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3:	 out STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ:	 out STD_LOGIC);
end ALD_11_10_36_1_2ND_CLOCK_PULSE_3_ACC;

architecture behavioral of ALD_11_10_36_1_2ND_CLOCK_PULSE_3_ACC is 

	signal OUT_3B_C: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;

begin


	SMS_AEK_3B: entity SMS_AEK
	    port map (
		IN1 => PS_1ST_CLOCK_PULSE_PRIME,	-- Pin D
		OUT1 => OUT_3B_C,
		IN2 => OPEN );


	SMS_AEK_3C: entity SMS_AEK
	    port map (
		IN1 => PS_1ST_CLOCK_PULSE_PRIME,	-- Pin D
		OUT1 => OUT_3C_C,
		IN2 => OPEN );


	PS_2ND_CLOCK_PULSE_3 <= OUT_3B_C;
	PS_2ND_CLOCK_PULSE_3_JRJ <= OUT_3C_C;


end;