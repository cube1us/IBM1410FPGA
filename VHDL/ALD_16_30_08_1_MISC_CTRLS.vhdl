-- VHDL for IBM SMS ALD page 16.30.08.1
-- Title: MISC CTRLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 10:24:17 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_30_08_1_MISC_CTRLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_EXTENSION_LATCH:	 in STD_LOGIC;
		MS_UNITS_LATCH:	 in STD_LOGIC;
		MS_BODY_LATCH:	 in STD_LOGIC;
		PS_UNITS_OR_BODY_OR_EXT:	 out STD_LOGIC;
		PS_BODY_OR_EXTENSION:	 out STD_LOGIC;
		PS_UNITS_OR_BODY_LATCH:	 out STD_LOGIC);
end ALD_16_30_08_1_MISC_CTRLS;

architecture behavioral of ALD_16_30_08_1_MISC_CTRLS is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_3E_R: STD_LOGIC;
	signal OUT_2E_B: STD_LOGIC;

begin

	OUT_3A_D <= NOT(MS_UNITS_LATCH AND MS_BODY_LATCH AND MS_EXTENSION_LATCH );
	OUT_3C_C <= NOT(MS_EXTENSION_LATCH AND MS_BODY_LATCH );
	OUT_2C_C <= OUT_3C_C;
	OUT_3E_R <= NOT(MS_BODY_LATCH AND MS_UNITS_LATCH );
	OUT_2E_B <= OUT_3E_R;

	PS_UNITS_OR_BODY_OR_EXT <= OUT_3A_D;
	PS_BODY_OR_EXTENSION <= OUT_2C_C;
	PS_UNITS_OR_BODY_LATCH <= OUT_2E_B;


end;
