-- VHDL for IBM SMS ALD page 14.70.11.1
-- Title: INDEX CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/3/2020 9:07:37 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_70_11_1_INDEX_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_A_RING_ADV_A:	 out STD_LOGIC;
		PS_A_RING_ADV_B:	 out STD_LOGIC);
end ALD_14_70_11_1_INDEX_CONTROLS;

architecture behavioral of ALD_14_70_11_1_INDEX_CONTROLS is 

	signal OUT_2D_D: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;

begin

	OUT_2D_D <= NOT MS_LOGIC_GATE_B_1;
	OUT_2G_C <= NOT MS_LOGIC_GATE_B_1;

	PS_A_RING_ADV_A <= OUT_2D_D;
	PS_A_RING_ADV_B <= OUT_2G_C;


end;
