-- VHDL for IBM SMS ALD page 12.12.61.1
-- Title: E CYCLE REQUIRED
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/29/2020 2:09:14 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_61_1_E_CYCLE_REQUIRED is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_E_CYCLE:	 in STD_LOGIC;
		PS_ANY_LAST_GATE:	 in STD_LOGIC;
		MS_E_CYCLE_DOT_ANY_LAST_GATE:	 out STD_LOGIC);
end ALD_12_12_61_1_E_CYCLE_REQUIRED;

architecture behavioral of ALD_12_12_61_1_E_CYCLE_REQUIRED is 

	signal OUT_4B_R: STD_LOGIC;
	signal OUT_4C_D: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;

begin

	OUT_4B_R <= NOT PS_E_CYCLE;
	OUT_4C_D <= NOT PS_ANY_LAST_GATE;
	OUT_DOT_2B <= OUT_4B_R OR OUT_4C_D;

	MS_E_CYCLE_DOT_ANY_LAST_GATE <= OUT_DOT_2B;


end;
