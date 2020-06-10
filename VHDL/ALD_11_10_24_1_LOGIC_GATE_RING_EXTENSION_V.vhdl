-- VHDL for IBM SMS ALD page 11.10.24.1
-- Title: LOGIC GATE RING EXTENSION V
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/10/2020 2:21:34 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_RING_ON_ADVANCE_2:	 in STD_LOGIC;
		PS_LOGIC_GATE_U:	 in STD_LOGIC;
		PS_LOGIC_RING_OFF_ADVANCE_2:	 in STD_LOGIC;
		MS_LOGIC_GATE_U:	 in STD_LOGIC;
		MS_PROGRAM_RESET_5:	 in STD_LOGIC;
		MS_LOGIC_GATE_V:	 out STD_LOGIC;
		PS_LOGIC_GATE_V:	 out STD_LOGIC);
end ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V;

architecture behavioral of ALD_11_10_24_1_LOGIC_GATE_RING_EXTENSION_V is 

	signal OUT_4C_F: STD_LOGIC;
	signal OUT_4C_B: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
begin

	SMS_DEY_4C: entity SMS_DEY
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => PS_LOGIC_GATE_U,	-- Pin K
		ACSET => PS_LOGIC_RING_ON_ADVANCE_2,	-- Pin H
		GATEOFF => MS_LOGIC_GATE_U,	-- Pin E
		ACRESET => PS_LOGIC_RING_OFF_ADVANCE_2,	-- Pin A
		DCRESET => MS_PROGRAM_RESET_5,	-- Pin P
		OUTON => OUT_4C_F,
		OUTOFF => OUT_4C_B,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3C_D <= NOT OUT_4C_F;
	OUT_3D_C <= NOT OUT_4C_B;

	MS_LOGIC_GATE_V <= OUT_3C_D;
	PS_LOGIC_GATE_V <= OUT_3D_C;


end;
