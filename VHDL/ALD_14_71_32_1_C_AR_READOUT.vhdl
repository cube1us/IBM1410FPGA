-- VHDL for IBM SMS ALD page 14.71.32.1
-- Title: C AR READOUT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 5/23/2022 4:52:35 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_32_1_C_AR_READOUT is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_INDEX_A_AR:	 in STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		MS_CONSOLE_INHIBIT_AR_RO:	 in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A:	 in STD_LOGIC;
		MV_CE_RO_C_AR:	 in STD_LOGIC;
		PS_A_CYCLE_CTRL:	 in STD_LOGIC;
		PS_UNITS_CTRL_LATCH:	 in STD_LOGIC;
		PS_TABLE_SEARCH_OP_CODE:	 in STD_LOGIC;
		PS_C_AR_RO_CTRL_STAR_ARITH:	 in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES:	 in STD_LOGIC;
		PS_1ST_SCAN_CTRL:	 in STD_LOGIC;
		MS_I_RING_3_TIME:	 in STD_LOGIC;
		PS_C_CYCLE_CTRL:	 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		PS_CONS_MX_30_POS:	 in STD_LOGIC;
		PS_DISPLAY_ROUTINE_1:	 in STD_LOGIC;
		PS_CONSOLE_STROBE:	 in STD_LOGIC;
		PS_ALTER_ROUTINE:	 in STD_LOGIC;
		PS_CONS_MX_32_POS:	 in STD_LOGIC;
		PS_RO_C_AR:	 out STD_LOGIC;
		MS_TABLE_SEARCH_A_CYCLE_U_CTRL:	 out STD_LOGIC);
end ALD_14_71_32_1_C_AR_READOUT;

architecture behavioral of ALD_14_71_32_1_C_AR_READOUT is 

	signal OUT_3B_G: STD_LOGIC;
	signal OUT_3C_G: STD_LOGIC;
	signal OUT_2C_C: STD_LOGIC;
	signal OUT_1C_E: STD_LOGIC;
	signal OUT_1C_E_Latch: STD_LOGIC;
	signal OUT_5D_D: STD_LOGIC;
	signal OUT_4D_P: STD_LOGIC;
	signal OUT_5E_C: STD_LOGIC;
	signal OUT_4E_C: STD_LOGIC;
	signal OUT_5F_A: STD_LOGIC;
	signal OUT_4G_NoPin: STD_LOGIC;
	signal OUT_3G_C: STD_LOGIC;
	signal OUT_4H_NoPin: STD_LOGIC;
	signal OUT_DOT_2C: STD_LOGIC;
	signal OUT_DOT_4D: STD_LOGIC;
	signal OUT_DOT_5E: STD_LOGIC;

begin

	OUT_3B_G <= NOT(MS_CONSOLE_INHIBIT_AR_RO AND PS_INDEX_A_AR AND PS_B_TO_LAST_LOGIC_GATE );
	OUT_3C_G <= NOT(PS_LOGIC_GATE_SPECIAL_A AND OUT_DOT_4D AND MS_CONSOLE_INHIBIT_AR_RO );
	OUT_2C_C <= NOT(OUT_3B_G AND OUT_3C_G AND MV_CE_RO_C_AR );
	OUT_1C_E_Latch <= OUT_DOT_2C;
	OUT_5D_D <= NOT(PS_A_CYCLE_CTRL AND PS_UNITS_CTRL_LATCH AND PS_TABLE_SEARCH_OP_CODE );
	OUT_4D_P <= NOT(OUT_DOT_5E AND OUT_5F_A );
	OUT_5E_C <= NOT(PS_1401_STORE_AR_OP_CODES AND PS_1ST_SCAN_CTRL AND PS_C_CYCLE_CTRL );
	OUT_4E_C <= NOT(MS_I_RING_3_TIME );
	OUT_5F_A <= NOT(PS_C_CYCLE_CTRL AND PS_STORE_ADDR_REGS_OP_CODE );
	OUT_4G_NoPin <= NOT(PS_CONS_MX_30_POS AND PS_DISPLAY_ROUTINE_1 AND PS_CONSOLE_STROBE );
	OUT_3G_C <= NOT(OUT_4G_NoPin AND OUT_4H_NoPin );
	OUT_4H_NoPin <= NOT(PS_CONSOLE_STROBE AND PS_ALTER_ROUTINE AND PS_CONS_MX_32_POS );
	OUT_DOT_2C <= OUT_2C_C OR OUT_3G_C;
	OUT_DOT_4D <= OUT_4D_P OR PS_C_AR_RO_CTRL_STAR_ARITH;
	OUT_DOT_5E <= OUT_5E_C OR OUT_4E_C;

	PS_RO_C_AR <= OUT_1C_E;
	MS_TABLE_SEARCH_A_CYCLE_U_CTRL <= OUT_5D_D;

	Latch_1C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_1C_E_Latch,
		Q => OUT_1C_E,
		QBar => OPEN );


end;
