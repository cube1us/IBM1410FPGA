-- VHDL for IBM SMS ALD page 13.65.01.1
-- Title: 1401 ERROR LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/5/2020 12:58:47 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_65_01_1_1401_ERROR_LATCHES is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_RESET_READER_ERROR_LATCH:	 in STD_LOGIC;
		PS_1401_READ_TRIGGER:	 in STD_LOGIC;
		PS_E_CH_CHECK_BUS:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B:	 in STD_LOGIC;
		MS_PROGRAM_RESET_2:	 in STD_LOGIC;
		MV_1401_MODE:	 in STD_LOGIC;
		SWITCH_TOG_IO_CHK_RST:	 in STD_LOGIC;
		PS_1401_READ_ERROR:	 out STD_LOGIC;
		MS_1401_I_O_CHECK_RESET:	 out STD_LOGIC);
end ALD_13_65_01_1_1401_ERROR_LATCHES;

architecture behavioral of ALD_13_65_01_1_1401_ERROR_LATCHES is 

	signal OUT_3B_P: STD_LOGIC;
	signal OUT_3B_P_Latch: STD_LOGIC;
	signal OUT_1B_G: STD_LOGIC;
	signal OUT_1B_G_Latch: STD_LOGIC;
	signal OUT_5C_D: STD_LOGIC;
	signal OUT_3G_P: STD_LOGIC;
	signal OUT_5I_T: STD_LOGIC;
	signal OUT_4I_X: STD_LOGIC;
	signal OUT_DOT_3B: STD_LOGIC;

begin

	OUT_3B_P_Latch <= NOT(OUT_1B_G AND MS_RESET_READER_ERROR_LATCH );
	OUT_1B_G_Latch <= NOT(OUT_DOT_3B AND OUT_5C_D );
	OUT_5C_D <= NOT(PS_1401_READ_TRIGGER AND PS_E_CH_CHECK_BUS AND PS_E_CH_STATUS_SAMPLE_B );
	OUT_3G_P <= NOT(MS_PROGRAM_RESET_2 AND OUT_4I_X );
	OUT_5I_T <=  NOT SWITCH_TOG_IO_CHK_RST;
	OUT_4I_X <= OUT_5I_T;
	OUT_DOT_3B <= OUT_3B_P OR OUT_3G_P;

	PS_1401_READ_ERROR <= OUT_1B_G;
	MS_1401_I_O_CHECK_RESET <= OUT_4I_X;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_P_Latch,
		Q => OUT_3B_P,
		QBar => OPEN );

	Latch_1B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1B_G_Latch,
		Q => OUT_1B_G,
		QBar => OPEN );


end;
