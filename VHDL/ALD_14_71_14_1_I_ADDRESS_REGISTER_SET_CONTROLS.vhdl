-- VHDL for IBM SMS ALD page 14.71.14.1
-- Title: I ADDRESS REGISTER SET CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/5/2020 1:28:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_OR_C:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_OR_E_OR_F:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		MS_1401_LAST_I_CYCLE:	 in STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_NORMAL_1:	 in STD_LOGIC;
		MS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		MV_STORAGE_SCAN_MODE_2:	 in STD_LOGIC;
		PS_SET_I_AR:	 out STD_LOGIC);
end ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS;

architecture behavioral of ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS is 

	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_1B_H: STD_LOGIC;
	signal OUT_4C_C: STD_LOGIC;
	signal OUT_5D_D: STD_LOGIC;
	signal OUT_4E_P: STD_LOGIC;
	signal OUT_3F_B: STD_LOGIC;
	signal OUT_3G_A: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_4C: STD_LOGIC;

begin

	OUT_4B_NoPin <= NOT(PS_I_CYCLE_CTRL AND PS_LOGIC_GATE_B_OR_C );
	OUT_3B_F <= NOT(OUT_4B_NoPin AND OUT_DOT_4C );
	OUT_1B_H <= OUT_DOT_3B;
	OUT_4C_C <= NOT(PS_I_CYCLE AND OUT_5D_D AND PS_LOGIC_GATE_D_OR_E_OR_F );
	OUT_5D_D <= NOT(MS_I_RING_OP_TIME AND PS_B_CH_WM_BIT_2 AND MS_STORAGE_SCAN_ROUTINE );
	OUT_4E_P <= NOT(MS_1401_LAST_I_CYCLE );
	OUT_3F_B <= NOT(MV_CONS_ADDRESS_ENTRY_NORMAL_1 OR MS_STOPPED_AT_CYCLE_END );
	OUT_3G_A <= NOT(MV_STORAGE_SCAN_MODE_2 OR MS_STOPPED_AT_CYCLE_END );
	OUT_DOT_3B <= OUT_3B_F OR OUT_3F_B OR OUT_3G_A;
	OUT_DOT_4C <= OUT_4C_C OR OUT_4E_P;

	PS_SET_I_AR <= OUT_1B_H;


end;
