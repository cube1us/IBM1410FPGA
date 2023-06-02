-- VHDL for IBM SMS ALD page 14.71.60.1
-- Title: ADDRESS CHANNEL CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/17/2022 3:54:46 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_60_1_ADDRESS_CHANNEL_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_GATE_Z:	 in STD_LOGIC;
		MS_ADDRESS_SET_ROUTINE:	 in STD_LOGIC;
		MS_ANY_LAST_GATE:	 in STD_LOGIC;
		PS_ZERO_TO_ADDR_CH:	 in STD_LOGIC;
		PS_LOGIC_GATE_W:	 in STD_LOGIC;
		PS_LOGIC_GATE_H:	 in STD_LOGIC;
		MS_X_CYCLE:	 in STD_LOGIC;
		MS_LOGIC_GATE_G:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_INSERT_ZERO_ON_ADDR_CH:	 out STD_LOGIC);
end ALD_14_71_60_1_ADDRESS_CHANNEL_CONTROLS;

architecture behavioral of ALD_14_71_60_1_ADDRESS_CHANNEL_CONTROLS is 

	signal OUT_4A_F: STD_LOGIC;
	signal OUT_2A_D: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_2B_R: STD_LOGIC;
	signal OUT_1D_D: STD_LOGIC;
	signal OUT_4F_B: STD_LOGIC;
	signal OUT_4G_C: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_DOT_4B: STD_LOGIC;
	signal OUT_DOT_2D: STD_LOGIC;
	signal OUT_DOT_4G: STD_LOGIC;

begin

	OUT_4A_F <= NOT PS_LOGIC_GATE_Z;
	OUT_2A_D <= NOT MS_ADDRESS_SET_ROUTINE;
	OUT_4B_B <= NOT MS_ANY_LAST_GATE;
	OUT_2B_R <= NOT OUT_DOT_4B;
	OUT_1D_D <= NOT OUT_DOT_2D;
	OUT_4F_B <= NOT PS_LOGIC_GATE_H;
	OUT_4G_C <= NOT MS_X_CYCLE;
	OUT_2G_C <= NOT(OUT_DOT_4G AND MS_LOGIC_GATE_G );
	OUT_DOT_4B <= OUT_4A_F OR OUT_2A_D OR OUT_4B_B;
	OUT_DOT_2D <= OUT_2B_R OR PS_ZERO_TO_ADDR_CH OR OUT_2G_C;
	OUT_DOT_4G <= OUT_4F_B OR OUT_4G_C;

	MS_INSERT_ZERO_ON_ADDR_CH <= OUT_1D_D;


end;
