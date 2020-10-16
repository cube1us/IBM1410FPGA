-- VHDL for IBM SMS ALD page 31.11.01.1
-- Title: X LSMS DRVRS 1 TO 8
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/16/2020 12:32:30 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_31_11_01_1_X_LSMS_DRVRS_1_TO_8 is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PY_X_LSMS_DRVR_1:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_2:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_3:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_4:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_5:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_6:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_7:	 in STD_LOGIC;
		PY_X_LSMS_DRVR_8:	 in STD_LOGIC;
		PV_X_LSMS_DRV_1_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_2_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_3_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_4_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_5_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_6_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_7_IN:	 out STD_LOGIC;
		PV_X_LSMS_DRV_8_IN:	 out STD_LOGIC);
end ALD_31_11_01_1_X_LSMS_DRVRS_1_TO_8;

architecture behavioral of ALD_31_11_01_1_X_LSMS_DRVRS_1_TO_8 is 

	signal OUT_3A_D: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_D: STD_LOGIC;
	signal OUT_3D_D: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_3G_D: STD_LOGIC;
	signal OUT_3H_D: STD_LOGIC;

begin

	OUT_3A_D <= PY_X_LSMS_DRVR_1;
	OUT_3B_D <= PY_X_LSMS_DRVR_2;
	OUT_3C_D <= PY_X_LSMS_DRVR_3;
	OUT_3D_D <= PY_X_LSMS_DRVR_4;
	OUT_3E_D <= PY_X_LSMS_DRVR_5;
	OUT_3F_D <= PY_X_LSMS_DRVR_6;
	OUT_3G_D <= PY_X_LSMS_DRVR_7;
	OUT_3H_D <= PY_X_LSMS_DRVR_8;

	PV_X_LSMS_DRV_1_IN <= OUT_3A_D;
	PV_X_LSMS_DRV_2_IN <= OUT_3B_D;
	PV_X_LSMS_DRV_3_IN <= OUT_3C_D;
	PV_X_LSMS_DRV_4_IN <= OUT_3D_D;
	PV_X_LSMS_DRV_5_IN <= OUT_3E_D;
	PV_X_LSMS_DRV_6_IN <= OUT_3F_D;
	PV_X_LSMS_DRV_7_IN <= OUT_3G_D;
	PV_X_LSMS_DRV_8_IN <= OUT_3H_D;


end;