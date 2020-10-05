-- VHDL for IBM SMS ALD page 16.45.01.1
-- Title: DIVIDE OVERFLOW LATCH
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/5/2020 4:58:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_45_01_1_DIVIDE_OVERFLOW_LATCH is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_2:	 in STD_LOGIC;
		MS_SET_NO_DIV_OVERFLOW:	 in STD_LOGIC;
		MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC:	 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1:	 in STD_LOGIC;
		MS_1401_MODE_1:	 in STD_LOGIC;
		MS_RESET_DIV_OVERFLOW:	 in STD_LOGIC;
		PS_NOT_DIV_OVERFLOW:	 out STD_LOGIC;
		PS_DIV_OVERFLOW:	 out STD_LOGIC;
		LAMP_15A1H12:	 out STD_LOGIC);
end ALD_16_45_01_1_DIVIDE_OVERFLOW_LATCH;

architecture behavioral of ALD_16_45_01_1_DIVIDE_OVERFLOW_LATCH is 

	signal OUT_4B_NoPin: STD_LOGIC;
	signal OUT_3B_F: STD_LOGIC;
	signal OUT_3B_F_Latch: STD_LOGIC;
	signal OUT_2B_D: STD_LOGIC;
	signal OUT_2B_D_Latch: STD_LOGIC;
	signal OUT_5C_F: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_3E_P: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_3F_D_Latch: STD_LOGIC;
	signal OUT_2F_C: STD_LOGIC;
	signal OUT_2F_C_Latch: STD_LOGIC;
	signal OUT_2H_E: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;

begin

	OUT_4B_NoPin <= NOT(PS_LAST_LOGIC_GATE_2 AND OUT_5C_F );
	OUT_3B_F_Latch <= NOT(OUT_4B_NoPin AND OUT_2B_D );
	OUT_2B_D_Latch <= NOT(OUT_3B_F AND MS_SET_NO_DIV_OVERFLOW AND MS_COMPUTER_RESET_1 );
	OUT_5C_F <= NOT MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC;
	OUT_5D_C <= NOT MB_DIV_DOT_MQ_DOT_B_DOT_S_DOT_RC;
	OUT_4E_C <= NOT(OUT_5D_C AND PS_LAST_LOGIC_GATE_1 AND PS_LAST_LOGIC_GATE_1 );
	OUT_3E_P <= NOT(MS_1401_MODE_1 );
	OUT_3F_D_Latch <= NOT(OUT_2F_C AND MS_RESET_DIV_OVERFLOW AND MS_COMPUTER_RESET_1 );
	OUT_2F_C_Latch <= NOT(OUT_3F_D AND OUT_DOT_3E );
	OUT_2H_E <= NOT OUT_3F_D;
	LAMP_15A1H12 <= OUT_2H_E;
	OUT_DOT_3E <= OUT_4E_C OR OUT_3E_P;

	PS_NOT_DIV_OVERFLOW <= OUT_2B_D;
	PS_DIV_OVERFLOW <= OUT_2F_C;

	Latch_3B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3B_F_Latch,
		Q => OUT_3B_F,
		QBar => OPEN );

	Latch_2B: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2B_D_Latch,
		Q => OUT_2B_D,
		QBar => OPEN );

	Latch_3F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3F_D_Latch,
		Q => OUT_3F_D,
		QBar => OPEN );

	Latch_2F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2F_C_Latch,
		Q => OUT_2F_C,
		QBar => OPEN );


end;
