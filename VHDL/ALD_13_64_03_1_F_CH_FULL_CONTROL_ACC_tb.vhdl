-- Test Bench VHDL for IBM SMS ALD page 13.64.03.1
-- Title: F CH FULL CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/4/2020 9:50:50 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_13_64_03_1_F_CH_FULL_CONTROL_ACC_tb is
end ALD_13_64_03_1_F_CH_FULL_CONTROL_ACC_tb;

architecture behavioral of ALD_13_64_03_1_F_CH_FULL_CONTROL_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_13_64_03_1_F_CH_FULL_CONTROL_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_F_CH_RESET:	 in STD_LOGIC;
		MS_F1_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_F2_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_F_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_F_CH_OUTPUT_MODE:	 in STD_LOGIC;
		MS_SET_F1_REG:	 in STD_LOGIC;
		PS_SET_F2_REG:	 in STD_LOGIC;
		MS_RESET_F2_FULL_LATCH:	 in STD_LOGIC;
		MS_F2_REG_FULL:	 out STD_LOGIC;
		PS_F1_REG_FULL:	 out STD_LOGIC;
		MS_F1_REG_FULL:	 out STD_LOGIC;
		PS_F2_REG_FULL:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_F_CH_RESET: STD_LOGIC := '1';
	signal MS_F1_REG_WORD_SEPARATOR: STD_LOGIC := '1';
	signal PS_F2_REG_WORD_SEPARATOR: STD_LOGIC := '0';
	signal PS_F_CH_INPUT_MODE: STD_LOGIC := '0';
	signal PS_F_CH_OUTPUT_MODE: STD_LOGIC := '0';
	signal MS_SET_F1_REG: STD_LOGIC := '1';
	signal PS_SET_F2_REG: STD_LOGIC := '0';
	signal MS_RESET_F2_FULL_LATCH: STD_LOGIC := '1';

	-- Outputs

	signal MS_F2_REG_FULL: STD_LOGIC;
	signal PS_F1_REG_FULL: STD_LOGIC;
	signal MS_F1_REG_FULL: STD_LOGIC;
	signal PS_F2_REG_FULL: STD_LOGIC;

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

	UUT: ALD_13_64_03_1_F_CH_FULL_CONTROL_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_F_CH_RESET => MS_F_CH_RESET,
		MS_F1_REG_WORD_SEPARATOR => MS_F1_REG_WORD_SEPARATOR,
		PS_F2_REG_WORD_SEPARATOR => PS_F2_REG_WORD_SEPARATOR,
		PS_F_CH_INPUT_MODE => PS_F_CH_INPUT_MODE,
		PS_F_CH_OUTPUT_MODE => PS_F_CH_OUTPUT_MODE,
		MS_SET_F1_REG => MS_SET_F1_REG,
		PS_SET_F2_REG => PS_SET_F2_REG,
		MS_RESET_F2_FULL_LATCH => MS_RESET_F2_FULL_LATCH,
		MS_F2_REG_FULL => MS_F2_REG_FULL,
		PS_F1_REG_FULL => PS_F1_REG_FULL,
		MS_F1_REG_FULL => MS_F1_REG_FULL,
		PS_F2_REG_FULL => PS_F2_REG_FULL);

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

   testName := "13.64.03.1        ";
   
   MS_F_CH_RESET <= '0';
   wait for 30 ns;
   MS_F_CH_RESET <= '1';
   wait for 30 ns;
   
   check1(PS_F1_REG_FULL,'0',testName,"1A");
   check1(MS_F1_REG_FULL,'1',testName,"1B");
 check1(PS_F2_REG_FULL,'0',testName,"1C");
   check1(MS_F2_REG_FULL,'1',testName,"1D");
   
   -- Set F1 Reg Full
   
   MS_SET_F1_REG <= '0';
   wait for 30 ns;
   MS_SET_F1_REG <= '1';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'1',testName,"1E");
   check1(MS_F1_REG_FULL,'0',testName,"1F");
   check1(PS_F2_REG_FULL,'0',testName,"1G");
   check1(MS_F2_REG_FULL,'1',testName,"1H");
   
   -- Reset F1 Reg Full if Set F2 Reg AND NOT F1 W/S (this also sets F2 Full)
   
   MS_F1_REG_WORD_SEPARATOR <= '1';  -- is already 1
   PS_SET_F2_REG <= '1';
   wait for 30 ns;
   PS_SET_F2_REG <= '0';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'0',testName,"1I");
   check1(MS_F1_REG_FULL,'1',testName,"1J");
   check1(PS_F2_REG_FULL,'1',testName,"1K");
   check1(MS_F2_REG_FULL,'0',testName,"1L");
   
   -- Then Reset F2 Reg Full
   
   MS_RESET_F2_FULL_LATCH <= '0';
   wait for 30 ns;
   MS_RESET_F2_FULL_LATCH <= '1';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'0',testName,"1M");
   check1(MS_F1_REG_FULL,'1',testName,"1N");
   check1(PS_F2_REG_FULL,'0',testName,"1O");
   check1(MS_F2_REG_FULL,'1',testName,"1P");
   
   -- Set F1 Reg Full again 
   
   MS_SET_F1_REG <= '0';
   wait for 30 ns;
   MS_SET_F1_REG <= '1';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'1',testName,"2A");
   check1(MS_F1_REG_FULL,'0',testName,"2B");
   check1(PS_F2_REG_FULL,'0',testName,"2C");
   check1(MS_F2_REG_FULL,'1',testName,"2D");
   
   -- Reset F1 Reg Full if Set F2 Reg Full AND F2 W/S (also sets F2 Reg Full again)
   
   MS_F1_REG_WORD_SEPARATOR <= '0';  -- Set to not repeat test 1
   
   PS_SET_F2_REG <= '1';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'1',testName,"2E");
   check1(MS_F1_REG_FULL,'0',testName,"2F");
   check1(PS_F2_REG_FULL,'0',testName,"2G");
   check1(MS_F2_REG_FULL,'1',testName,"2H");
   PS_F2_REG_WORD_SEPARATOR <= '1';
   wait for 30 ns; -- Latch should be reset
   PS_F2_REG_WORD_SEPARATOR <= '0';
   PS_SET_F2_REG <= '0'; -- Latch should still be reset
   
   check1(PS_F1_REG_FULL,'0',testName,"2E");
   check1(MS_F1_REG_FULL,'1',testName,"2F");
   check1(PS_F2_REG_FULL,'1',testName,"2G");
   check1(MS_F2_REG_FULL,'0',testName,"2H");

-- Then Reset F2 Reg Full
   
   MS_RESET_F2_FULL_LATCH <= '0';
   wait for 30 ns;
   MS_RESET_F2_FULL_LATCH <= '1';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'0',testName,"2I");
   check1(MS_F1_REG_FULL,'1',testName,"2J");
   check1(PS_F2_REG_FULL,'0',testName,"2K");
   check1(MS_F2_REG_FULL,'1',testName,"2L");

   -- Set F1 Reg Full again 
   
   MS_SET_F1_REG <= '0';
   wait for 30 ns;
   MS_SET_F1_REG <= '1';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'1',testName,"3A");
   check1(MS_F1_REG_FULL,'0',testName,"3B");
   check1(PS_F2_REG_FULL,'0',testName,"3C");
   check1(MS_F2_REG_FULL,'1',testName,"3D");

   -- Reset F1 Reg Full via F CH INPUT MODE and SET F2 REG
   -- This should NOT set F2

   MS_F1_REG_WORD_SEPARATOR <= '0';  -- Set to not repeat test 1
   PS_F_CH_INPUT_MODE <= '1';
   wait for 30 ns;   
   check1(PS_F1_REG_FULL,'1',testName,"3E");
   check1(MS_F1_REG_FULL,'0',testName,"3F");
   check1(PS_F2_REG_FULL,'0',testName,"3G");
   check1(MS_F2_REG_FULL,'1',testName,"3H");
   PS_SET_F2_REG <= '1';
   wait for 30 ns; -- Latch is reset
   PS_SET_F2_REG <= '0';
   PS_F_CH_INPUT_MODE <= '0';
   wait for 30 ns;  -- Latch is still reset
   check1(PS_F1_REG_FULL,'0',testName,"3E");
   check1(MS_F1_REG_FULL,'1',testName,"3F");
   check1(PS_F2_REG_FULL,'0',testName,"3G");
   check1(MS_F2_REG_FULL,'1',testName,"3H");

   -- Set F2 Reg Full and F1 Reg Full, Starting with F1
   
   PS_SET_F2_REG <= '1';
   MS_SET_F1_REG <= '0';
   wait for 30 ns;
   check1(PS_F1_REG_FULL,'1',testName,"4A");
   check1(MS_F1_REG_FULL,'0',testName,"4B");
   check1(PS_F2_REG_FULL,'0',testName,"4C");
   check1(MS_F2_REG_FULL,'1',testName,"4D");   
   PS_F_CH_OUTPUT_MODE <= '1';
   wait for 30 ns; -- Latch should be set
   PS_SET_F2_REG <= '0';
   PS_F_CH_OUTPUT_MODE <= '0';
   wait for 30 ns; -- Latch should still be set
   check1(PS_F1_REG_FULL,'1',testName,"4E");
   check1(MS_F1_REG_FULL,'0',testName,"4F");
   check1(PS_F2_REG_FULL,'1',testName,"4G");
   check1(MS_F2_REG_FULL,'0',testName,"4H");


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
