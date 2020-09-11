-- VHDL for IBM SMS ALD page 15.38.01.1
-- Title: A DATA REGISTER CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/9/2020 9:13:05 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_38_01_1_A_DATA_REGISTER_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PS_I_CYCLE_1:	 in STD_LOGIC;
		PS_A_CYCLE:	 in STD_LOGIC;
		PS_NO_SCAN_1:	 in STD_LOGIC;
		PS_MPLY_OP_CODE:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		PS_C_CYCLE:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PS_C_CYCLE_CTRL:	 in STD_LOGIC;
		MS_MPLY_DOT_NO_SCAN_CTRL_DOT_C_CY_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_C_1:	 in STD_LOGIC;
		PS_X_CYCLE:	 in STD_LOGIC;
		MS_I_CYCLE_CTRL:	 in STD_LOGIC;
		MS_A_CYCLE_CTRL:	 in STD_LOGIC;
		MS_X_CYCLE_CTRL:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3:	 in STD_LOGIC;
		PS_SW_B_CH_TO_A_REG:	 out STD_LOGIC;
		PS_SW_AR_EXIT_CH_TO_A_REG:	 out STD_LOGIC;
		MS_RESET_A_DATA_REG:	 out STD_LOGIC);
end ALD_15_38_01_1_A_DATA_REGISTER_CONTROL_ACC;

architecture behavioral of ALD_15_38_01_1_A_DATA_REGISTER_CONTROL_ACC is 

	signal OUT_4A_D: STD_LOGIC;
	signal OUT_3A_F: STD_LOGIC;
	signal OUT_1A_B: STD_LOGIC;
	signal OUT_4B_G: STD_LOGIC;
	signal OUT_3B_R: STD_LOGIC;
	signal OUT_1B_B: STD_LOGIC;
	signal OUT_3C_H: STD_LOGIC;
	signal OUT_1C_A: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_3E_B: STD_LOGIC;
	signal OUT_4F_C: STD_LOGIC;
	signal OUT_3F_B: STD_LOGIC;
	signal OUT_1F_F: STD_LOGIC;
	signal OUT_5G_D: STD_LOGIC;
	signal OUT_4G_D: STD_LOGIC;
	signal OUT_3G_F: STD_LOGIC;
	signal OUT_1G_R: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_4H_C: STD_LOGIC;
	signal OUT_3H_R: STD_LOGIC;
	signal OUT_1H_D: STD_LOGIC;
	signal OUT_5I_E: STD_LOGIC;
	signal OUT_4I_D: STD_LOGIC;
	signal OUT_3I_E: STD_LOGIC;
	signal OUT_1I_C: STD_LOGIC;
	signal OUT_DOT_3A: STD_LOGIC;
	signal OUT_DOT_1A: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;
	signal OUT_DOT_3C: STD_LOGIC;
	signal OUT_DOT_3F: STD_LOGIC;
	signal OUT_DOT_1F: STD_LOGIC;
	signal OUT_DOT_3G: STD_LOGIC;
	signal OUT_DOT_3H: STD_LOGIC;
	signal OUT_DOT_5I: STD_LOGIC;

begin

	OUT_4A_D <= NOT(PS_A_CYCLE AND MS_1401_STORE_AR_OP_CODES AND PS_LOGIC_GATE_D_1 );
	OUT_3A_F <= NOT PS_2ND_CLOCK_PULSE_3;
	OUT_1A_B <= NOT OUT_DOT_3A;
	OUT_4B_G <= NOT(PS_I_CYCLE_1 AND PS_LOGIC_GATE_D_1 );
	OUT_3B_R <= NOT PS_2ND_CLOCK_PULSE_3;
	OUT_1B_B <= NOT OUT_DOT_3B;
	OUT_3C_H <= NOT(PS_NO_SCAN_1 AND PS_C_CYCLE );
	OUT_1C_A <= NOT OUT_DOT_3C;
	OUT_3D_G <= NOT(PS_MPLY_OP_CODE AND PS_LOGIC_GATE_D_1 );
	OUT_3E_B <= NOT PS_2ND_CLOCK_PULSE_3;
	OUT_4F_C <= NOT(PS_STORE_ADDR_REGS_OP_CODE AND PS_C_CYCLE AND PS_LOGIC_GATE_D_1 );
	OUT_3F_B <= NOT PS_2ND_CLOCK_PULSE_3;
	OUT_1F_F <= NOT OUT_DOT_3F;
	OUT_5G_D <= NOT(PS_C_CYCLE_CTRL AND PS_STORE_ADDR_REGS_OP_CODE AND PS_LOGIC_GATE_C_1 );
	OUT_4G_D <= NOT(PS_1401_STORE_AR_OP_CODES AND PS_A_CYCLE AND PS_LOGIC_GATE_D_1 );
	OUT_3G_F <= NOT PS_2ND_CLOCK_PULSE_3;
	OUT_1G_R <= NOT OUT_DOT_3H;
	OUT_5H_D <= NOT(MS_MPLY_DOT_NO_SCAN_CTRL_DOT_C_CY_CTRL );
	OUT_4H_C <= NOT(PS_X_CYCLE AND PS_LOGIC_GATE_D_1 );
	OUT_3H_R <= NOT PS_2ND_CLOCK_PULSE_3;
	OUT_1H_D <= NOT OUT_DOT_3G;
	OUT_5I_E <= NOT(MS_I_CYCLE_CTRL AND MS_A_CYCLE_CTRL AND MS_X_CYCLE_CTRL );
	OUT_4I_D <= NOT(OUT_DOT_5I AND PS_LOGIC_GATE_C_1 );
	OUT_3I_E <= NOT(OUT_5G_D AND OUT_4I_D AND MS_PROGRAM_RESET_1 );
	OUT_1I_C <= NOT OUT_3I_E;
	OUT_DOT_3A <= OUT_4A_D OR OUT_3A_F;
	OUT_DOT_1A <= OUT_1A_B OR OUT_1B_B OR OUT_1C_A;
	OUT_DOT_3B <= OUT_4B_G OR OUT_3B_R;
	OUT_DOT_3C <= OUT_3C_H OR OUT_3D_G OR OUT_3E_B;
	OUT_DOT_3F <= OUT_4F_C OR OUT_3F_B;
	OUT_DOT_1F <= OUT_1F_F OR OUT_1G_R OR OUT_1H_D;
	OUT_DOT_3G <= OUT_4G_D OR OUT_3G_F;
	OUT_DOT_3H <= OUT_4H_C OR OUT_3H_R;
	OUT_DOT_5I <= OUT_5H_D OR OUT_5I_E;

	MS_RESET_A_DATA_REG <= OUT_1I_C;
	PS_SW_B_CH_TO_A_REG <= OUT_DOT_1A;
	PS_SW_AR_EXIT_CH_TO_A_REG <= OUT_DOT_1F;


end;