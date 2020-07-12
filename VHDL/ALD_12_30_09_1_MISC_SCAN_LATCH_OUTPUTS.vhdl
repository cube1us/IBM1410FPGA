-- VHDL for IBM SMS ALD page 12.30.09.1
-- Title: MISC SCAN LATCH OUTPUTS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/8/2020 10:09:06 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_30_09_1_MISC_SCAN_LATCH_OUTPUTS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_NO_SCAN:	 in STD_LOGIC;
		MS_1ST_SCAN:	 in STD_LOGIC;
		MS_3RD_SCAN:	 in STD_LOGIC;
		MS_2ND_SCAN:	 in STD_LOGIC;
		MS_NO_SCAN_CTRL:	 in STD_LOGIC;
		MS_1ST_SCAN_CTRL:	 in STD_LOGIC;
		MS_2ND_SCAN_CTRL:	 in STD_LOGIC;
		MS_3RD_SCAN_CTRL:	 in STD_LOGIC;
		PS_1ST_OR_NO_OR_3RD_SCAN:	 out STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN:	 out STD_LOGIC;
		PS_1ST_OR_3RD_SCAN:	 out STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_SCAN:	 out STD_LOGIC;
		PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL:	 out STD_LOGIC;
		PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL:	 out STD_LOGIC);
end ALD_12_30_09_1_MISC_SCAN_LATCH_OUTPUTS;

architecture behavioral of ALD_12_30_09_1_MISC_SCAN_LATCH_OUTPUTS is 

	signal OUT_3A_E: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_1B_K: STD_LOGIC;
	signal OUT_3C_K: STD_LOGIC;
	signal OUT_2C_K: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_3E_G: STD_LOGIC;
	signal OUT_3F_P: STD_LOGIC;
	signal OUT_3G_E: STD_LOGIC;
	signal OUT_DOT_1E: STD_LOGIC;

begin

	OUT_3A_E <= NOT(MS_NO_SCAN AND MS_1ST_SCAN AND MS_3RD_SCAN );
	OUT_2B_C <= NOT(OUT_3A_E );
	OUT_1B_K <= NOT(OUT_2B_C AND MS_2ND_SCAN );
	OUT_3C_K <= NOT(MS_3RD_SCAN AND MS_1ST_SCAN );
	OUT_2C_K <= OUT_3C_K;
	OUT_3D_C <= NOT(MS_NO_SCAN AND MS_1ST_SCAN AND MS_2ND_SCAN );
	OUT_3E_G <= NOT(MS_NO_SCAN_CTRL AND MS_1ST_SCAN_CTRL );
	OUT_3F_P <= NOT(MS_2ND_SCAN_CTRL AND MS_3RD_SCAN_CTRL );
	OUT_3G_E <= NOT(MS_1ST_SCAN_CTRL AND MS_2ND_SCAN_CTRL AND MS_3RD_SCAN_CTRL );
	OUT_DOT_1E <= OUT_3E_G OR OUT_3F_P;

	PS_1ST_OR_NO_OR_3RD_SCAN <= OUT_3A_E;
	PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN <= OUT_1B_K;
	PS_1ST_OR_3RD_SCAN <= OUT_2C_K;
	PS_NO_OR_1ST_OR_2ND_SCAN <= OUT_3D_C;
	PS_1ST_OR_2ND_OR_3RD_SCAN_CTRL <= OUT_3G_E;
	PS_NO_OR_1ST_OR_2ND_OR_3RD_SCAN_CTRL <= OUT_DOT_1E;


end;