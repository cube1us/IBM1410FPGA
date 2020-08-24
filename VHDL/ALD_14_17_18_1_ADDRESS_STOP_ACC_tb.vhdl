-- Test Bench VHDL for IBM SMS ALD page 14.17.18.1
-- Title: ADDRESS STOP-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/24/2020 8:30:32 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_17_18_1_ADDRESS_STOP_ACC_tb is
end ALD_14_17_18_1_ADDRESS_STOP_ACC_tb;

architecture behavioral of ALD_14_17_18_1_ADDRESS_STOP_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_17_18_1_ADDRESS_STOP_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_UP8B_SYNC_COND:	 in STD_LOGIC;
		MS_NO_SCAN:	 in STD_LOGIC;
		MS_1ST_SCAN:	 in STD_LOGIC;
		MS_MAR_SYNC_COND:	 in STD_LOGIC;
		MS_MAR_SYNC_COND_JRJ:	 in STD_LOGIC;
		MINUS_36_VOLTS:	 in STD_LOGIC;
		MS_2ND_SCAN:	 in STD_LOGIC;
		MS_3RD_SCAN:	 in STD_LOGIC;
		PS_OPTIONAL_SYNC_COND_STAR_CE:	 in STD_LOGIC;
		PS_HP8B_SYNC_COND:	 in STD_LOGIC;
		MS_LOGIC_GATE_A_1:	 in STD_LOGIC;
		MS_OPTIONAL_SYNC_COND_A:	 in STD_LOGIC;
		MS_OPTIONAL_SYNC_COND_B:	 in STD_LOGIC;
		SWITCH_ROT_SCAN_GATE:	 in STD_LOGIC_VECTOR(11 downTo 0);
		PS_ADDRESS_STOP:	 out STD_LOGIC;
		PS_OPTIONAL_SYNC_COND_CE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_UP8B_SYNC_COND: STD_LOGIC := '0';
	signal MS_NO_SCAN: STD_LOGIC := '1';
	signal MS_1ST_SCAN: STD_LOGIC := '1';
	signal MS_MAR_SYNC_COND: STD_LOGIC := '1';
	signal MS_MAR_SYNC_COND_JRJ: STD_LOGIC := '1';
	signal MINUS_36_VOLTS: STD_LOGIC := '1';
	signal MS_2ND_SCAN: STD_LOGIC := '1';
	signal MS_3RD_SCAN: STD_LOGIC := '1';
	signal PS_OPTIONAL_SYNC_COND_STAR_CE: STD_LOGIC := '0';
	signal PS_HP8B_SYNC_COND: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_A_1: STD_LOGIC := '1';
	signal MS_OPTIONAL_SYNC_COND_A: STD_LOGIC := '1';
	signal MS_OPTIONAL_SYNC_COND_B: STD_LOGIC := '1';
	signal SWITCH_ROT_SCAN_GATE: STD_LOGIC_VECTOR(11 downTo 0) := "000000000000";

	-- Outputs

	signal PS_ADDRESS_STOP: STD_LOGIC;
	signal PS_OPTIONAL_SYNC_COND_CE: STD_LOGIC;

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

	UUT: ALD_14_17_18_1_ADDRESS_STOP_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_UP8B_SYNC_COND => PS_UP8B_SYNC_COND,
		MS_NO_SCAN => MS_NO_SCAN,
		MS_1ST_SCAN => MS_1ST_SCAN,
		MS_MAR_SYNC_COND => MS_MAR_SYNC_COND,
		MS_MAR_SYNC_COND_JRJ => MS_MAR_SYNC_COND_JRJ,
		MINUS_36_VOLTS => MINUS_36_VOLTS,
		MS_2ND_SCAN => MS_2ND_SCAN,
		MS_3RD_SCAN => MS_3RD_SCAN,
		PS_OPTIONAL_SYNC_COND_STAR_CE => PS_OPTIONAL_SYNC_COND_STAR_CE,
		PS_HP8B_SYNC_COND => PS_HP8B_SYNC_COND,
		MS_LOGIC_GATE_A_1 => MS_LOGIC_GATE_A_1,
		MS_OPTIONAL_SYNC_COND_A => MS_OPTIONAL_SYNC_COND_A,
		MS_OPTIONAL_SYNC_COND_B => MS_OPTIONAL_SYNC_COND_B,
		SWITCH_ROT_SCAN_GATE => SWITCH_ROT_SCAN_GATE,
		PS_ADDRESS_STOP => PS_ADDRESS_STOP,
		PS_OPTIONAL_SYNC_COND_CE => PS_OPTIONAL_SYNC_COND_CE);

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
   
   testName := "14.17.18.1        ";
   
   SWITCH_ROT_SCAN_GATE <= "000000000010"; -- 1st position is open

   MS_MAR_SYNC_COND <= '1';
   MS_MAR_SYNC_COND_JRJ <= '0';
   PS_UP8B_SYNC_COND <= '1';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"SA");
   MS_MAR_SYNC_COND <= '0';
   MS_MAR_SYNC_COND_JRJ <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"SB");
   MS_MAR_SYNC_COND_JRJ <= '0';   
   PS_UP8B_SYNC_COND <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1A");
   PS_UP8B_SYNC_COND <= '1';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1B");
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1C");
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1D");
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1E");
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1F");
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1G");
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '0';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"1H");
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'1',testName,"1I");   


   SWITCH_ROT_SCAN_GATE <= "000000000100"; -- 2nd position

   PS_UP8B_SYNC_COND <= '0';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '1';
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2A");
   PS_UP8B_SYNC_COND <= '1';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2B");
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   -- MS_NO_SCAN <= '1';
   -- wait for 30 ns;
   -- check1(PS_ADDRESS_STOP,'0',testName,"1C");
   -- MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2C");
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2D");
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2E");
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2F");
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '0';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"2G");
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'1',testName,"2H");   


   SWITCH_ROT_SCAN_GATE <= "000000001000"; -- 3rd position

   PS_UP8B_SYNC_COND <= '0';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '1';
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3A");
   PS_UP8B_SYNC_COND <= '1';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3B");
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3C");
   MS_NO_SCAN <= '0';
   -- MS_1ST_SCAN <= '1';
   -- wait for 30 ns;
   -- check1(PS_ADDRESS_STOP,'0',testName,"1D");
   -- MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3E");
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3F");
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3G");
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '0';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"3H");
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'1',testName,"3I");   


   SWITCH_ROT_SCAN_GATE <= "000000010000"; -- 4th position

   PS_UP8B_SYNC_COND <= '0';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '1';
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4A");
   PS_UP8B_SYNC_COND <= '1';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4B");
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4C");
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4D");
   MS_1ST_SCAN <= '0';
   -- MS_2ND_SCAN <= '1';
   -- wait for 30 ns;
   -- check1(PS_ADDRESS_STOP,'0',testName,"1E");
   -- MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4F");
   MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4G");
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '0';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"4H");
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'1',testName,"4I");   

   SWITCH_ROT_SCAN_GATE <= "000000100000"; -- 5th position

   PS_UP8B_SYNC_COND <= '0';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '0';
   MS_3RD_SCAN <= '1';
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5A");
   PS_UP8B_SYNC_COND <= '1';
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5B");
   PS_OPTIONAL_SYNC_COND_STAR_CE <= '1';
   MS_NO_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5C");
   MS_NO_SCAN <= '0';
   MS_1ST_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5D");
   MS_1ST_SCAN <= '0';
   MS_2ND_SCAN <= '1';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5E");
   MS_2ND_SCAN <= '0';
   -- MS_3RD_SCAN <= '1';
   -- wait for 30 ns;
   -- check1(PS_ADDRESS_STOP,'0',testName,"1F");
   -- MS_3RD_SCAN <= '0';
   MS_LOGIC_GATE_A_1 <= '0';
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5G");
   MS_LOGIC_GATE_A_1 <= '1';
   PS_HP8B_SYNC_COND <= '0';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'0',testName,"5H");
   PS_HP8B_SYNC_COND <= '1';   
   wait for 30 ns;
   check1(PS_ADDRESS_STOP,'1',testName,"5I");   


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
