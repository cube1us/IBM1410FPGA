-- VHDL for IBM SMS ALD page 11.20.09.1
-- Title: I RING MIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:05:48 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_09_1_I_RING_MIX is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_I_RING_2_TIME:	 in STD_LOGIC;
		MS_I_RING_7_TIME:	 in STD_LOGIC;
		MS_I_RING_5_TIME:	 in STD_LOGIC;
		MS_I_RING_6_TIME:	 in STD_LOGIC;
		MS_I_RING_10_TIME:	 in STD_LOGIC;
		MS_I_RING_1_TIME:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		MS_I_RING_RESET_1:	 in STD_LOGIC;
		MS_I_RING_4_TIME:	 in STD_LOGIC;
		PS_I_RING_2_OR_7_TIME:	 out STD_LOGIC;
		PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME:	 out STD_LOGIC;
		MS_I_RING_3_AND_1401_MODE:	 out STD_LOGIC;
		PS_I_RING_1_OR_1401_AND_3_TIME:	 out STD_LOGIC);
end ALD_11_20_09_1_I_RING_MIX;

architecture behavioral of ALD_11_20_09_1_I_RING_MIX is 

	signal OUT_2A_G: STD_LOGIC;
	signal OUT_2B_G: STD_LOGIC;
	signal OUT_2C_G: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_2D_R: STD_LOGIC;
	signal OUT_1D_H: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_5F_C_Latch: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_4F_C_Latch: STD_LOGIC;
	signal OUT_DOT_2B: STD_LOGIC;

begin

	OUT_2A_G <= NOT(MS_I_RING_2_TIME AND MS_I_RING_7_TIME );
	OUT_2B_G <= NOT(MS_I_RING_7_TIME AND MS_I_RING_2_TIME AND MS_I_RING_5_TIME );
	OUT_2C_G <= NOT(MS_I_RING_10_TIME AND MS_I_RING_6_TIME AND MS_I_RING_1_TIME );
	OUT_3D_G <= NOT(OUT_4F_C AND PS_1401_MODE_1 );
	OUT_2D_R <= NOT(OUT_3D_G AND MS_I_RING_1_TIME );
	OUT_1D_H <= OUT_2D_R;
	OUT_5F_C_Latch <= NOT(OUT_4F_C AND MS_I_RING_4_TIME AND MS_I_RING_RESET_1 );
	OUT_4F_C_Latch <= NOT(OUT_5F_C AND MS_I_RING_1_TIME );
	OUT_DOT_2B <= OUT_2B_G OR OUT_2C_G;

	PS_I_RING_2_OR_7_TIME <= OUT_2A_G;
	MS_I_RING_3_AND_1401_MODE <= OUT_3D_G;
	PS_I_RING_1_OR_1401_AND_3_TIME <= OUT_1D_H;
	PS_I_RING_1_OR_2_OR_5_OR_6_OR_10_TIME <= OUT_DOT_2B;

	Latch_5F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_5F_C_Latch,
		Q => OUT_5F_C,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_C_Latch,
		Q => OUT_4F_C,
		QBar => OPEN );


end;
