-- Test BenchVHDL for IBM SMS ALD group MemoryLoadRegenControls
-- Title: MemoryLoadRegenControls
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 7/9/2020 3:53:09 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity MemoryLoadRegenControls_tb is
end MemoryLoadRegenControls_tb;

architecture behavioral of MemoryLoadRegenControls_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component MemoryLoadRegenControls
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_A_CYCLE: in STD_LOGIC;
		PS_A_OR_B_CYCLE: in STD_LOGIC;
		PS_B_CYCLE_1: in STD_LOGIC;
		PS_C_CYCLE: in STD_LOGIC;
		MS_STORAGE_SCAN_LOAD: in STD_LOGIC;
		MS_ALT_ROUTINE_DOT_2ND_SCAN: in STD_LOGIC;
		PS_1ST_SCAN: in STD_LOGIC;
		PS_CLEAR_OP_CODE: in STD_LOGIC;
		MS_MPLY_DOT_N_OR_1_OR_2_DOT_D: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		PS_B_CH_NOT_GROUP_MARK_WM: in STD_LOGIC;
		MS_ANY_CHECK_TEST: in STD_LOGIC;
		PS_INPUT_CYCLE: in STD_LOGIC;
		PS_I_O_END_OF_STG_STOP_CTRL: in STD_LOGIC;
		PS_WORD_MARK_OP_CODES: in STD_LOGIC;
		PS_LOAD_MEM_ON_B_CY_OP_CODES: in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE: in STD_LOGIC;
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: in STD_LOGIC;
		MS_I_CYCLE_DOT_NOT_CR_DISABLE: in STD_LOGIC;
		MS_X_CYCLE: in STD_LOGIC;
		PS_C_OR_D_CYCLE: in STD_LOGIC;
		MS_STORAGE_SCAN_RGEN: in STD_LOGIC;
		MS_1401_B_CYCLE_I_RING_OP: in STD_LOGIC;
		PS_PROCESS_ROUTINE: in STD_LOGIC;
		MS_PROCESS_ROUTINE: in STD_LOGIC;
		MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN: in STD_LOGIC;
		MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN: in STD_LOGIC;
		MS_OUTPUT_CYCLE: in STD_LOGIC;
		MS_MPLY_DOT_N_DOT_C: in STD_LOGIC;
		MS_1401_STORE_AR_DOT_C_CYCLE: in STD_LOGIC;
		MS_INTERRUPT_DOT_B_CYCLE: in STD_LOGIC;
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT: in STD_LOGIC;
		PS_REGEN_MEM_ON_B_CY_OP_CODES: in STD_LOGIC;
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: in STD_LOGIC;
		MS_B_CYCLE_DOT_NO_SCAN: in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE: in STD_LOGIC;
		MS_DISPLAY_ROUTINE: in STD_LOGIC;
		MS_ALTER_ROUTINE: in STD_LOGIC;
		MS_DIV_DOT_2_DOT_D: in STD_LOGIC;
		MS_FILE_OP_DOT_D_CYCLE: in STD_LOGIC;
		MS_MPLY_DOT_3_DOT_D: in STD_LOGIC;
		MY_LOAD_MEMORY: out STD_LOGIC;
		PS_INPUT_CYCLE_DOT_LOAD: out STD_LOGIC;
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: out STD_LOGIC;
		MY_REGEN_MEMORY: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A_CYCLE: STD_LOGIC := '0';
	signal PS_A_OR_B_CYCLE: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal PS_C_CYCLE: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_LOAD: STD_LOGIC := '1';
	signal MS_ALT_ROUTINE_DOT_2ND_SCAN: STD_LOGIC := '1';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal PS_CLEAR_OP_CODE: STD_LOGIC := '0';
	signal MS_MPLY_DOT_N_OR_1_OR_2_DOT_D: STD_LOGIC := '1';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal PS_B_CH_NOT_GROUP_MARK_WM: STD_LOGIC := '0';
	signal MS_ANY_CHECK_TEST: STD_LOGIC := '1';
	signal PS_INPUT_CYCLE: STD_LOGIC := '0';
	signal PS_I_O_END_OF_STG_STOP_CTRL: STD_LOGIC := '0';
	signal PS_WORD_MARK_OP_CODES: STD_LOGIC := '0';
	signal PS_LOAD_MEM_ON_B_CY_OP_CODES: STD_LOGIC := '0';
	signal PS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '0';
	signal PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: STD_LOGIC := '0';
	signal MS_I_CYCLE_DOT_NOT_CR_DISABLE: STD_LOGIC := '1';
	signal MS_X_CYCLE: STD_LOGIC := '1';
	signal PS_C_OR_D_CYCLE: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_RGEN: STD_LOGIC := '1';
	signal MS_1401_B_CYCLE_I_RING_OP: STD_LOGIC := '1';
	signal PS_PROCESS_ROUTINE: STD_LOGIC := '0';
	signal MS_PROCESS_ROUTINE: STD_LOGIC := '1';
	signal MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN: STD_LOGIC := '1';
	signal MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN: STD_LOGIC := '1';
	signal MS_OUTPUT_CYCLE: STD_LOGIC := '1';
	signal MS_MPLY_DOT_N_DOT_C: STD_LOGIC := '1';
	signal MS_1401_STORE_AR_DOT_C_CYCLE: STD_LOGIC := '1';
	signal MS_INTERRUPT_DOT_B_CYCLE: STD_LOGIC := '1';
	signal MS_INPUT_CYCLE_GRP_MK_WM_INSRT: STD_LOGIC := '1';
	signal PS_REGEN_MEM_ON_B_CY_OP_CODES: STD_LOGIC := '0';
	signal MS_STD_A_CYCLE_OPS_DOT_A_CYCLE: STD_LOGIC := '1';
	signal MS_B_CYCLE_DOT_NO_SCAN: STD_LOGIC := '1';
	signal MS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '1';
	signal MS_DISPLAY_ROUTINE: STD_LOGIC := '1';
	signal MS_ALTER_ROUTINE: STD_LOGIC := '1';
	signal MS_DIV_DOT_2_DOT_D: STD_LOGIC := '1';
	signal MS_FILE_OP_DOT_D_CYCLE: STD_LOGIC := '1';
	signal MS_MPLY_DOT_3_DOT_D: STD_LOGIC := '1';

	-- Outputs

	signal MY_LOAD_MEMORY: STD_LOGIC;
	signal PS_INPUT_CYCLE_DOT_LOAD: STD_LOGIC;
	signal MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT: STD_LOGIC;
	signal MY_REGEN_MEMORY: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   constant HDL_C_BIT: integer := 7;
   constant HDL_WM_BIT: integer := 6;
   constant HDL_B_BIT: integer := 5;
   constant HDL_A_BIT: integer := 4;
   constant HDL_8_BIT: integer := 3;
   constant HDL_4_BIT: integer := 2;
   constant HDL_2_BIT: integer := 1;
   constant HDL_1_BIT: integer := 0;

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;
      


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: MemoryLoadRegenControls port map(
		FPGA_CLK => FPGA_CLK,
		PS_A_CYCLE => PS_A_CYCLE,
		PS_A_OR_B_CYCLE => PS_A_OR_B_CYCLE,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		PS_C_CYCLE => PS_C_CYCLE,
		MS_STORAGE_SCAN_LOAD => MS_STORAGE_SCAN_LOAD,
		MS_ALT_ROUTINE_DOT_2ND_SCAN => MS_ALT_ROUTINE_DOT_2ND_SCAN,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PS_CLEAR_OP_CODE => PS_CLEAR_OP_CODE,
		MS_MPLY_DOT_N_OR_1_OR_2_DOT_D => MS_MPLY_DOT_N_OR_1_OR_2_DOT_D,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		PS_B_CH_NOT_GROUP_MARK_WM => PS_B_CH_NOT_GROUP_MARK_WM,
		MS_ANY_CHECK_TEST => MS_ANY_CHECK_TEST,
		PS_INPUT_CYCLE => PS_INPUT_CYCLE,
		PS_I_O_END_OF_STG_STOP_CTRL => PS_I_O_END_OF_STG_STOP_CTRL,
		PS_WORD_MARK_OP_CODES => PS_WORD_MARK_OP_CODES,
		PS_LOAD_MEM_ON_B_CY_OP_CODES => PS_LOAD_MEM_ON_B_CY_OP_CODES,
		PS_STORE_ADDR_REGS_OP_CODE => PS_STORE_ADDR_REGS_OP_CODE,
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 => PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8,
		MS_I_CYCLE_DOT_NOT_CR_DISABLE => MS_I_CYCLE_DOT_NOT_CR_DISABLE,
		MS_X_CYCLE => MS_X_CYCLE,
		PS_C_OR_D_CYCLE => PS_C_OR_D_CYCLE,
		MS_STORAGE_SCAN_RGEN => MS_STORAGE_SCAN_RGEN,
		MS_1401_B_CYCLE_I_RING_OP => MS_1401_B_CYCLE_I_RING_OP,
		PS_PROCESS_ROUTINE => PS_PROCESS_ROUTINE,
		MS_PROCESS_ROUTINE => MS_PROCESS_ROUTINE,
		MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN => MS_DISP_ROUTINE_DOT_D_CY_DOT_2ND_SCAN,
		MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN => MS_ALTR_ROUTINE_DOT_D_CY_DOT_NO_SCAN,
		MS_OUTPUT_CYCLE => MS_OUTPUT_CYCLE,
		MS_MPLY_DOT_N_DOT_C => MS_MPLY_DOT_N_DOT_C,
		MS_1401_STORE_AR_DOT_C_CYCLE => MS_1401_STORE_AR_DOT_C_CYCLE,
		MS_INTERRUPT_DOT_B_CYCLE => MS_INTERRUPT_DOT_B_CYCLE,
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT => MS_INPUT_CYCLE_GRP_MK_WM_INSRT,
		PS_REGEN_MEM_ON_B_CY_OP_CODES => PS_REGEN_MEM_ON_B_CY_OP_CODES,
		MS_STD_A_CYCLE_OPS_DOT_A_CYCLE => MS_STD_A_CYCLE_OPS_DOT_A_CYCLE,
		MS_B_CYCLE_DOT_NO_SCAN => MS_B_CYCLE_DOT_NO_SCAN,
		MS_STORAGE_SCAN_ROUTINE => MS_STORAGE_SCAN_ROUTINE,
		MS_DISPLAY_ROUTINE => MS_DISPLAY_ROUTINE,
		MS_ALTER_ROUTINE => MS_ALTER_ROUTINE,
		MS_DIV_DOT_2_DOT_D => MS_DIV_DOT_2_DOT_D,
		MS_FILE_OP_DOT_D_CYCLE => MS_FILE_OP_DOT_D_CYCLE,
		MS_MPLY_DOT_3_DOT_D => MS_MPLY_DOT_3_DOT_D,
		MY_LOAD_MEMORY => MY_LOAD_MEMORY,
		PS_INPUT_CYCLE_DOT_LOAD => PS_INPUT_CYCLE_DOT_LOAD,
		MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT => MS_C_OR_D_CYCLE_DOT_INSN_READ_OUT,
		MY_REGEN_MEMORY => MY_REGEN_MEMORY);

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

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   testName := "12.50.01.1        ";
   
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"SA");
   check1(PS_INPUT_CYCLE_DOT_LOAD,'0',testName,"SB");
   
   MS_ANY_CHECK_TEST <= '1';   
   PS_CLEAR_OP_CODE <= '1';
   PS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"1A");
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"1B");
   MS_ANY_CHECK_TEST <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"1B");
   MS_ANY_CHECK_TEST <= '1';
   PS_CLEAR_OP_CODE <= '0';
   PS_1ST_SCAN <= '0';
   PS_B_CYCLE_1 <= '0';
   
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"2A");
   MS_MPLY_DOT_N_OR_1_OR_2_DOT_D <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"2B");
   MS_MPLY_DOT_N_OR_1_OR_2_DOT_D <= '1';
   MS_ALT_ROUTINE_DOT_2ND_SCAN <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"2C");
   MS_ALT_ROUTINE_DOT_2ND_SCAN <= '1';
   
   PS_A_CYCLE <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"3A");
   PS_1401_STORE_AR_OP_CODES <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"3B");
   PS_A_CYCLE <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"3C");
   PS_1401_STORE_AR_OP_CODES <= '0';
   
   MS_STORAGE_SCAN_LOAD <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"4A");
   MS_STORAGE_SCAN_LOAD <= '1';
   
   PS_B_CH_NOT_GROUP_MARK_WM <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"5A");
   check1(PS_INPUT_CYCLE_DOT_LOAD,'0',testName,"5B");
   PS_INPUT_CYCLE <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"5C");
   check1(PS_INPUT_CYCLE_DOT_LOAD,'1',testName,"5D");
   PS_B_CH_NOT_GROUP_MARK_WM <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"5E");
   check1(PS_INPUT_CYCLE_DOT_LOAD,'0',testName,"5F");
   PS_INPUT_CYCLE <= '0';
   
   PS_INPUT_CYCLE <= '1';
   PS_I_O_END_OF_STG_STOP_CTRL <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"6A");
   check1(PS_INPUT_CYCLE_DOT_LOAD,'1',testName,"6B");
   PS_INPUT_CYCLE <= '0';   
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"6C");
   check1(PS_INPUT_CYCLE_DOT_LOAD,'0',testName,"6D");
   PS_I_O_END_OF_STG_STOP_CTRL <= '0';
   
   PS_A_OR_B_CYCLE <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"7A");
   PS_WORD_MARK_OP_CODES <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"7B");
   PS_A_OR_B_CYCLE <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"7C");
   PS_WORD_MARK_OP_CODES <= '0';
   
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"8A");
   PS_LOAD_MEM_ON_B_CY_OP_CODES <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"8B");
   PS_B_CYCLE_1 <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"8C");
   PS_LOAD_MEM_ON_B_CY_OP_CODES <= '0';
   
   PS_C_CYCLE <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"9A");
   PS_STORE_ADDR_REGS_OP_CODE <= '1';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'0',testName,"9B");
   PS_C_CYCLE <= '0';
   wait for 30 ns;
   check1(MY_LOAD_MEMORY,'1',testName,"9C");
   PS_STORE_ADDR_REGS_OP_CODE <= '0';

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

END;
