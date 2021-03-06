-- VHDL for IBM SMS ALD page 31.11.02.1
-- Title: X LSMS DRVRS 9 TO 16
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/16/2020 12:32:33 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_31_11_02_1_X_LSMS_DRVRS_9_TO_16 is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PY_X_LSMS_DRVR_9:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_10:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_11:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_12:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_13:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_14:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_15:	 in STD_LOGIC;
		PY_X_RD_2:	 in STD_LOGIC;
		PV_X_LSMS_DRV_9_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_10_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_11_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_12_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_13_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_14_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_15_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_16_IN:	 out STD_LOGIC);
end ALD_31_11_02_1_X_LSMS_DRVRS_9_TO_16;

architecture behavioral of ALD_31_11_02_1_X_LSMS_DRVRS_9_TO_16 is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;

begin

	OUT_3A_D <= PY_X_LSMS_DRVR_9;
	OUT_3B_D <= PY_X_LSMS_DRVR_10;
	OUT_3C_D <= PY_X_LSMS_DRVR_11;
	OUT_3D_D <= PY_X_LSMS_DRVR_12;
	OUT_3E_D <= PY_X_LSMS_DRVR_13;
	OUT_3F_D <= PY_X_LSMS_DRVR_14;
	OUT_3G_D <= PY_X_LSMS_DRVR_15;
	OUT_3H_D <= PY_X_RD_2;

	PV_X_LSMS_DRV_9_IN <= OUT_3A_D;
	PV_X_LSMS_DRV_10_IN <= OUT_3B_D;
	PV_X_LSMS_DRV_11_IN <= OUT_3C_D;
	PV_X_LSMS_DRV_12_IN <= OUT_3D_D;
	PV_X_LSMS_DRV_13_IN <= OUT_3E_D;
	PV_X_LSMS_DRV_14_IN <= OUT_3F_D;
	PV_X_LSMS_DRV_15_IN <= OUT_3G_D;
	PV_X_LSMS_DRV_16_IN <= OUT_3H_D;


end;
