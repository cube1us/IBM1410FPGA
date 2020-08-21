-- VHDL for IBM SMS ALD page 14.15.22.1
-- Title: ADDRESS EXIT CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/20/2020 4:28:39 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_22_1_ADDRESS_EXIT_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY:	 in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		PS_CONS_MX_Y1_POS:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_0_DIGIT:	 in STD_LOGIC;
		PS_A_RING_6_TIME:	 in STD_LOGIC;
		PS_A_RING_OFF_TIME:	 in STD_LOGIC;
		MS_RTC_BUSY:	 in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_A:	 in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_B:	 in STD_LOGIC;
		MS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY:	 in STD_LOGIC;
		PS_RTC_BUSY:	 in STD_LOGIC;
		MS_ADDR_EXIT_0_INSERT:	 out STD_LOGIC;
		MS_RTC_BUSY_9_INSERT:	 out STD_LOGIC);
end ALD_14_15_22_1_ADDRESS_EXIT_CONTROLS;

architecture behavioral of ALD_14_15_22_1_ADDRESS_EXIT_CONTROLS is 

	signal OUT_3A_E: STD_LOGIC;
	signal OUT_3B_C: STD_LOGIC;
	signal OUT_1B_P: STD_LOGIC;
	signal OUT_3C_E: STD_LOGIC;
	signal OUT_1C_C: STD_LOGIC;
	signal OUT_3D_P: STD_LOGIC;
	signal OUT_1D_R: STD_LOGIC;
	signal OUT_5E_G: STD_LOGIC;
	signal OUT_3E_P: STD_LOGIC;
	signal OUT_1E_B: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_1D: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;

begin

	OUT_3A_E <= NOT(PS_A_RING_6_TIME AND MS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY AND MS_CONS_ADDR_REG_EXIT_GATE );
	OUT_3B_C <= NOT(PS_CONS_ADDR_REG_EXIT_GATE AND PS_CONS_MX_Y1_POS );
	OUT_1B_P <= NOT(OUT_3A_E AND OUT_3B_C );
	OUT_3C_E <= NOT(MS_CONS_ADDR_REG_EXIT_GATE AND PS_A_RING_OFF_TIME );
	OUT_1C_C <= NOT(MS_REAL_TIME_CLOCK_0_DIGIT AND OUT_DOT_3E AND OUT_DOT_3C );
	OUT_3D_P <= NOT(MS_STORE_AR_SET_C_CYCLE_CTRL_B AND MS_STORE_AR_SET_A_CYCLE_CTRL_A );
	OUT_1D_R <= NOT(OUT_DOT_1D );
	OUT_5E_G <= NOT(PS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY AND PS_A_RING_6_TIME );
	OUT_3E_P <= NOT(MS_RTC_BUSY AND MS_CONS_ADDR_REG_EXIT_GATE );
	OUT_1E_B <= NOT MS_STORE_AR_SET_C_CYCLE_CTRL_B;
	OUT_3I_D <= NOT(PS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY AND PS_RTC_BUSY AND MS_CONS_ADDR_REG_EXIT_GATE );
	OUT_DOT_3C <= OUT_3C_E OR OUT_3D_P;
	OUT_DOT_1D <= OUT_1B_P OR OUT_1C_C OR OUT_1E_B;
	OUT_DOT_3E <= OUT_5E_G OR OUT_3E_P;

	MS_ADDR_EXIT_0_INSERT <= OUT_1D_R;
	MS_RTC_BUSY_9_INSERT <= OUT_3I_D;


end;