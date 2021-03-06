-- VHDL for IBM SMS ALD page 14.12.01.1
-- Title: C ADDRESS REGISTER UNITS POS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/18/2020 2:09:00 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_12_01_1_C_ADDRESS_REGISTER_UNITS_POS is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ADDR_CH_0_B_1:	 in STD_LOGIC;
		PS_ADDR_CH_1_B_1:	 in STD_LOGIC;
		MS_RESET_C_AR:	 in STD_LOGIC;
		PS_ADDR_CH_2_B_1:	 in STD_LOGIC;
		PS_SET_AR_U_POS:	 in STD_LOGIC;
		PS_RO_C_AR:	 in STD_LOGIC;
		PS_SET_C_AR:	 in STD_LOGIC;
		PS_ADDR_CH_4_B_1:	 in STD_LOGIC;
		PS_ADDR_CH_8_B_1:	 in STD_LOGIC;
		MS_C_AR_GT_OUT_UP0B:	 out STD_LOGIC;
		MS_C_AR_GT_OUT_UP1B:	 out STD_LOGIC;
		MS_C_AR_GT_OUT_UP2B:	 out STD_LOGIC;
		MS_C_AR_GT_OUT_UP4B:	 out STD_LOGIC;
		MS_C_AR_GT_OUT_UP8B:	 out STD_LOGIC);
end ALD_14_12_01_1_C_ADDRESS_REGISTER_UNITS_POS;

architecture behavioral of ALD_14_12_01_1_C_ADDRESS_REGISTER_UNITS_POS is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_3A_NoPin: STD_LOGIC;
	signal OUT_3A_NoPin_Latch: STD_LOGIC;
	signal OUT_2A_NoPin: STD_LOGIC;
	signal OUT_2A_NoPin_Latch: STD_LOGIC;
	signal OUT_1A_D: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_3C_NoPin: STD_LOGIC;
	signal OUT_3C_NoPin_Latch: STD_LOGIC;
	signal OUT_2C_NoPin: STD_LOGIC;
	signal OUT_2C_NoPin_Latch: STD_LOGIC;
	signal OUT_1C_A: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin: STD_LOGIC;
	signal OUT_3E_NoPin_Latch: STD_LOGIC;
	signal OUT_2E_NoPin: STD_LOGIC;
	signal OUT_2E_NoPin_Latch: STD_LOGIC;
	signal OUT_1E_D: STD_LOGIC;
	signal OUT_5G_NoPin: STD_LOGIC;
	signal OUT_3G_NoPin: STD_LOGIC;
	signal OUT_3G_NoPin_Latch: STD_LOGIC;
	signal OUT_2G_NoPin: STD_LOGIC;
	signal OUT_2G_NoPin_Latch: STD_LOGIC;
	signal OUT_1G_A: STD_LOGIC;
	signal OUT_5I_NoPin: STD_LOGIC;
	signal OUT_3I_NoPin: STD_LOGIC;
	signal OUT_3I_NoPin_Latch: STD_LOGIC;
	signal OUT_2I_NoPin: STD_LOGIC;
	signal OUT_2I_NoPin_Latch: STD_LOGIC;
	signal OUT_1I_D: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_ADDR_CH_0_B_1 AND PS_SET_AR_U_POS AND PS_SET_C_AR );
	OUT_3A_NoPin_Latch <= NOT(MS_RESET_C_AR AND OUT_2A_NoPin );
	OUT_2A_NoPin_Latch <= NOT(OUT_5A_NoPin AND OUT_3A_NoPin );
	OUT_1A_D <= NOT(OUT_2A_NoPin AND PS_RO_C_AR );
	OUT_5C_NoPin <= NOT(PS_SET_AR_U_POS AND PS_ADDR_CH_1_B_1 AND PS_SET_C_AR );
	OUT_3C_NoPin_Latch <= NOT(MS_RESET_C_AR AND OUT_2C_NoPin );
	OUT_2C_NoPin_Latch <= NOT(OUT_5C_NoPin AND OUT_3C_NoPin );
	OUT_1C_A <= NOT(OUT_2C_NoPin AND PS_RO_C_AR );
	OUT_5E_NoPin <= NOT(PS_ADDR_CH_2_B_1 AND PS_SET_AR_U_POS AND PS_SET_C_AR );
	OUT_3E_NoPin_Latch <= NOT(MS_RESET_C_AR AND OUT_2E_NoPin );
	OUT_2E_NoPin_Latch <= NOT(OUT_5E_NoPin AND OUT_3E_NoPin );
	OUT_1E_D <= NOT(OUT_2E_NoPin AND PS_RO_C_AR );
	OUT_5G_NoPin <= NOT(PS_SET_AR_U_POS AND PS_ADDR_CH_4_B_1 AND PS_SET_C_AR );
	OUT_3G_NoPin_Latch <= NOT(MS_RESET_C_AR AND OUT_2G_NoPin );
	OUT_2G_NoPin_Latch <= NOT(OUT_5G_NoPin AND OUT_3G_NoPin );
	OUT_1G_A <= NOT(OUT_2G_NoPin AND PS_RO_C_AR );
	OUT_5I_NoPin <= NOT(PS_ADDR_CH_8_B_1 AND PS_SET_AR_U_POS AND PS_SET_C_AR );
	OUT_3I_NoPin_Latch <= NOT(MS_RESET_C_AR AND OUT_2I_NoPin );
	OUT_2I_NoPin_Latch <= NOT(OUT_5I_NoPin AND OUT_3I_NoPin );
	OUT_1I_D <= NOT(OUT_2I_NoPin AND PS_RO_C_AR );

	MS_C_AR_GT_OUT_UP0B <= OUT_1A_D;
	MS_C_AR_GT_OUT_UP1B <= OUT_1C_A;
	MS_C_AR_GT_OUT_UP2B <= OUT_1E_D;
	MS_C_AR_GT_OUT_UP4B <= OUT_1G_A;
	MS_C_AR_GT_OUT_UP8B <= OUT_1I_D;

	Latch_3A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3A_NoPin_Latch,
		Q => OUT_3A_NoPin,
		QBar => OPEN );

	Latch_2A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2A_NoPin_Latch,
		Q => OUT_2A_NoPin,
		QBar => OPEN );

	Latch_3C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3C_NoPin_Latch,
		Q => OUT_3C_NoPin,
		QBar => OPEN );

	Latch_2C: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2C_NoPin_Latch,
		Q => OUT_2C_NoPin,
		QBar => OPEN );

	Latch_3E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3E_NoPin_Latch,
		Q => OUT_3E_NoPin,
		QBar => OPEN );

	Latch_2E: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2E_NoPin_Latch,
		Q => OUT_2E_NoPin,
		QBar => OPEN );

	Latch_3G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3G_NoPin_Latch,
		Q => OUT_3G_NoPin,
		QBar => OPEN );

	Latch_2G: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2G_NoPin_Latch,
		Q => OUT_2G_NoPin,
		QBar => OPEN );

	Latch_3I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_3I_NoPin_Latch,
		Q => OUT_3I_NoPin,
		QBar => OPEN );

	Latch_2I: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_2I_NoPin_Latch,
		Q => OUT_2I_NoPin,
		QBar => OPEN );


end;
