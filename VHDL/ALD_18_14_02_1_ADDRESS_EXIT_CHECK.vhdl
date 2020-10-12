-- VHDL for IBM SMS ALD page 18.14.02.1
-- Title: ADDRESS EXIT CHECK
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/12/2020 12:57:38 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_14_02_1_ADDRESS_EXIT_CHECK is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		PS_AR_CH_VC_GROUP_ONE:	 in STD_LOGIC;
		MV_3RD_CHECK_TEST_SWITCH:	 in STD_LOGIC;
		PS_AR_CH_VC_GROUP_TWO:	 in STD_LOGIC;
		MS_START_RESET:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_ADDRESS_EXIT_ERROR:	 out STD_LOGIC;
		MS_ADDRESS_EXIT_SAMPLE:	 out STD_LOGIC;
		LAMP_15A1H19:	 out STD_LOGIC);
end ALD_18_14_02_1_ADDRESS_EXIT_CHECK;

architecture behavioral of ALD_18_14_02_1_ADDRESS_EXIT_CHECK is 

	signal OUT_4C_NoPin: STD_LOGIC;
	signal OUT_3C_F: STD_LOGIC;
	signal OUT_2C_H: STD_LOGIC;
	signal OUT_1C_D: STD_LOGIC;
	signal OUT_5D_C: STD_LOGIC;
	signal OUT_4D_NoPin: STD_LOGIC;
	signal OUT_5E_K: STD_LOGIC;
	signal OUT_2E_A: STD_LOGIC;
	signal OUT_5F_C: STD_LOGIC;
	signal OUT_3F_C: STD_LOGIC;
	signal OUT_2F_K: STD_LOGIC;

begin

	OUT_4C_NoPin <= NOT(PS_AR_CH_VC_GROUP_TWO AND PS_AR_CH_VC_GROUP_ONE );
	OUT_3C_F <= NOT(OUT_4C_NoPin AND OUT_4D_NoPin AND MV_3RD_CHECK_TEST_SWITCH );

	SMS_DEZ_2C: entity SMS_DEZ
	    port map (
		FPGA_CLK => FPGA_CLK,
		GATEON => OUT_3C_F,	-- Pin A
		ACSET => OUT_3F_C,	-- Pin G
		DCRESET => MS_START_RESET,	-- Pin B
		GATEOFF => '0',	-- Pin F
		OUTON => OUT_2C_H,
		OUTOFF => OPEN,
		DCRFORCE => OPEN );

	OUT_1C_D <= NOT(OUT_2C_H AND PS_ERROR_SAMPLE );
	OUT_5D_C <= NOT(PS_AR_CH_VC_GROUP_TWO );
	OUT_4D_NoPin <= NOT(OUT_5D_C AND OUT_5E_K );
	OUT_5E_K <= NOT(PS_AR_CH_VC_GROUP_ONE );
	OUT_2E_A <= NOT OUT_1C_D;
	LAMP_15A1H19 <= OUT_2E_A;
	OUT_5F_C <= NOT(PS_LOGIC_GATE_F_1 );
	OUT_3F_C <= NOT OUT_5F_C;
	OUT_2F_K <= NOT(OUT_3F_C );

	MS_ADDRESS_EXIT_ERROR <= OUT_1C_D;
	MS_ADDRESS_EXIT_SAMPLE <= OUT_2F_K;


end;
