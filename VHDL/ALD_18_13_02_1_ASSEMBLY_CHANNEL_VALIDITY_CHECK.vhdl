-- VHDL for IBM SMS ALD page 18.13.02.1
-- Title: ASSEMBLY CHANNEL VALIDITY CHECK
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/12/2020 8:52:37 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_13_02_1_ASSEMBLY_CHANNEL_VALIDITY_CHECK is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MV_3RD_CHECK_TEST_SWITCH:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_A_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_B_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_B_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_A_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_C_CHAR_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_WM_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_C_CHAR_BIT:	 in STD_LOGIC;
		MS_ASSEMBLY_CH_NOT_WM_BIT:	 in STD_LOGIC;
		PS_ASSEMBLY_CH_ZONES_ODD:	 out STD_LOGIC;
		PS_ASSEMBLY_CH_ZONES_EVEN:	 out STD_LOGIC);
end ALD_18_13_02_1_ASSEMBLY_CHANNEL_VALIDITY_CHECK;

architecture behavioral of ALD_18_13_02_1_ASSEMBLY_CHANNEL_VALIDITY_CHECK is 

	signal OUT_1A_G: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_B: STD_LOGIC;
	signal OUT_2B_NoPin: STD_LOGIC;
	signal OUT_1B_H: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_2C_NoPin: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_1D_C: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_2E_NoPin: STD_LOGIC;
	signal OUT_1E_G: STD_LOGIC;
	signal OUT_5F_NoPin: STD_LOGIC;
	signal OUT_4F_H: STD_LOGIC;
	signal OUT_2F_NoPin: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_5H_NoPin: STD_LOGIC;
	signal OUT_4H_G: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;

begin

	OUT_1A_G <= NOT(MV_3RD_CHECK_TEST_SWITCH );
	OUT_5B_NoPin <= MS_ASSEMBLY_CH_A_BIT AND MS_ASSEMBLY_CH_B_BIT;
	OUT_4B_B <= NOT(OUT_5B_NoPin OR OUT_5C_NoPin );
	OUT_2B_NoPin <= OUT_4B_B AND OUT_4F_H;
	OUT_1B_H <= NOT(OUT_2B_NoPin OR OUT_2C_NoPin );
	OUT_5C_NoPin <= MS_ASSEMBLY_CH_NOT_B_BIT AND MS_ASSEMBLY_CH_NOT_A_BIT;
	OUT_2C_NoPin <= OUT_4D_C AND OUT_4H_G;
	OUT_5D_NoPin <= MS_ASSEMBLY_CH_A_BIT AND MS_ASSEMBLY_CH_NOT_B_BIT;
	OUT_4D_C <= NOT(OUT_5D_NoPin OR OUT_5E_NoPin );
	OUT_1D_C <= NOT(MV_3RD_CHECK_TEST_SWITCH );
	OUT_5E_NoPin <= MS_ASSEMBLY_CH_B_BIT AND MS_ASSEMBLY_CH_NOT_A_BIT;
	OUT_2E_NoPin <= OUT_4B_B AND OUT_4H_G;
	OUT_1E_G <= NOT(OUT_2E_NoPin OR OUT_2F_NoPin );
	OUT_5F_NoPin <= MS_ASSEMBLY_CH_C_CHAR_BIT AND MS_ASSEMBLY_CH_WM_BIT;
	OUT_4F_H <= NOT(OUT_5F_NoPin OR OUT_5G_NoPin );
	OUT_2F_NoPin <= OUT_4D_C AND OUT_4F_H;
	OUT_5G_NoPin <= MS_ASSEMBLY_CH_NOT_C_CHAR_BIT AND MS_ASSEMBLY_CH_NOT_WM_BIT;
	OUT_5H_NoPin <= MS_ASSEMBLY_CH_C_CHAR_BIT AND MS_ASSEMBLY_CH_NOT_WM_BIT;
	OUT_4H_G <= NOT(OUT_5H_NoPin OR OUT_5I_NoPin );
	OUT_5I_NoPin <= MS_ASSEMBLY_CH_WM_BIT AND MS_ASSEMBLY_CH_NOT_C_CHAR_BIT;
	OUT_DOT_1A <= OUT_1A_G OR OUT_1B_H;
	OUT_DOT_1D <= OUT_1D_C OR OUT_1E_G;

	PS_ASSEMBLY_CH_ZONES_ODD <= OUT_DOT_1A;
	PS_ASSEMBLY_CH_ZONES_EVEN <= OUT_DOT_1D;


end;
