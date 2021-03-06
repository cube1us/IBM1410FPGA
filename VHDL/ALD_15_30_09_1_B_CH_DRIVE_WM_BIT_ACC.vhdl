-- VHDL for IBM SMS ALD page 15.30.09.1
-- Title: B CH DRIVE WM BIT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/8/2020 4:22:19 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_30_09_1_B_CH_DRIVE_WM_BIT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_B_DATA_REG_WM_BIT:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_1:	 out STD_LOGIC);
end ALD_15_30_09_1_B_CH_DRIVE_WM_BIT_ACC;

architecture behavioral of ALD_15_30_09_1_B_CH_DRIVE_WM_BIT_ACC is 

	signal OUT_3A_C: STD_LOGIC;

begin


	SMS_AEK_3A: entity SMS_AEK
	    port map (
		IN1 => MS_B_DATA_REG_WM_BIT,	-- Pin D
		OUT1 => OUT_3A_C,
		IN2 => OPEN );


	PS_B_CH_WM_BIT_1 <= OUT_3A_C;


end;
