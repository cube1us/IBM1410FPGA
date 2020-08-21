-- VHDL for IBM SMS ALD page 14.15.23.1
-- Title: REAL TIME CLOCK CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/20/2020 5:22:58 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_23_1_REAL_TIME_CLOCK_CONTROLS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_T_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_C_CYCLE:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_0_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_1_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_2_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_3_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_4_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_5_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_6_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_7_DIGIT:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_8_DIGIT:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_9_DIGIT:	 in STD_LOGIC;
		MS_A_RING_6_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		PS_I_RING_7_TIME:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_I_RING_6_TIME:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		SWITCH_REL_RTC_BUSY:	 in STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY:	 out STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY:	 out STD_LOGIC;
		PS_RTC_BUSY:	 out STD_LOGIC;
		MS_RTC_BUSY:	 out STD_LOGIC);
end ALD_14_15_23_1_REAL_TIME_CLOCK_CONTROLS;

architecture behavioral of ALD_14_15_23_1_REAL_TIME_CLOCK_CONTROLS is 

	signal OUT_3A_E: STD_LOGIC;
	signal OUT_3B_D: STD_LOGIC;
	signal OUT_3C_E: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_3D_C: STD_LOGIC;
	signal OUT_3E_D: STD_LOGIC;
	signal OUT_3F_F: STD_LOGIC;
	signal OUT_3G_G: STD_LOGIC;
	signal OUT_2G_R: STD_LOGIC;
	signal OUT_5H_X: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;
	signal OUT_5I_N: STD_LOGIC;
	signal OUT_3I_C: STD_LOGIC;
	signal OUT_3I_C_Latch: STD_LOGIC;
	signal OUT_2I_R: STD_LOGIC;
	signal OUT_2I_R_Latch: STD_LOGIC;
	signal OUT_1I_B: STD_LOGIC;
	signal OUT_DOT_3F: STD_LOGIC;
	signal OUT_DOT_2G: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;

begin

	OUT_3A_E <= NOT(PS_STORE_ADDR_REGS_OP_CODE AND PS_T_SYMBOL_OP_MODIFIER AND PS_C_CYCLE );
	OUT_3B_D <= NOT(MS_REAL_TIME_CLOCK_0_DIGIT AND MS_REAL_TIME_CLOCK_1_DIGIT AND MS_REAL_TIME_CLOCK_2_DIGIT );
	OUT_3C_E <= NOT(MS_REAL_TIME_CLOCK_3_DIGIT AND MS_REAL_TIME_CLOCK_4_DIGIT AND MS_REAL_TIME_CLOCK_5_DIGIT );
	OUT_2C_D <= NOT OUT_3A_E;
	OUT_3D_C <= NOT(MS_REAL_TIME_CLOCK_6_DIGIT AND MS_REAL_TIME_CLOCK_7_DIGIT AND MS_REAL_TIME_CLOCK_8_DIGIT );
	OUT_3E_D <= NOT(OUT_2C_D AND MS_REAL_TIME_CLOCK_9_DIGIT AND MS_A_RING_6_TIME );
	OUT_3F_F <= NOT PS_LOGIC_GATE_C_1;
	OUT_3G_G <= NOT(PS_I_RING_7_TIME AND PS_I_CYCLE );
	OUT_2G_R <= NOT OUT_DOT_3F;
	OUT_5H_X <= OUT_5I_N;
	OUT_3H_G <= NOT(OUT_5H_X AND PS_STORE_ADDR_REGS_OP_CODE AND PS_LOGIC_GATE_F_1 );
	OUT_5I_N <=  NOT SWITCH_REL_RTC_BUSY;
	OUT_3I_C_Latch <= NOT(MS_I_RING_6_TIME AND OUT_DOT_2G );
	OUT_2I_R_Latch <= NOT(OUT_3I_C AND OUT_DOT_3H );
	OUT_1I_B <= NOT OUT_DOT_2G;
	OUT_DOT_3F <= OUT_3B_D OR OUT_3C_E OR OUT_3D_C OR OUT_3E_D OR OUT_3F_F;
	OUT_DOT_2G <= OUT_2G_R OR OUT_2I_R;
	OUT_DOT_3H <= OUT_3G_G OR OUT_3H_G;

	MS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY <= OUT_3A_E;
	PS_STORE_ADDR_REGS_OP_DOT_T_DOT_C_CY <= OUT_2C_D;
	MS_RTC_BUSY <= OUT_1I_B;
	PS_RTC_BUSY <= OUT_DOT_2G;

	Latch_3I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3I_C_Latch,
		Q => OUT_3I_C,
		QBar => OPEN );

	Latch_2I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2I_R_Latch,
		Q => OUT_2I_R,
		QBar => OPEN );


end;