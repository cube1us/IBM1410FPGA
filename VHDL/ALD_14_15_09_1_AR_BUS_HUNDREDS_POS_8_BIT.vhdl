-- VHDL for IBM SMS ALD page 14.15.09.1
-- Title: AR BUS HUNDREDS POS 8 BIT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/19/2020 9:19:51 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_09_1_AR_BUS_HUNDREDS_POS_8_BIT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_A_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_I_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_B_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_E_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_F_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_D_AR_GT_OUT_HP8B:	 in STD_LOGIC;
		MS_RO_00001_INDEX_ADDR:	 in STD_LOGIC;
		MS_RO_INDEX_AR:	 in STD_LOGIC;
		PS_AR_BUS_HP8B:	 out STD_LOGIC);
end ALD_14_15_09_1_AR_BUS_HUNDREDS_POS_8_BIT;

architecture behavioral of ALD_14_15_09_1_AR_BUS_HUNDREDS_POS_8_BIT is 

	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3E_A: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_3D_D <= NOT(MS_A_AR_GT_OUT_HP8B AND MS_C_AR_GT_OUT_HP8B AND MS_I_AR_GT_OUT_HP8B );
	OUT_3E_A <= NOT(MS_B_AR_GT_OUT_HP8B AND MS_E_AR_GT_OUT_HP8B AND MS_F_AR_GT_OUT_HP8B );
	OUT_3F_D <= NOT(MS_D_AR_GT_OUT_HP8B AND MS_RO_00001_INDEX_ADDR AND MS_RO_INDEX_AR );
	OUT_DOT_1D <= OUT_3D_D OR OUT_3E_A OR OUT_3F_D;

	PS_AR_BUS_HP8B <= OUT_DOT_1D;


end;
