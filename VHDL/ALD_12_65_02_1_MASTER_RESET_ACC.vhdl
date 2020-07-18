-- VHDL for IBM SMS ALD page 12.65.02.1
-- Title: MASTER RESET-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/18/2020 9:56:44 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_65_02_1_MASTER_RESET_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_PWR_ON_RESET:	 in STD_LOGIC;
		MS_COMP_RST_CLOCK_START:	 in STD_LOGIC;
		PS_PWR_ON_OR_CPR_RESETS:	 in STD_LOGIC;
		MS_SYSTEM_RESET:	 out STD_LOGIC);
end ALD_12_65_02_1_MASTER_RESET_ACC;

architecture behavioral of ALD_12_65_02_1_MASTER_RESET_ACC is 

	signal OUT_5E_G: STD_LOGIC;
	signal OUT_3E_C: STD_LOGIC;

begin

	OUT_5E_G <= NOT(PS_PWR_ON_OR_CPR_RESETS AND MS_COMP_RST_CLOCK_START AND PS_PWR_ON_RESET );
	OUT_3E_C <= OUT_5E_G;

	MS_SYSTEM_RESET <= OUT_3E_C;


end;
