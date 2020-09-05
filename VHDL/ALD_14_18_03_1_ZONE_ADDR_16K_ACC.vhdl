-- VHDL for IBM SMS ALD page 14.18.03.1
-- Title: ZONE ADDR 16K-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/25/2020 12:50:32 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_18_03_1_ZONE_ADDR_16K_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CH_A_BIT:	 in STD_LOGIC;
		PS_BIN_REG_A_1_BIT:	 in STD_LOGIC;
		PS_GATE_A_CH_TO_ZONE_ADDER:	 in STD_LOGIC;
		PS_BIN_REG_A_4_BIT:	 in STD_LOGIC;
		PS_GATE_BIN_A12_TO_ZONE_ADDER:	 in STD_LOGIC;
		PS_A_CH_B_BIT:	 in STD_LOGIC;
		PS_GATE_BIN_A48_TO_ZONE_ADDER:	 in STD_LOGIC;
		PS_BIN_REG_A_2_BIT:	 in STD_LOGIC;
		PS_BIN_REG_A_8_BIT:	 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_GATE_B_CH_TO_ZONE_ADDER:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_ZONE_ADDER_A_BITS_EVEN:	 out STD_LOGIC;
		MS_ZONE_ADDER_A_A_DOT_B_A:	 out STD_LOGIC;
		MS_ZONE_ADDER_A_B_DOT_B_B:	 out STD_LOGIC;
		PS_ZONE_ADDER_B_BITS_EVEN:	 out STD_LOGIC);
end ALD_14_18_03_1_ZONE_ADDR_16K_ACC;

architecture behavioral of ALD_14_18_03_1_ZONE_ADDR_16K_ACC is 

	signal OUT_5A_NoPin: STD_LOGIC;
	signal OUT_5B_NoPin: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_2B_C: STD_LOGIC;
	signal OUT_1B_D: STD_LOGIC;
	signal OUT_5C_NoPin: STD_LOGIC;
	signal OUT_3C_C: STD_LOGIC;
	signal OUT_2C_K: STD_LOGIC;
	signal OUT_5D_NoPin: STD_LOGIC;
	signal OUT_5E_NoPin: STD_LOGIC;
	signal OUT_4E_F: STD_LOGIC;
	signal OUT_2E_G: STD_LOGIC;
	signal OUT_5F_K: STD_LOGIC;
	signal OUT_3F_NoPin: STD_LOGIC;
	signal OUT_2F_F: STD_LOGIC;
	signal OUT_1F_C: STD_LOGIC;
	signal OUT_5G_C: STD_LOGIC;
	signal OUT_3G_P: STD_LOGIC;
	signal OUT_5H_D: STD_LOGIC;
	signal OUT_3H_G: STD_LOGIC;

begin

	OUT_5A_NoPin <= NOT(PS_A_CH_A_BIT AND PS_GATE_A_CH_TO_ZONE_ADDER );
	OUT_5B_NoPin <= NOT(PS_BIN_REG_A_1_BIT AND PS_GATE_BIN_A12_TO_ZONE_ADDER );
	OUT_4B_F <= NOT(OUT_5A_NoPin AND OUT_5B_NoPin AND OUT_5C_NoPin );
	OUT_2B_C <= NOT(OUT_4B_F AND OUT_3G_P );
	OUT_1B_D <= NOT(OUT_2B_C AND OUT_2C_K );
	OUT_5C_NoPin <= NOT(PS_BIN_REG_A_4_BIT AND PS_GATE_BIN_A48_TO_ZONE_ADDER );
	OUT_3C_C <= NOT(OUT_4B_F );
	OUT_2C_K <= NOT(OUT_3C_C AND OUT_5G_C );
	OUT_5D_NoPin <= NOT(PS_A_CH_B_BIT AND PS_GATE_A_CH_TO_ZONE_ADDER );
	OUT_5E_NoPin <= NOT(PS_BIN_REG_A_2_BIT AND PS_GATE_BIN_A12_TO_ZONE_ADDER );
	OUT_4E_F <= NOT(OUT_5D_NoPin AND OUT_5E_NoPin AND OUT_5F_K );
	OUT_2E_G <= NOT(OUT_4E_F AND OUT_3H_G );
	OUT_5F_K <= NOT(PS_BIN_REG_A_8_BIT AND PS_GATE_BIN_A48_TO_ZONE_ADDER );
	OUT_3F_NoPin <= NOT(OUT_4E_F );
	OUT_2F_F <= NOT(OUT_3F_NoPin AND OUT_5H_D );
	OUT_1F_C <= NOT(OUT_2E_G AND OUT_2F_F );
	OUT_5G_C <= NOT(PS_B_CH_A_BIT AND PS_GATE_B_CH_TO_ZONE_ADDER );
	OUT_3G_P <= NOT(OUT_5G_C );
	OUT_5H_D <= NOT(PS_GATE_B_CH_TO_ZONE_ADDER AND PS_B_CH_B_BIT );
	OUT_3H_G <= NOT(OUT_5H_D );

	MS_ZONE_ADDER_A_A_DOT_B_A <= OUT_2B_C;
	PS_ZONE_ADDER_A_BITS_EVEN <= OUT_1B_D;
	MS_ZONE_ADDER_A_B_DOT_B_B <= OUT_2E_G;
	PS_ZONE_ADDER_B_BITS_EVEN <= OUT_1F_C;


end;