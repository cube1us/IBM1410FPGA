-- VHDL for IBM SMS ALD page 11.20.11.1
-- Title: 1ST AND 2ND ADDRESS CTRLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:07:17 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_I_RING_1_TIME:	 in STD_LOGIC;
		MS_I_RING_2_TIME:	 in STD_LOGIC;
		MS_I_RING_3_TIME:	 in STD_LOGIC;
		MS_I_RING_4_TIME:	 in STD_LOGIC;
		MS_I_RING_5_TIME:	 in STD_LOGIC;
		MS_I_RING_6_TIME:	 in STD_LOGIC;
		MS_I_RING_7_TIME:	 in STD_LOGIC;
		MS_I_RING_8_TIME:	 in STD_LOGIC;
		MS_I_RING_9_TIME:	 in STD_LOGIC;
		MS_I_RING_10_TIME:	 in STD_LOGIC;
		PS_1ST_ADDRESS:	 out STD_LOGIC;
		PS_2ND_ADDRESS:	 out STD_LOGIC);
end ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS;

architecture behavioral of ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS is 

	signal OUT_4C_G: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_4D_K: STD_LOGIC;
	signal OUT_4E_G: STD_LOGIC;
	signal OUT_2E_K: STD_LOGIC;
	signal OUT_4F_P: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;
	signal OUT_DOT_4E: STD_LOGIC;

begin

	OUT_4C_G <= NOT(MS_I_RING_1_TIME AND MS_I_RING_2_TIME AND MS_I_RING_3_TIME );
	OUT_2C_C <= OUT_DOT_4C;
	OUT_4D_K <= NOT(MS_I_RING_4_TIME AND MS_I_RING_5_TIME );
	OUT_4E_G <= NOT(MS_I_RING_6_TIME AND MS_I_RING_7_TIME AND MS_I_RING_8_TIME );
	OUT_2E_K <= OUT_DOT_4E;
	OUT_4F_P <= NOT(MS_I_RING_9_TIME AND MS_I_RING_10_TIME );
	OUT_DOT_4C <= OUT_4C_G OR OUT_4D_K;
	OUT_DOT_4E <= OUT_4E_G OR OUT_4F_P;

	PS_1ST_ADDRESS <= OUT_2C_C;
	PS_2ND_ADDRESS <= OUT_2E_K;


end;