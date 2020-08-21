-- VHDL for IBM SMS ALD page 14.15.24.1
-- Title: REAL TIME CLOCK AND ADDR EXIT CTR
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/21/2020 12:24:34 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_15_24_1_REAL_TIME_CLOCK_AND_ADDR_EXIT_CTR is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_RING_7_TIME:	 in STD_LOGIC;
		PS_A_RING_2_TIME:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		PS_A_RING_3_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		PS_T_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		MS_RTC_BUSY:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_A_RING_4_TIME:	 in STD_LOGIC;
		PS_ADDR_SCNR_5_POS:	 in STD_LOGIC;
		MS_REAL_TIME_CLOCK_GATE_A:	 out STD_LOGIC;
		MS_REAL_TIME_CLOCK_GATE_B:	 out STD_LOGIC;
		MS_REAL_TIME_CLOCK_GATE_C:	 out STD_LOGIC;
		MS_REAL_TIME_CLOCK_GATE_D:	 out STD_LOGIC);
end ALD_14_15_24_1_REAL_TIME_CLOCK_AND_ADDR_EXIT_CTR;

architecture behavioral of ALD_14_15_24_1_REAL_TIME_CLOCK_AND_ADDR_EXIT_CTR is 

	signal OUT_4A_C: STD_LOGIC;
	signal OUT_4B_C: STD_LOGIC;
	signal OUT_4B_C_Latch: STD_LOGIC;
	signal OUT_3B_K: STD_LOGIC;
	signal OUT_3B_K_Latch: STD_LOGIC;
	signal OUT_4C_P: STD_LOGIC;
	signal OUT_4D_C: STD_LOGIC;
	signal OUT_4D_C_Latch: STD_LOGIC;
	signal OUT_3D_G: STD_LOGIC;
	signal OUT_3D_G_Latch: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_4F_D_Latch: STD_LOGIC;
	signal OUT_3F_K: STD_LOGIC;
	signal OUT_3F_K_Latch: STD_LOGIC;
	signal OUT_5G_E: STD_LOGIC;
	signal OUT_5H_P: STD_LOGIC;
	signal OUT_4H_D: STD_LOGIC;
	signal OUT_3H_P: STD_LOGIC;
	signal OUT_3H_P_Latch: STD_LOGIC;
	signal OUT_2H_C: STD_LOGIC;
	signal OUT_2H_C_Latch: STD_LOGIC;
	signal OUT_5I_G: STD_LOGIC;
	signal OUT_3I_K: STD_LOGIC;
	signal OUT_DOT_5H: STD_LOGIC;

begin

	OUT_4A_C <= NOT(PS_STORE_ADDR_REGS_OP_CODE AND PS_I_RING_7_TIME );
	OUT_4B_C_Latch <= NOT(OUT_4H_D AND OUT_4C_P AND OUT_3B_K );
	OUT_3B_K_Latch <= NOT(OUT_4A_C AND OUT_4B_C );
	OUT_4C_P <= NOT(PS_A_RING_2_TIME AND PS_LOGIC_GATE_F_1 );
	OUT_4D_C_Latch <= NOT(OUT_4H_D AND OUT_4E_C AND OUT_3D_G );
	OUT_3D_G_Latch <= NOT(OUT_4C_P AND OUT_4D_C );
	OUT_4E_C <= NOT(PS_A_RING_3_TIME AND PS_LOGIC_GATE_F_1 );
	OUT_4F_D_Latch <= NOT(OUT_4H_D AND OUT_3I_K AND OUT_3F_K );
	OUT_3F_K_Latch <= NOT(OUT_4E_C AND OUT_4F_D );
	OUT_5G_E <= NOT(PS_STORE_ADDR_REGS_OP_CODE AND PS_T_SYMBOL_OP_MODIFIER AND MS_RTC_BUSY );
	OUT_5H_P <= NOT(MS_PROGRAM_RESET_1 AND OUT_5I_G );
	OUT_4H_D <= NOT OUT_DOT_5H;
	OUT_3H_P_Latch <= NOT(OUT_4H_D AND OUT_2H_C );
	OUT_2H_C_Latch <= NOT(OUT_3H_P AND OUT_3I_K );
	OUT_5I_G <= NOT(PS_LOGIC_GATE_F_1 AND PS_ADDR_SCNR_5_POS );
	OUT_3I_K <= NOT(PS_LOGIC_GATE_F_1 AND PS_A_RING_4_TIME );
	OUT_DOT_5H <= OUT_5G_E OR OUT_5H_P;

	MS_REAL_TIME_CLOCK_GATE_A <= OUT_4B_C;
	MS_REAL_TIME_CLOCK_GATE_B <= OUT_4D_C;
	MS_REAL_TIME_CLOCK_GATE_C <= OUT_4F_D;
	MS_REAL_TIME_CLOCK_GATE_D <= OUT_3H_P;

	Latch_4B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4B_C_Latch,
		Q => OUT_4B_C,
		QBar => OPEN );

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_K_Latch,
		Q => OUT_3B_K,
		QBar => OPEN );

	Latch_4D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4D_C_Latch,
		Q => OUT_4D_C,
		QBar => OPEN );

	Latch_3D: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3D_G_Latch,
		Q => OUT_3D_G,
		QBar => OPEN );

	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_D_Latch,
		Q => OUT_4F_D,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_K_Latch,
		Q => OUT_3F_K,
		QBar => OPEN );

	Latch_3H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3H_P_Latch,
		Q => OUT_3H_P,
		QBar => OPEN );

	Latch_2H: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2H_C_Latch,
		Q => OUT_2H_C,
		QBar => OPEN );


end;
