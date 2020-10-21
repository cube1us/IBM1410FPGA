-- VHDL for IBM SMS ALD page 39.10.01.1
-- Title: MEMORY CLK READ CYCLE FEAT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/21/2020 8:33:59 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_39_10_01_1_MEMORY_CLK_READ_CYCLE_FEAT_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_START_MEM_CLOCK_M:	 in STD_LOGIC;
		MY_READ_CALL_M:	 in STD_LOGIC;
		MS_COMPUTER_RESET_2:	 in STD_LOGIC;
		MY_MEM_AR_TTHP4B:	 in STD_LOGIC;
		PY_B_DATA_REG_RESET_1:	 out STD_LOGIC;
		MY_B_DATA_REG_RESET:	 out STD_LOGIC;
		PY_B_DATA_REG_RESET_2:	 out STD_LOGIC;
		PY_B_DATA_REG_RESET_3:	 out STD_LOGIC;
		PY_START_READ:	 out STD_LOGIC;
		MY_Y_RD_1:	 out STD_LOGIC;
		PY_B_DATA_REG_RESET_4:	 out STD_LOGIC;
		MY_Y_RD_2:	 out STD_LOGIC;
		MY_X_RD_1:	 out STD_LOGIC;
		MY_X_RD_2:	 out STD_LOGIC;
		MY_X_RD_CND_CLK:	 out STD_LOGIC);
end ALD_39_10_01_1_MEMORY_CLK_READ_CYCLE_FEAT_ACC;

architecture behavioral of ALD_39_10_01_1_MEMORY_CLK_READ_CYCLE_FEAT_ACC is 

	signal OUT_2A_A: STD_LOGIC;
	signal OUT_1A_L: STD_LOGIC;
	signal OUT_4B_F: STD_LOGIC;
	signal OUT_3B_A: STD_LOGIC;
	signal OUT_3B_Q: STD_LOGIC;
	signal OUT_2B_A: STD_LOGIC;
	signal OUT_1B_E: STD_LOGIC;
	signal OUT_5C_G: STD_LOGIC;
	signal OUT_4C_A: STD_LOGIC;
	signal OUT_3C_A: STD_LOGIC;
	signal OUT_2C_D: STD_LOGIC;
	signal OUT_1C_Q: STD_LOGIC;
	signal OUT_5D_A: STD_LOGIC;
	signal OUT_4D_P: STD_LOGIC;
	signal OUT_3D_A: STD_LOGIC;
	signal OUT_1D_A: STD_LOGIC;
	signal OUT_4E_D: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_5F_A: STD_LOGIC;
	signal OUT_5F_Q: STD_LOGIC;
	signal OUT_3F_D: STD_LOGIC;
	signal OUT_2F_A: STD_LOGIC;
	signal OUT_1F_A: STD_LOGIC;
	signal OUT_5G_G: STD_LOGIC;
	signal OUT_3G_L: STD_LOGIC;
	signal OUT_4H_P: STD_LOGIC;
	signal OUT_3H_Q: STD_LOGIC;
	signal OUT_5I_A: STD_LOGIC;
	signal OUT_5I_Q: STD_LOGIC;
	signal OUT_3I_D: STD_LOGIC;
	signal OUT_2I_A: STD_LOGIC;
	signal OUT_1I_P: STD_LOGIC;

begin

	OUT_2A_A <= NOT OUT_3B_A;
	OUT_1A_L <= OUT_2B_A;
	OUT_4B_F <= NOT(OUT_4C_A );

	SMS_DEM_3B: entity SMS_DEM
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACRESET => OUT_4B_F,	-- Pin G
		ACSET => OUT_4D_P,	-- Pin B
		DCSET => MS_COMPUTER_RESET_2,	-- Pin R
		GATEON => '1',	-- Pin P
		GATEOFF => '1',	-- Pin C
		OUTOFF => OUT_3B_A,
		DCRESET => OPEN,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_2B_A <= NOT OUT_3B_Q;
	OUT_1B_E <= OUT_2B_A;
	OUT_5C_G <= NOT(MY_START_MEM_CLOCK_M OR MY_READ_CALL_M );
	OUT_4C_A <= NOT OUT_5C_G;
	OUT_3C_A <= NOT OUT_4C_A;
	OUT_2C_D <= NOT OUT_4C_A;
	OUT_1C_Q <= OUT_2B_A;

	InvShiftRegister_5D: entity InvShiftRegister
	    generic map( DELAY => 425, CLOCKPERIOD => 10)
	    port map (
		FPGA_CLK => FPGA_CLK,
		FIFO_IN => OUT_3C_A,	-- Pin L
		FIFO_OUT => OUT_5D_A );

	OUT_4D_P <= NOT OUT_5D_A;
	OUT_3D_A <= OUT_4E_D;
	OUT_1D_A <= OUT_2B_A;
	OUT_4E_D <= NOT OUT_5F_A;
	OUT_3E_E <= OUT_4E_D;

	SMS_DEM_5F: entity SMS_DEM
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACRESET => OUT_4D_P,	-- Pin G
		ACSET => OUT_1I_P,	-- Pin B
		DCSET => MS_COMPUTER_RESET_2,	-- Pin R
		GATEON => '1',	-- Pin P
		GATEOFF => '1',	-- Pin C
		DCRFORCE => OUT_5G_G,	-- Pin 7
		OUTOFF => OUT_5F_A,
		DCRESET => OPEN,
		GROUND => OPEN,
		DCSFORCE => OPEN );

	OUT_3F_D <= NOT OUT_5F_Q;

	InvShiftRegister_2F: entity InvShiftRegister
	    generic map( DELAY => 280, CLOCKPERIOD => 10)
	    port map (
		FPGA_CLK => FPGA_CLK,
		FIFO_IN => OUT_3F_D,	-- Pin L
		FIFO_OUT => OUT_2F_A );

	OUT_1F_A <= NOT OUT_2F_A;
	OUT_5G_G <= NOT(MY_MEM_AR_TTHP4B );
	OUT_3G_L <= OUT_4H_P;
	OUT_4H_P <= NOT OUT_5I_A;
	OUT_3H_Q <= OUT_4H_P;

	SMS_DEM_5I: entity SMS_DEM
	    port map (
		FPGA_CLK => FPGA_CLK,
		ACRESET => OUT_1F_A,	-- Pin G
		ACSET => OUT_1I_P,	-- Pin B
		DCSET => MS_COMPUTER_RESET_2,	-- Pin R
		GATEON => '1',	-- Pin P
		GATEOFF => '1',	-- Pin C
		OUTOFF => OUT_5I_A,
		DCRESET => OPEN,
		GROUND => OPEN,
		DCSFORCE => OPEN,
		DCRFORCE => OPEN );

	OUT_3I_D <= NOT OUT_5I_Q;

	InvShiftRegister_2I: entity InvShiftRegister
	    generic map( DELAY => 1100, CLOCKPERIOD => 10)
	    port map (
		FPGA_CLK => FPGA_CLK,
		FIFO_IN => OUT_3I_D,	-- Pin L
		FIFO_OUT => OUT_2I_A );

	OUT_1I_P <= NOT OUT_2I_A;

	MY_B_DATA_REG_RESET <= OUT_2A_A;
	PY_B_DATA_REG_RESET_1 <= OUT_1A_L;
	PY_B_DATA_REG_RESET_2 <= OUT_1B_E;
	PY_START_READ <= OUT_2C_D;
	PY_B_DATA_REG_RESET_3 <= OUT_1C_Q;
	MY_Y_RD_1 <= OUT_3D_A;
	PY_B_DATA_REG_RESET_4 <= OUT_1D_A;
	MY_Y_RD_2 <= OUT_3E_E;
	MY_X_RD_1 <= OUT_3G_L;
	MY_X_RD_CND_CLK <= OUT_4H_P;
	MY_X_RD_2 <= OUT_3H_Q;


end;
