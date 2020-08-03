-- Test Bench VHDL for IBM SMS ALD page 15.41.10.1
-- Title: E CH FULL CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/2/2020 4:43:37 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC_tb is
end ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC_tb;

architecture behavioral of ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_SET_E1_REG:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		MS_E_CH_RESET:	 in STD_LOGIC;
		MS_E1_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_SET_E2_REG:	 in STD_LOGIC;
		PS_E2_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_E2_FULL_LATCH_STAR_SIF:	 in STD_LOGIC;
		MS_RESET_E2_FULL_LATCH:	 in STD_LOGIC;
		PS_E1_REG_FULL:	 out STD_LOGIC;
		MS_E1_REG_FULL:	 out STD_LOGIC;
		PS_E2_REG_FULL:	 out STD_LOGIC;
		MS_E2_REG_FULL:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_SET_E1_REG: STD_LOGIC := '1';
	signal PS_E_CH_INPUT_MODE: STD_LOGIC := '0';
	signal MS_E_CH_RESET: STD_LOGIC := '1';
	signal MS_E1_REG_WORD_SEPARATOR: STD_LOGIC := '1';
	signal PS_SET_E2_REG: STD_LOGIC := '0';
	signal PS_E2_REG_WORD_SEPARATOR: STD_LOGIC := '0';
	signal PS_E_CH_OUTPUT_MODE: STD_LOGIC := '0';
	signal PS_E2_FULL_LATCH_STAR_SIF: STD_LOGIC := '0';
	signal MS_RESET_E2_FULL_LATCH: STD_LOGIC := '1';

	-- Outputs

	signal PS_E1_REG_FULL: STD_LOGIC;
	signal MS_E1_REG_FULL: STD_LOGIC;
	signal PS_E2_REG_FULL: STD_LOGIC;
	signal MS_E2_REG_FULL: STD_LOGIC;

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

	UUT: ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_SET_E1_REG => MS_SET_E1_REG,
		PS_E_CH_INPUT_MODE => PS_E_CH_INPUT_MODE,
		MS_E_CH_RESET => MS_E_CH_RESET,
		MS_E1_REG_WORD_SEPARATOR => MS_E1_REG_WORD_SEPARATOR,
		PS_SET_E2_REG => PS_SET_E2_REG,
		PS_E2_REG_WORD_SEPARATOR => PS_E2_REG_WORD_SEPARATOR,
		PS_E_CH_OUTPUT_MODE => PS_E_CH_OUTPUT_MODE,
		PS_E2_FULL_LATCH_STAR_SIF => PS_E2_FULL_LATCH_STAR_SIF,
		MS_RESET_E2_FULL_LATCH => MS_RESET_E2_FULL_LATCH,
		PS_E1_REG_FULL => PS_E1_REG_FULL,
		MS_E1_REG_FULL => MS_E1_REG_FULL,
		PS_E2_REG_FULL => PS_E2_REG_FULL,
		MS_E2_REG_FULL => MS_E2_REG_FULL);

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
   
   testName := "15.41.10.1        ";
   
   MS_E_CH_RESET <= '0';
   wait for 30 ns;
   MS_E_CH_RESET <= '1';
   wait for 30 ns;
   
   check1(PS_E1_REG_FULL,'0',testName,"1A");
   check1(MS_E1_REG_FULL,'1',testName,"1B");
   check1(PS_E2_REG_FULL,'0',testName,"1C");
   check1(MS_E2_REG_FULL,'1',testName,"1D");
   
   -- Set E1 Reg Full
   
   MS_SET_E1_REG <= '0';
   wait for 30 ns;
   MS_SET_E1_REG <= '1';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'1',testName,"1E");
   check1(MS_E1_REG_FULL,'0',testName,"1F");
   check1(PS_E2_REG_FULL,'0',testName,"1G");
   check1(MS_E2_REG_FULL,'1',testName,"1H");
   
   -- Reset E1 Reg Full if Set E2 Reg AND NOT E1 W/S (this also sets E2 Full)
   
   MS_E1_REG_WORD_SEPARATOR <= '1';  -- is already 1
   PS_SET_E2_REG <= '1';
   wait for 30 ns;
   PS_SET_E2_REG <= '0';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'0',testName,"1I");
   check1(MS_E1_REG_FULL,'1',testName,"1J");
   check1(PS_E2_REG_FULL,'1',testName,"1K");
   check1(MS_E2_REG_FULL,'0',testName,"1L");
   
   -- Then Reset E2 Reg Full
   
   MS_RESET_E2_FULL_LATCH <= '0';
   wait for 30 ns;
   MS_RESET_E2_FULL_LATCH <= '1';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'0',testName,"1M");
   check1(MS_E1_REG_FULL,'1',testName,"1N");
   check1(PS_E2_REG_FULL,'0',testName,"1O");
   check1(MS_E2_REG_FULL,'1',testName,"1P");
   
   -- Set E1 Reg Full again 
   
   MS_SET_E1_REG <= '0';
   wait for 30 ns;
   MS_SET_E1_REG <= '1';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'1',testName,"2A");
   check1(MS_E1_REG_FULL,'0',testName,"2B");
   check1(PS_E2_REG_FULL,'0',testName,"2C");
   check1(MS_E2_REG_FULL,'1',testName,"2D");
   
   -- Reset E1 Reg Full if Set E2 Reg Full AND E2 W/S (also sets E2 Reg Full again)
   
   MS_E1_REG_WORD_SEPARATOR <= '0';  -- Set to not repeat test 1
   
   PS_SET_E2_REG <= '1';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'1',testName,"2E");
   check1(MS_E1_REG_FULL,'0',testName,"2F");
   check1(PS_E2_REG_FULL,'0',testName,"2G");
   check1(MS_E2_REG_FULL,'1',testName,"2H");
   PS_E2_REG_WORD_SEPARATOR <= '1';
   wait for 30 ns; -- Latch should be reset
   PS_E2_REG_WORD_SEPARATOR <= '0';
   PS_SET_E2_REG <= '0'; -- Latch should still be reset
   
   check1(PS_E1_REG_FULL,'0',testName,"2E");
   check1(MS_E1_REG_FULL,'1',testName,"2F");
   check1(PS_E2_REG_FULL,'1',testName,"2G");
   check1(MS_E2_REG_FULL,'0',testName,"2H");

-- Then Reset E2 Reg Full
   
   MS_RESET_E2_FULL_LATCH <= '0';
   wait for 30 ns;
   MS_RESET_E2_FULL_LATCH <= '1';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'0',testName,"2I");
   check1(MS_E1_REG_FULL,'1',testName,"2J");
   check1(PS_E2_REG_FULL,'0',testName,"2K");
   check1(MS_E2_REG_FULL,'1',testName,"2L");

   -- Set E1 Reg Full again 
   
   MS_SET_E1_REG <= '0';
   wait for 30 ns;
   MS_SET_E1_REG <= '1';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'1',testName,"3A");
   check1(MS_E1_REG_FULL,'0',testName,"3B");
   check1(PS_E2_REG_FULL,'0',testName,"3C");
   check1(MS_E2_REG_FULL,'1',testName,"3D");

   -- Reset E1 Reg Full via E CH INPUT MODE and SET E2 REG
   -- This should NOT set E2

   MS_E1_REG_WORD_SEPARATOR <= '0';  -- Set to not repeat test 1
   PS_E_CH_INPUT_MODE <= '1';
   wait for 30 ns;   
   check1(PS_E1_REG_FULL,'1',testName,"3E");
   check1(MS_E1_REG_FULL,'0',testName,"3F");
   check1(PS_E2_REG_FULL,'0',testName,"3G");
   check1(MS_E2_REG_FULL,'1',testName,"3H");
   PS_SET_E2_REG <= '1';
   wait for 30 ns; -- Latch is reset
   PS_SET_E2_REG <= '0';
   PS_E_CH_INPUT_MODE <= '0';
   wait for 30 ns;  -- Latch is still reset
   check1(PS_E1_REG_FULL,'0',testName,"3E");
   check1(MS_E1_REG_FULL,'1',testName,"3F");
   check1(PS_E2_REG_FULL,'0',testName,"3G");
   check1(MS_E2_REG_FULL,'1',testName,"3H");

   -- Set E2 Reg Full and E1 Reg Full, Starting with E1
   
   PS_SET_E2_REG <= '1';
   MS_SET_E1_REG <= '0';
   wait for 30 ns;
   check1(PS_E1_REG_FULL,'1',testName,"4A");
   check1(MS_E1_REG_FULL,'0',testName,"4B");
   check1(PS_E2_REG_FULL,'0',testName,"4C");
   check1(MS_E2_REG_FULL,'1',testName,"4D");   
   PS_E_CH_OUTPUT_MODE <= '1';
   wait for 30 ns; -- Latch should be set
   PS_SET_E2_REG <= '0';
   PS_E_CH_OUTPUT_MODE <= '0';
   wait for 30 ns; -- Latch should still be set
   check1(PS_E1_REG_FULL,'1',testName,"4E");
   check1(MS_E1_REG_FULL,'0',testName,"4F");
   check1(PS_E2_REG_FULL,'1',testName,"4G");
   check1(MS_E2_REG_FULL,'0',testName,"4H");
   
   
   
    

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
