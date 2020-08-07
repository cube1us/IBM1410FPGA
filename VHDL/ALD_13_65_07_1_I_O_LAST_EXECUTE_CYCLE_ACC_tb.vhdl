-- Test Bench VHDL for IBM SMS ALD page 13.65.07.1
-- Title: I-O LAST EXECUTE CYCLE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/7/2020 2:20:07 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_65_07_1_I_O_LAST_EXECUTE_CYCLE_ACC_tb is
end ALD_13_65_07_1_I_O_LAST_EXECUTE_CYCLE_ACC_tb;

architecture behavioral of ALD_13_65_07_1_I_O_LAST_EXECUTE_CYCLE_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_65_07_1_I_O_LAST_EXECUTE_CYCLE_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		PS_2_CHAR_ONLY_OP_CODES:	 in STD_LOGIC;
		PS_COML_AT_OR_ASTERISK:	 in STD_LOGIC;
		PS_E_CH_ANY_STATUS_ON:	 in STD_LOGIC;
		PS_I_O_PERCENT_LATCH:	 in STD_LOGIC;
		MS_FILE_OP_STAR_1405:	 in STD_LOGIC;
		PS_F_CH_ANY_STATUS_ON:	 in STD_LOGIC;
		PS_LAST_INSN_RO_CYCLE:	 in STD_LOGIC;
		MS_FILE_OP_DOT_D_CY_DOT_EXTENSION:	 in STD_LOGIC;
		MS_PROGRAM_RESET_2:	 in STD_LOGIC;
		PS_E_CH_STATUS_SAMPLE_B:	 in STD_LOGIC;
		MS_1401_CARD_OR_PRINT_OP_CODE:	 in STD_LOGIC;
		PS_E_CH_UNOVLP_IN_PROCESS:	 in STD_LOGIC;
		PS_I_O_LOZENGE_LATCH:	 in STD_LOGIC;
		PS_BLOCK_IO_LAST_EXECUTE:	 in STD_LOGIC;
		PS_F_CH_STATUS_SAMPLE_B:	 in STD_LOGIC;
		PS_F_CH_UNOVLP_IN_PROCESS:	 in STD_LOGIC;
		PS_1401_I_O_END:	 in STD_LOGIC;
		MS_1401_BRANCH_LATCH:	 in STD_LOGIC;
		MS_LOGIC_GATE_B_1:	 in STD_LOGIC;
		PS_LAST_EXECUTE_CYCLE_STAR_I_O:	 out STD_LOGIC;
		PS_I_O_LAST_EX_CYCLE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal PS_2_CHAR_ONLY_OP_CODES: STD_LOGIC := '0';
	signal PS_COML_AT_OR_ASTERISK: STD_LOGIC := '0';
	signal PS_E_CH_ANY_STATUS_ON: STD_LOGIC := '0';
	signal PS_I_O_PERCENT_LATCH: STD_LOGIC := '0';
	signal MS_FILE_OP_STAR_1405: STD_LOGIC := '1';
	signal PS_F_CH_ANY_STATUS_ON: STD_LOGIC := '0';
	signal PS_LAST_INSN_RO_CYCLE: STD_LOGIC := '0';
	signal MS_FILE_OP_DOT_D_CY_DOT_EXTENSION: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_2: STD_LOGIC := '1';
	signal PS_E_CH_STATUS_SAMPLE_B: STD_LOGIC := '0';
	signal MS_1401_CARD_OR_PRINT_OP_CODE: STD_LOGIC := '1';
	signal PS_E_CH_UNOVLP_IN_PROCESS: STD_LOGIC := '0';
	signal PS_I_O_LOZENGE_LATCH: STD_LOGIC := '0';
	signal PS_BLOCK_IO_LAST_EXECUTE: STD_LOGIC := '0';
	signal PS_F_CH_STATUS_SAMPLE_B: STD_LOGIC := '0';
	signal PS_F_CH_UNOVLP_IN_PROCESS: STD_LOGIC := '0';
	signal PS_1401_I_O_END: STD_LOGIC := '0';
	signal MS_1401_BRANCH_LATCH: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_B_1: STD_LOGIC := '1';

	-- Outputs

	signal PS_LAST_EXECUTE_CYCLE_STAR_I_O: STD_LOGIC;
	signal PS_I_O_LAST_EX_CYCLE: STD_LOGIC;

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

	UUT: ALD_13_65_07_1_I_O_LAST_EXECUTE_CYCLE_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_1401_MODE => MS_1401_MODE,
		PS_2_CHAR_ONLY_OP_CODES => PS_2_CHAR_ONLY_OP_CODES,
		PS_COML_AT_OR_ASTERISK => PS_COML_AT_OR_ASTERISK,
		PS_E_CH_ANY_STATUS_ON => PS_E_CH_ANY_STATUS_ON,
		PS_I_O_PERCENT_LATCH => PS_I_O_PERCENT_LATCH,
		MS_FILE_OP_STAR_1405 => MS_FILE_OP_STAR_1405,
		PS_F_CH_ANY_STATUS_ON => PS_F_CH_ANY_STATUS_ON,
		PS_LAST_INSN_RO_CYCLE => PS_LAST_INSN_RO_CYCLE,
		MS_FILE_OP_DOT_D_CY_DOT_EXTENSION => MS_FILE_OP_DOT_D_CY_DOT_EXTENSION,
		MS_PROGRAM_RESET_2 => MS_PROGRAM_RESET_2,
		PS_E_CH_STATUS_SAMPLE_B => PS_E_CH_STATUS_SAMPLE_B,
		MS_1401_CARD_OR_PRINT_OP_CODE => MS_1401_CARD_OR_PRINT_OP_CODE,
		PS_E_CH_UNOVLP_IN_PROCESS => PS_E_CH_UNOVLP_IN_PROCESS,
		PS_I_O_LOZENGE_LATCH => PS_I_O_LOZENGE_LATCH,
		PS_BLOCK_IO_LAST_EXECUTE => PS_BLOCK_IO_LAST_EXECUTE,
		PS_F_CH_STATUS_SAMPLE_B => PS_F_CH_STATUS_SAMPLE_B,
		PS_F_CH_UNOVLP_IN_PROCESS => PS_F_CH_UNOVLP_IN_PROCESS,
		PS_1401_I_O_END => PS_1401_I_O_END,
		MS_1401_BRANCH_LATCH => MS_1401_BRANCH_LATCH,
		MS_LOGIC_GATE_B_1 => MS_LOGIC_GATE_B_1,
		PS_LAST_EXECUTE_CYCLE_STAR_I_O => PS_LAST_EXECUTE_CYCLE_STAR_I_O,
		PS_I_O_LAST_EX_CYCLE => PS_I_O_LAST_EX_CYCLE);

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
   
   testName := "13.65.07.1        ";
   
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"1A");
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"1B");
   
   MS_1401_MODE <= '0';
   PS_2_CHAR_ONLY_OP_CODES <= '1';
   PS_LAST_INSN_RO_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"1C");
   MS_1401_MODE <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"1D");
   PS_2_CHAR_ONLY_OP_CODES <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"1E");
   PS_2_CHAR_ONLY_OP_CODES <= '1';
   wait for 30 ns;
   PS_LAST_INSN_RO_CYCLE <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"1F");
   wait for 30 ns;
   PS_LAST_INSN_RO_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"1G");
   PS_2_CHAR_ONLY_OP_CODES <= '0';
   PS_LAST_INSN_RO_CYCLE <= '0';
   wait for 30 ns;
   
   PS_F_CH_ANY_STATUS_ON <= '1';
   PS_I_O_LOZENGE_LATCH <= '1';
   MS_FILE_OP_STAR_1405 <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"2A");
   MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"2B");
   MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '1';
   MS_FILE_OP_STAR_1405 <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"2D");
   PS_LAST_INSN_RO_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"2E");
   MS_FILE_OP_STAR_1405 <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"2F");
   MS_FILE_OP_STAR_1405 <= '1';
   wait for 30 ns;
   PS_F_CH_ANY_STATUS_ON <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"2G");
   PS_F_CH_ANY_STATUS_ON <= '1';
   wait for 30 ns;
   PS_I_O_LOZENGE_LATCH <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"2H");
   PS_I_O_LOZENGE_LATCH <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"2I");
   PS_F_CH_ANY_STATUS_ON <= '0';
   PS_I_O_LOZENGE_LATCH <= '0';
   
   -- At this point, NOT 1405 File Op AND Last Insn RO Cycle both on
   
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"3A");
   PS_COML_AT_OR_ASTERISK <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"3B");
   PS_LAST_INSN_RO_CYCLE <= '0';   
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"3C");
   MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"3D");
   MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '1';
   PS_COML_AT_OR_ASTERISK <= '0';
   wait for 30 ns;
   
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"4A");
   PS_I_O_PERCENT_LATCH <= '1';
   PS_E_CH_ANY_STATUS_ON <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"4B");
   MS_FILE_OP_STAR_1405 <= '1';
   PS_LAST_INSN_RO_CYCLE <= '1';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"4C");
   PS_I_O_PERCENT_LATCH <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"4D");
   PS_I_O_PERCENT_LATCH <= '1';
   PS_E_CH_ANY_STATUS_ON <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"4E");
   PS_E_CH_ANY_STATUS_ON <= '1';
   wait for 30 ns;
   PS_LAST_INSN_RO_CYCLE <= '0';
   wait for 30 ns;   
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"4F");
   MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"4G");
   MS_FILE_OP_DOT_D_CY_DOT_EXTENSION <= '1';
   PS_I_O_PERCENT_LATCH <= '0';
   PS_E_CH_ANY_STATUS_ON <= '0';
   
   wait for 30 ns;   
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"5A");
   MS_PROGRAM_RESET_2 <= '0';
   wait for 30 ns;
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"5B");
   MS_PROGRAM_RESET_2 <= '1';
      
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"6A");
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   MS_1401_CARD_OR_PRINT_OP_CODE <= '1';
   PS_E_CH_UNOVLP_IN_PROCESS <= '1';
   PS_BLOCK_IO_LAST_EXECUTE <= '1'; -- Keps from setting
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"6B");
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   PS_BLOCK_IO_LAST_EXECUTE <= '0';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"6C");
   PS_E_CH_STATUS_SAMPLE_B <= '1';
   MS_1401_CARD_OR_PRINT_OP_CODE <= '0';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"6D");
   MS_1401_CARD_OR_PRINT_OP_CODE <= '1';
   PS_E_CH_UNOVLP_IN_PROCESS <= '0';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"6E");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"6F");
   PS_E_CH_UNOVLP_IN_PROCESS <= '1';
   wait for 30 ns; -- Latch sets
   PS_E_CH_STATUS_SAMPLE_B <= '0';
   MS_1401_CARD_OR_PRINT_OP_CODE <= '1';
   PS_E_CH_UNOVLP_IN_PROCESS <= '0';
   PS_BLOCK_IO_LAST_EXECUTE <= '1';
   wait for 30 ns; -- Latch stays set
   check1(PS_I_O_LAST_EX_CYCLE,'1',testName,"6G");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"6H");
   -- Reset
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"6I");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"6J");
   
   PS_F_CH_STATUS_SAMPLE_B <= '1';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"7A");
   PS_F_CH_UNOVLP_IN_PROCESS <= '1';
   wait for 30 ns; -- Sets latch
   PS_F_CH_STATUS_SAMPLE_B <= '0';
   PS_F_CH_UNOVLP_IN_PROCESS <= '0';
   wait for 30 ns; -- Latchs stays set
   check1(PS_I_O_LAST_EX_CYCLE,'1',testName,"7B");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"7C");
   -- Reset
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"7D");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"7E");

   PS_1401_I_O_END <= '1';
   MS_1401_BRANCH_LATCH <= '0';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"8A");
   MS_1401_BRANCH_LATCH <= '1';
   wait for 30 ns; -- Sets latch
   MS_1401_BRANCH_LATCH <= '0';
   PS_1401_I_O_END <= '1';
   wait for 30 ns; -- Latchs stays set
   check1(PS_I_O_LAST_EX_CYCLE,'1',testName,"8B");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'1',testName,"8C");
   -- Reset
   MS_LOGIC_GATE_B_1 <= '0';
   wait for 30 ns;
   MS_LOGIC_GATE_B_1 <= '1';
   wait for 30 ns;
   check1(PS_I_O_LAST_EX_CYCLE,'0',testName,"8D");
   check1(PS_LAST_EXECUTE_CYCLE_STAR_I_O,'0',testName,"8E");
   
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
   

end;
