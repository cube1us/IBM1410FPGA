-- Test Bench VHDL for IBM SMS ALD page 12.15.02.1
-- Title: 1* SINGLE CYCLE CONTROL
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 7/4/2020 9:53:57 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL_tb is
end ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL_tb;

architecture behavioral of ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STOP_KEY_LATCH:	 in STD_LOGIC;
		MV_36_VOLTS:	 in STD_LOGIC;
		PS_START_AUTO_STARTMODE_STAR_AUTS_STAR:	 in STD_LOGIC;
		MS_ERROR_RESTART:	 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		SWITCH_MOM_CONS_START:	 in STD_LOGIC;
		SWITCH_MOM_CE_START:	 in STD_LOGIC;
		MS_START_KEY:	 out STD_LOGIC;
		MS_START_KEY_LATCH_1:	 out STD_LOGIC;
		PS_START_KEY_2:	 out STD_LOGIC;
		MS_START_KEY_LATCH_2:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_STOP_KEY_LATCH: STD_LOGIC := '1';
	signal MV_36_VOLTS: STD_LOGIC := '1';
	signal PS_START_AUTO_STARTMODE_STAR_AUTS_STAR: STD_LOGIC := '0';
	signal MS_ERROR_RESTART: STD_LOGIC := '1';
	signal MS_COMPUTER_RESET_1: STD_LOGIC := '1';
	signal SWITCH_MOM_CONS_START: STD_LOGIC := '0';
	signal SWITCH_MOM_CE_START: STD_LOGIC := '0';

	-- Outputs

	signal MS_START_KEY: STD_LOGIC;
	signal MS_START_KEY_LATCH_1: STD_LOGIC;
	signal PS_START_KEY_2: STD_LOGIC;
	signal MS_START_KEY_LATCH_2: STD_LOGIC;

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

	UUT: ALD_12_15_02_1_1_SINGLE_CYCLE_CONTROL port map(
		FPGA_CLK => FPGA_CLK,
		MS_STOP_KEY_LATCH => MS_STOP_KEY_LATCH,
		MV_36_VOLTS => MV_36_VOLTS,
		PS_START_AUTO_STARTMODE_STAR_AUTS_STAR => PS_START_AUTO_STARTMODE_STAR_AUTS_STAR,
		MS_ERROR_RESTART => MS_ERROR_RESTART,
		MS_COMPUTER_RESET_1 => MS_COMPUTER_RESET_1,
		SWITCH_MOM_CONS_START => SWITCH_MOM_CONS_START,
		SWITCH_MOM_CE_START => SWITCH_MOM_CE_START,
		MS_START_KEY => MS_START_KEY,
		MS_START_KEY_LATCH_1 => MS_START_KEY_LATCH_1,
		PS_START_KEY_2 => PS_START_KEY_2,
		MS_START_KEY_LATCH_2 => MS_START_KEY_LATCH_2);

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
   
   wait for 30 ns;
   SWITCH_MOM_CONS_START <= '1';
   wait for 100 ns;
   SWITCH_MOM_CONS_START <= '0';
   wait for 300 ns;
   
   SWITCH_MOM_CE_START <= '1';
   wait for 100 ns;
   SWITCH_MOM_CE_START <= '0';
   wait for 300 ns;
   
   MS_ERROR_RESTART <= '0';
   wait for 100 ns;
   MS_ERROR_RESTART <= '1';
   wait for 300 ns;
   
   SWITCH_MOM_CONS_START <= '1';
   MS_STOP_KEY_LATCH <= '0';
   wait for 100 ns;
   SWITCH_MOM_CONS_START <= '0';
   wait for 100 ns;
   MS_STOP_KEY_LATCH <= '1';
   wait for 300 ns;
   
   SWITCH_MOM_CE_START <= '1';
   wait for 100 ns;
   MS_COMPUTER_RESET_1 <= '0';
   wait for 100 ns;
   SWITCH_MOM_CE_START <= '0';
   wait for 100 ns;
   MS_COMPUTER_RESET_1 <= '1';
   wait for 300 ns;
   

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
