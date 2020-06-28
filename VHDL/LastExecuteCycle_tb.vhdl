-- Test BenchVHDL for IBM SMS ALD group LastExecuteCycle
-- Title: LastExecuteCycle
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 6/28/2020 12:53:52 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity LastExecuteCycle_tb is
end LastExecuteCycle_tb;

architecture behavioral of LastExecuteCycle_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component LastExecuteCycle
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_A_CH_RECORD_MARK: in STD_LOGIC;
		PS_A_CH_GROUP_MARK_DOT_WM: in STD_LOGIC;
		MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD: in STD_LOGIC;
		PS_B_CH_WM_BIT_2: in STD_LOGIC;
		PS_B_CYCLE_1: in STD_LOGIC;
		MS_SET_DOLLAR_SIGN_STAR_EDIT: in STD_LOGIC;
		PS_DATA_MOVE_OP_CODE: in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_I_O: in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_ARITH: in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_TLU: in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_BR_CND: in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_EDIT: in STD_LOGIC;
		PS_WORD_MARK_OP_CODES: in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE: in STD_LOGIC;
		PS_A_RING_6_TIME: in STD_LOGIC;
		PS_1ST_SCAN: in STD_LOGIC;
		PS_A_RING_4_TIME: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		PS_A_CH_NOT_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_B_CH_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_NOT_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_OP_MOD_REG_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_A_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_LAST_EXECUTE_CYCLE: out STD_LOGIC;
		MS_WORD_MARK_OP_DOT_B_CYCLE: out STD_LOGIC;
		MS_DATA_MOVE_LAST_EX_CYCLE: out STD_LOGIC;
		MS_LAST_EXECUTE_CYCLE: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A_CH_RECORD_MARK: STD_LOGIC := '0';
	signal PS_A_CH_GROUP_MARK_DOT_WM: STD_LOGIC := '0';
	signal MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD: STD_LOGIC := '1';
	signal PS_B_CH_WM_BIT_2: STD_LOGIC := '0';
	signal PS_B_CYCLE_1: STD_LOGIC := '0';
	signal MS_SET_DOLLAR_SIGN_STAR_EDIT: STD_LOGIC := '1';
	signal PS_DATA_MOVE_OP_CODE: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE_STAR_I_O: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE_STAR_ARITH: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE_STAR_TLU: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE_STAR_BR_CND: STD_LOGIC := '0';
	signal PS_LAST_EXECUTE_CYCLE_STAR_EDIT: STD_LOGIC := '0';
	signal PS_WORD_MARK_OP_CODES: STD_LOGIC := '0';
	signal PS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '0';
	signal PS_A_RING_6_TIME: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal PS_A_RING_4_TIME: STD_LOGIC := '0';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal PS_A_CH_NOT_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";
	signal PS_B_CH_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_OP_MOD_REG_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_OP_MOD_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_A_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";

	-- Outputs

	signal PS_LAST_EXECUTE_CYCLE: STD_LOGIC;
	signal MS_WORD_MARK_OP_DOT_B_CYCLE: STD_LOGIC;
	signal MS_DATA_MOVE_LAST_EX_CYCLE: STD_LOGIC;
	signal MS_LAST_EXECUTE_CYCLE: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with the line containing -- END (and the rest of the line) below.
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;

   constant HDL_C_BIT: integer := 7;
   constant HDL_WM_BIT: integer := 6;
   constant HDL_B_BIT: integer := 5;
   constant HDL_A_BIT: integer := 4;
   constant HDL_8_BIT: integer := 3;
   constant HDL_4_BIT: integer := 2;
   constant HDL_2_BIT: integer := 1;
   constant HDL_1_BIT: integer := 0;
     
   -- Your test bench declarations go here
   
-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: LastExecuteCycle port map(
		FPGA_CLK => FPGA_CLK,
		PS_A_CH_RECORD_MARK => PS_A_CH_RECORD_MARK,
		PS_A_CH_GROUP_MARK_DOT_WM => PS_A_CH_GROUP_MARK_DOT_WM,
		MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD => MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD,
		PS_B_CH_WM_BIT_2 => PS_B_CH_WM_BIT_2,
		PS_B_CYCLE_1 => PS_B_CYCLE_1,
		MS_SET_DOLLAR_SIGN_STAR_EDIT => MS_SET_DOLLAR_SIGN_STAR_EDIT,
		PS_DATA_MOVE_OP_CODE => PS_DATA_MOVE_OP_CODE,
		PS_LAST_EXECUTE_CYCLE_STAR_I_O => PS_LAST_EXECUTE_CYCLE_STAR_I_O,
		PS_LAST_EXECUTE_CYCLE_STAR_ARITH => PS_LAST_EXECUTE_CYCLE_STAR_ARITH,
		PS_LAST_EXECUTE_CYCLE_STAR_TLU => PS_LAST_EXECUTE_CYCLE_STAR_TLU,
		PS_LAST_EXECUTE_CYCLE_STAR_BR_CND => PS_LAST_EXECUTE_CYCLE_STAR_BR_CND,
		PS_LAST_EXECUTE_CYCLE_STAR_EDIT => PS_LAST_EXECUTE_CYCLE_STAR_EDIT,
		PS_WORD_MARK_OP_CODES => PS_WORD_MARK_OP_CODES,
		PS_STORE_ADDR_REGS_OP_CODE => PS_STORE_ADDR_REGS_OP_CODE,
		PS_A_RING_6_TIME => PS_A_RING_6_TIME,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PS_A_RING_4_TIME => PS_A_RING_4_TIME,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		PS_A_CH_NOT_BUS => PS_A_CH_NOT_BUS,
		PS_B_CH_NOT_BUS => PS_B_CH_NOT_BUS,
		PS_OP_MOD_REG_NOT_BUS => PS_OP_MOD_REG_NOT_BUS,
		PS_OP_MOD_REG_BUS => PS_OP_MOD_REG_BUS,
		PS_A_CH_BUS => PS_A_CH_BUS,
		PS_LAST_EXECUTE_CYCLE => PS_LAST_EXECUTE_CYCLE,
		MS_WORD_MARK_OP_DOT_B_CYCLE => MS_WORD_MARK_OP_DOT_B_CYCLE,
		MS_DATA_MOVE_LAST_EX_CYCLE => MS_DATA_MOVE_LAST_EX_CYCLE,
		MS_LAST_EXECUTE_CYCLE => MS_LAST_EXECUTE_CYCLE);

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

   testName := "12.12.50.1        ";

   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"START");
   -- Enable DATA MOVE LAST EXECUTE which is internal
   PS_DATA_MOVE_OP_CODE <= '1';
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"0");

   -- 1
   
   PS_A_CH_NOT_BUS(HDL_WM_BIT) <= '1';
   PS_B_CH_NOT_BUS(HDL_WM_BIT) <= '1';
   PS_OP_MOD_REG_NOT_BUS(HDL_A_BIT) <= '1';
   PS_OP_MOD_REG_NOT_BUS(HDL_B_BIT) <= '1';
   PS_OP_MOD_REG_BUS(HDL_8_BIT) <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"1");
   PS_A_CH_NOT_BUS(HDL_WM_BIT) <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"1A");
   PS_A_CH_NOT_BUS(HDL_WM_BIT) <= '1';
   PS_B_CH_NOT_BUS(HDL_WM_BIT) <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"1B");
   
   -- 2
   
   PS_A_CH_NOT_BUS(HDL_WM_BIT) <= '1';  -- Reset A Ch WM
   PS_B_CH_NOT_BUS(HDL_WM_BIT) <= '1';  -- Reset B Ch WM
   PS_OP_MOD_REG_NOT_BUS(HDL_A_BIT) <= '1';
   PS_OP_MOD_REG_NOT_BUS(HDL_B_BIT) <= '1';
   PS_OP_MOD_REG_BUS(HDL_8_BIT) <= '1';
   PS_OP_MOD_REG_BUS(HDL_A_BIT) <= '1';         
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"2");
   PS_A_CH_RECORD_MARK <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"2A");

   -- 3
   
   PS_A_CH_RECORD_MARK <= '0';
   PS_OP_MOD_REG_BUS(HDL_A_BIT) <= '0';         
   PS_OP_MOD_REG_BUS(HDL_B_BIT) <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"3");
   PS_A_CH_GROUP_MARK_DOT_WM <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"3A");
   
   -- 4
   
   PS_OP_MOD_REG_BUS(HDL_B_BIT) <= '0';
   PS_A_CH_GROUP_MARK_DOT_WM <= '0';
   PS_OP_MOD_REG_BUS(HDL_A_BIT) <= '1';
   PS_OP_MOD_REG_NOT_BUS(HDL_8_BIT) <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"4");
   PS_A_CH_BUS(HDL_WM_BIT) <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"4A");
   
   -- 5
   
   PS_OP_MOD_REG_BUS(HDL_A_BIT) <= '0';
   PS_A_CH_BUS(HDL_WM_BIT) <= '0';
   PS_OP_MOD_REG_NOT_BUS(HDL_8_BIT) <= '1';  -- Remains Set
   PS_OP_MOD_REG_BUS(HDL_B_BIT) <= '1';   
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"5");
   PS_B_CH_WM_BIT_2 <= '1'; -- Not currently in bus (separate output)
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5A");
   
   PS_B_CH_WM_BIT_2 <= '0';
   PS_OP_MOD_REG_NOT_BUS(HDL_8_BIT) <= '0';
   PS_OP_MOD_REG_BUS(HDL_B_BIT) <= '0';   
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"5");
   MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD <= '0';   
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5A");   
   
   testName := "12.12.51.1        ";
   
   -- First AND tested by 12.12.50.1 
   
   -- 2
   
   PS_DATA_MOVE_OP_CODE <= '0';
   PS_B_CYCLE_1 <= '0';
   MS_NOT_B_DOT_NOT_A_DOT_NOT_8_OP_MOD <= '1';   
   PS_B_CYCLE_1 <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"2");
   PS_WORD_MARK_OP_CODES <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"2A");

   -- 3

   PS_B_CYCLE_1 <= '0';
   PS_WORD_MARK_OP_CODES <= '0';
   PS_STORE_ADDR_REGS_OP_CODE <= '1';
   PS_A_RING_6_TIME <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"3");
   PS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"3A");
   
   -- 4
   
   PS_STORE_ADDR_REGS_OP_CODE <= '0';
   PS_A_RING_6_TIME <= '0';
   PS_1ST_SCAN <= '1';      -- Remains set
   PS_A_RING_4_TIME <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"4");
   PS_1401_STORE_AR_OP_CODES <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"4A");
   
   -- Finish up (external signals)
   
   PS_1ST_SCAN <= '0';
   PS_A_RING_4_TIME <= '0';
   PS_1401_STORE_AR_OP_CODES <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"5");
   
   PS_LAST_EXECUTE_CYCLE_STAR_I_O <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5A");
   PS_LAST_EXECUTE_CYCLE_STAR_I_O <= '0';

   PS_LAST_EXECUTE_CYCLE_STAR_EDIT <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5B");
   PS_LAST_EXECUTE_CYCLE_STAR_EDIT <= '0';
   
   PS_LAST_EXECUTE_CYCLE_STAR_BR_CND <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5C");
   PS_LAST_EXECUTE_CYCLE_STAR_BR_CND <= '0';
   
   PS_LAST_EXECUTE_CYCLE_STAR_ARITH <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5D");
   PS_LAST_EXECUTE_CYCLE_STAR_ARITH <= '0';
   
   PS_LAST_EXECUTE_CYCLE_STAR_TLU <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'1',testName,"5E");
   PS_LAST_EXECUTE_CYCLE_STAR_TLU <= '0';
   
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE,'0',testName,"5F");
   

   
   
   -- Your test bench code

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
