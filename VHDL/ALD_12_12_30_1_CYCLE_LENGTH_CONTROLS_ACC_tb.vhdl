-- Test Bench VHDL for IBM SMS ALD page 12.12.30.1
-- Title: CYCLE LENGTH CONTROLS-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/26/2020 1:32:58 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_12_30_1_CYCLE_LENGTH_CONTROLS_ACC_tb is
end ALD_12_12_30_1_CYCLE_LENGTH_CONTROLS_ACC_tb;

architecture behavioral of ALD_12_12_30_1_CYCLE_LENGTH_CONTROLS_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_12_12_30_1_CYCLE_LENGTH_CONTROLS_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_COMPARE_OP_CODE:	 in STD_LOGIC;
		MS_STOP_AT_F_TLU:	 in STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN:	 in STD_LOGIC;
		PS_1401_STORE_A_AR_OP_CODE:	 in STD_LOGIC;
		PS_D_CYCLE:	 in STD_LOGIC;
		MS_MPLY_OP_CODE:	 in STD_LOGIC;
		MS_FILE_OP:	 in STD_LOGIC;
		PS_STOP_AT_F_STAR_ARITH:	 in STD_LOGIC;
		PS_STOP_AT_F_ON_B_CY_OP_CODES:	 in STD_LOGIC;
		PS_B_CYCLE_1:	 in STD_LOGIC;
		PS_C_CYCLE_1:	 in STD_LOGIC;
		MS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		MS_1401_COND_TEST_DOT_I9:	 in STD_LOGIC;
		PS_STOP_AT_F_JRJ:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		MS_STORAGE_SCAN_LOAD:	 in STD_LOGIC;
		MS_1401_MODE_DOT_I_RING_5_OR_10_DOT_I_CY:	 in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE:	 in STD_LOGIC;
		PS_STOP_AT_F_ON_B_CY_OPS:	 in STD_LOGIC;
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT:	 in STD_LOGIC;
		MV_STORAGE_SCAN_REGEN_MODE:	 in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		MS_MPLY_DOT_3_DOT_D:	 in STD_LOGIC;
		MS_WORD_MARK_OP_DOT_A_CYCLE:	 in STD_LOGIC;
		MS_WORD_MARK_OP_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_STOP_AT_F:	 out STD_LOGIC;
		MS_STOP_AT_F_DOT_B_CYCLE:	 out STD_LOGIC;
		MS_STORAGE_SCAN_RGEN:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_COMPARE_OP_CODE: STD_LOGIC := '0';
	signal MS_STOP_AT_F_TLU: STD_LOGIC := '1';
	signal MS_B_CYCLE_DOT_NO_SCAN: STD_LOGIC := '1';
	signal PS_1401_STORE_A_AR_OP_CODE: STD_LOGIC := '0';
	signal PS_D_CYCLE: STD_LOGIC := '0';
	signal MS_MPLY_OP_CODE: STD_LOGIC := '1';
	signal MS_FILE_OP: STD_LOGIC := '1';
	signal PS_STOP_AT_F_STAR_ARITH: STD_LOGIC := '0';
	signal PS_STOP_AT_F_ON_B_CY_OP_CODES: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal PS_C_CYCLE_1: STD_LOGIC := '0';
	signal MS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '1';
	signal MS_1401_COND_TEST_DOT_I9: STD_LOGIC := '1';
	signal PS_STOP_AT_F_JRJ: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_LOAD: STD_LOGIC := '1';
	signal MS_1401_MODE_DOT_I_RING_5_OR_10_DOT_I_CY: STD_LOGIC := '1';
	signal MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: STD_LOGIC := '1';
	signal PS_STOP_AT_F_ON_B_CY_OPS: STD_LOGIC := '0';
	signal MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: STD_LOGIC := '1';
	signal MV_STORAGE_SCAN_REGEN_MODE: STD_LOGIC := '1';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal PS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '0';
	signal MS_MPLY_DOT_3_DOT_D: STD_LOGIC := '1';
	signal MS_WORD_MARK_OP_DOT_A_CYCLE: STD_LOGIC := '1';
	signal MS_WORD_MARK_OP_DOT_B_CYCLE: STD_LOGIC := '1';

	-- Outputs

	signal PS_STOP_AT_F: STD_LOGIC;
	signal MS_STOP_AT_F_DOT_B_CYCLE: STD_LOGIC;
	signal MS_STORAGE_SCAN_RGEN: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_12_12_30_1_CYCLE_LENGTH_CONTROLS_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_COMPARE_OP_CODE => PS_COMPARE_OP_CODE,
		MS_STOP_AT_F_TLU => MS_STOP_AT_F_TLU,
		MS_B_CYCLE_DOT_NO_SCAN => MS_B_CYCLE_DOT_NO_SCAN,
		PS_1401_STORE_A_AR_OP_CODE => PS_1401_STORE_A_AR_OP_CODE,
		PS_D_CYCLE => PS_D_CYCLE,
		MS_MPLY_OP_CODE => MS_MPLY_OP_CODE,
		MS_FILE_OP => MS_FILE_OP,
		PS_STOP_AT_F_STAR_ARITH => PS_STOP_AT_F_STAR_ARITH,
		PS_STOP_AT_F_ON_B_CY_OP_CODES => PS_STOP_AT_F_ON_B_CY_OP_CODES,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		PS_C_CYCLE_1 => PS_C_CYCLE_1,
		MS_STORE_ADDR_REGS_OP_CODE => MS_STORE_ADDR_REGS_OP_CODE,
		MS_1401_COND_TEST_DOT_I9 => MS_1401_COND_TEST_DOT_I9,
		PS_STOP_AT_F_JRJ => PS_STOP_AT_F_JRJ,
		PS_I_CYCLE => PS_I_CYCLE,
		MS_STORAGE_SCAN_LOAD => MS_STORAGE_SCAN_LOAD,
		MS_1401_MODE_DOT_I_RING_5_OR_10_DOT_I_CY => MS_1401_MODE_DOT_I_RING_5_OR_10_DOT_I_CY,
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE => MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
		PS_STOP_AT_F_ON_B_CY_OPS => PS_STOP_AT_F_ON_B_CY_OPS,
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT => MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT,
		MV_STORAGE_SCAN_REGEN_MODE => MV_STORAGE_SCAN_REGEN_MODE,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		PS_STORAGE_SCAN_ROUTINE => PS_STORAGE_SCAN_ROUTINE,
		MS_MPLY_DOT_3_DOT_D => MS_MPLY_DOT_3_DOT_D,
		MS_WORD_MARK_OP_DOT_A_CYCLE => MS_WORD_MARK_OP_DOT_A_CYCLE,
		MS_WORD_MARK_OP_DOT_B_CYCLE => MS_WORD_MARK_OP_DOT_B_CYCLE,
		PS_STOP_AT_F => PS_STOP_AT_F,
		MS_STOP_AT_F_DOT_B_CYCLE => MS_STOP_AT_F_DOT_B_CYCLE,
		MS_STORAGE_SCAN_RGEN => MS_STORAGE_SCAN_RGEN);

-- START USER TEST BENCH PROCESS

-- The user test bench code MUST be placed between the
-- line that starts with the first line of text that
-- begins with "-- START USERS TEST BENCH PROCESS" 
-- and ends with "-- END"
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

-- 
-- TestBenchFPGAClock.vhdl
--
-- Process to simulate the FPGA clock for a VHDL test bench
--

fpga_clk_process: process

   constant clk_period : time := 10 ns;

   begin
      fpga_clk <= '0';
      wait for clk_period / 2;
      fpga_clk <= '1';
      wait for clk_period / 2;
   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process
   begin

   -- Your test bench code

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

end;
