-- Test BenchVHDL for IBM SMS ALD group IndexTagLatches
-- Title: IndexTagLatches
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/31/2020 4:08:42 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity IndexTagLatches_tb is
end IndexTagLatches_tb;

architecture behavioral of IndexTagLatches_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component IndexTagLatches
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_ASSEMBLY_CH_ZONE_C_BIT: in STD_LOGIC;
		MS_SET_H_POS_INDEX_LAT_B: in STD_LOGIC;
		MS_RESET_INDEX_TAG_LATCHES: in STD_LOGIC;
		PS_SET_H_POS_INDEX_TAGS: in STD_LOGIC;
		MS_SET_H_POS_INDEX_LAT_A: in STD_LOGIC;
		PS_SET_T_POS_INDEX_TAGS: in STD_LOGIC;
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		MS_H_POS_C_INDEX_TAG: out STD_LOGIC;
		PS_H_POS_C_INDEX_TAG: out STD_LOGIC;
		MS_H_POS_B_INDEX_TAG: out STD_LOGIC;
		PS_H_POS_B_INDEX_TAG: out STD_LOGIC;
		MS_H_POS_A_INDEX_TAG: out STD_LOGIC;
		PS_H_POS_A_INDEX_TAG: out STD_LOGIC;
		MS_T_POS_C_INDEX_TAG: out STD_LOGIC;
		PS_T_POS_C_INDEX_TAG: out STD_LOGIC;
		MS_T_POS_B_INDEX_TAG: out STD_LOGIC;
		PS_T_POS_B_INDEX_TAG: out STD_LOGIC;
		MS_T_POS_A_INDEX_TAG: out STD_LOGIC;
		PS_T_POS_A_INDEX_TAG: out STD_LOGIC;
		LAMP_11C8A02: out STD_LOGIC;
		LAMP_11C8B02: out STD_LOGIC;
		LAMP_11C8A01: out STD_LOGIC;
		LAMP_11C8B01: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ASSEMBLY_CH_ZONE_C_BIT: STD_LOGIC := '0';
	signal MS_SET_H_POS_INDEX_LAT_B: STD_LOGIC := '1';
	signal MS_RESET_INDEX_TAG_LATCHES: STD_LOGIC := '1';
	signal PS_SET_H_POS_INDEX_TAGS: STD_LOGIC := '0';
	signal MS_SET_H_POS_INDEX_LAT_A: STD_LOGIC := '1';
	signal PS_SET_T_POS_INDEX_TAGS: STD_LOGIC := '0';
	signal PS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";

	-- Outputs

	signal MS_H_POS_C_INDEX_TAG: STD_LOGIC;
	signal PS_H_POS_C_INDEX_TAG: STD_LOGIC;
	signal MS_H_POS_B_INDEX_TAG: STD_LOGIC;
	signal PS_H_POS_B_INDEX_TAG: STD_LOGIC;
	signal MS_H_POS_A_INDEX_TAG: STD_LOGIC;
	signal PS_H_POS_A_INDEX_TAG: STD_LOGIC;
	signal MS_T_POS_C_INDEX_TAG: STD_LOGIC;
	signal PS_T_POS_C_INDEX_TAG: STD_LOGIC;
	signal MS_T_POS_B_INDEX_TAG: STD_LOGIC;
	signal PS_T_POS_B_INDEX_TAG: STD_LOGIC;
	signal MS_T_POS_A_INDEX_TAG: STD_LOGIC;
	signal PS_T_POS_A_INDEX_TAG: STD_LOGIC;
	signal LAMP_11C8A02: STD_LOGIC;
	signal LAMP_11C8B02: STD_LOGIC;
	signal LAMP_11C8A01: STD_LOGIC;
	signal LAMP_11C8B01: STD_LOGIC;

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

	UUT: IndexTagLatches port map(
		FPGA_CLK => FPGA_CLK,
		PS_ASSEMBLY_CH_ZONE_C_BIT => PS_ASSEMBLY_CH_ZONE_C_BIT,
		MS_SET_H_POS_INDEX_LAT_B => MS_SET_H_POS_INDEX_LAT_B,
		MS_RESET_INDEX_TAG_LATCHES => MS_RESET_INDEX_TAG_LATCHES,
		PS_SET_H_POS_INDEX_TAGS => PS_SET_H_POS_INDEX_TAGS,
		MS_SET_H_POS_INDEX_LAT_A => MS_SET_H_POS_INDEX_LAT_A,
		PS_SET_T_POS_INDEX_TAGS => PS_SET_T_POS_INDEX_TAGS,
		PS_ASSEMBLY_CH_BUS => PS_ASSEMBLY_CH_BUS,
		MS_H_POS_C_INDEX_TAG => MS_H_POS_C_INDEX_TAG,
		PS_H_POS_C_INDEX_TAG => PS_H_POS_C_INDEX_TAG,
		MS_H_POS_B_INDEX_TAG => MS_H_POS_B_INDEX_TAG,
		PS_H_POS_B_INDEX_TAG => PS_H_POS_B_INDEX_TAG,
		MS_H_POS_A_INDEX_TAG => MS_H_POS_A_INDEX_TAG,
		PS_H_POS_A_INDEX_TAG => PS_H_POS_A_INDEX_TAG,
		MS_T_POS_C_INDEX_TAG => MS_T_POS_C_INDEX_TAG,
		PS_T_POS_C_INDEX_TAG => PS_T_POS_C_INDEX_TAG,
		MS_T_POS_B_INDEX_TAG => MS_T_POS_B_INDEX_TAG,
		PS_T_POS_B_INDEX_TAG => PS_T_POS_B_INDEX_TAG,
		MS_T_POS_A_INDEX_TAG => MS_T_POS_A_INDEX_TAG,
		PS_T_POS_A_INDEX_TAG => PS_T_POS_A_INDEX_TAG,
		LAMP_11C8A02 => LAMP_11C8A02,
		LAMP_11C8B02 => LAMP_11C8B02,
		LAMP_11C8A01 => LAMP_11C8A01,
		LAMP_11C8B01 => LAMP_11C8B01);

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
   
   testName := "14.50.01.1        ";
   
   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(PS_H_POS_C_INDEX_TAG,'0',testName,"1A");
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"1B");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '1';
   wait for 30 ns;
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"1C");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '0';
   PS_SET_H_POS_INDEX_TAGS <= '1';
   wait for 30 ns;
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"1D");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '1';
   PS_SET_H_POS_INDEX_TAGS <= '1';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '0';
   PS_SET_H_POS_INDEX_TAGS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_H_POS_C_INDEX_TAG,'1',testName,"1E");
   check1(MS_H_POS_C_INDEX_TAG,'0',testName,"1F");   
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"1G");
   check1(MS_H_POS_A_INDEX_TAG,'1',testName,"1H");
   
   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"2A");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '1';
   wait for 30 ns;
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"2B");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '0';
   MS_SET_H_POS_INDEX_LAT_B <= '1';
   wait for 30 ns;
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"2C");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '1';
   MS_SET_H_POS_INDEX_LAT_B <= '0';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '0';
   MS_SET_H_POS_INDEX_LAT_B <= '1';
   wait for 30 ns;  -- Latch should stay set
   check1(MS_H_POS_C_INDEX_TAG,'0',testName,"2D");
   check1(MS_H_POS_B_INDEX_TAG,'0',testName,"2E");  -- This line sets both C and B
   check1(MS_H_POS_A_INDEX_TAG,'1',testName,"2F");
   
   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(PS_H_POS_B_INDEX_TAG,'0',testName,"3A");
   check1(LAMP_11C8A02,'0',testName,"3AL");
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"3B");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '1';
   wait for 30 ns;
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"3C");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '0';
   PS_SET_H_POS_INDEX_TAGS <= '1';
   wait for 30 ns;
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"3D");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '1';
   PS_SET_H_POS_INDEX_TAGS <= '1';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '0';
   PS_SET_H_POS_INDEX_TAGS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_H_POS_B_INDEX_TAG,'1',testName,"3E");
   check1(LAMP_11C8A02,'1',testName,"3EL");
   check1(MS_H_POS_B_INDEX_TAG,'0',testName,"3F");   
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"3G");
   check1(MS_H_POS_A_INDEX_TAG,'1',testName,"3H");
   
   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"4A");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '1';
   wait for 30 ns;
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"4B");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '0';
   MS_SET_H_POS_INDEX_LAT_A <= '1';
   wait for 30 ns;
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"4C");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '1';
   MS_SET_H_POS_INDEX_LAT_A <= '0';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '0';
   MS_SET_H_POS_INDEX_LAT_A <= '1';
   wait for 30 ns;  -- Latch should stay set
   check1(MS_H_POS_B_INDEX_TAG,'0',testName,"4D");
   check1(MS_H_POS_A_INDEX_TAG,'0',testName,"4E");  -- This line sets both B and A
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"4F");

   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(PS_H_POS_A_INDEX_TAG,'0',testName,"5A");
   check1(LAMP_11C8B02,'0',testName,"5AL");
   check1(MS_H_POS_A_INDEX_TAG,'1',testName,"5B");
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '1';
   wait for 30 ns;
   check1(MS_H_POS_A_INDEX_TAG,'1',testName,"5C");
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '0';
   PS_SET_H_POS_INDEX_TAGS <= '1';
   wait for 30 ns;
   check1(MS_H_POS_A_INDEX_TAG,'1',testName,"5D");
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '1';
   PS_SET_H_POS_INDEX_TAGS <= '1';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '0';
   PS_SET_H_POS_INDEX_TAGS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_H_POS_A_INDEX_TAG,'1',testName,"5E");
   check1(LAMP_11C8B02,'1',testName,"5EL");   
   check1(MS_H_POS_A_INDEX_TAG,'0',testName,"5F");   
   check1(MS_H_POS_B_INDEX_TAG,'1',testName,"5G");
   check1(MS_H_POS_C_INDEX_TAG,'1',testName,"5H");
   
   -- We already tested the direct set earlier...
   

   testName := "14.50.01.2        ";
   
   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(PS_T_POS_C_INDEX_TAG,'0',testName,"1A");
   check1(MS_T_POS_C_INDEX_TAG,'1',testName,"1B");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '1';
   wait for 30 ns;
   check1(MS_T_POS_C_INDEX_TAG,'1',testName,"1C");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '0';
   PS_SET_T_POS_INDEX_TAGS <= '1';
   wait for 30 ns;
   check1(MS_T_POS_C_INDEX_TAG,'1',testName,"1D");
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '1';
   PS_SET_T_POS_INDEX_TAGS <= '1';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_ZONE_C_BIT <= '0';
   PS_SET_T_POS_INDEX_TAGS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_T_POS_C_INDEX_TAG,'1',testName,"1E");
   check1(MS_T_POS_C_INDEX_TAG,'0',testName,"1F");   
   check1(MS_T_POS_B_INDEX_TAG,'1',testName,"1G");
   check1(MS_T_POS_A_INDEX_TAG,'1',testName,"1H");


   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(PS_T_POS_B_INDEX_TAG,'0',testName,"3A");
   check1(LAMP_11C8A01,'0',testName,"3AL");
   check1(MS_T_POS_B_INDEX_TAG,'1',testName,"3B");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '1';
   wait for 30 ns;
   check1(MS_T_POS_B_INDEX_TAG,'1',testName,"3C");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '0';
   PS_SET_T_POS_INDEX_TAGS <= '1';
   wait for 30 ns;
   check1(MS_T_POS_B_INDEX_TAG,'1',testName,"3D");
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '1';
   PS_SET_T_POS_INDEX_TAGS <= '1';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= '0';
   PS_SET_T_POS_INDEX_TAGS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_T_POS_B_INDEX_TAG,'1',testName,"3E");
   check1(LAMP_11C8A01,'1',testName,"3EL");
   check1(MS_T_POS_B_INDEX_TAG,'0',testName,"3F");   
   check1(MS_T_POS_C_INDEX_TAG,'1',testName,"3G");
   check1(MS_T_POS_A_INDEX_TAG,'1',testName,"3H");

   MS_RESET_INDEX_TAG_LATCHES <= '0';
   wait for 30 ns;
   MS_RESET_INDEX_TAG_LATCHES <= '1';
   wait for 30 ns;

   check1(PS_T_POS_A_INDEX_TAG,'0',testName,"5A");
   check1(LAMP_11C8B01,'0',testName,"5AL");
   check1(MS_T_POS_A_INDEX_TAG,'1',testName,"5B");
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '1';
   wait for 30 ns;
   check1(MS_T_POS_A_INDEX_TAG,'1',testName,"5C");
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '0';
   PS_SET_T_POS_INDEX_TAGS <= '1';
   wait for 30 ns;
   check1(MS_T_POS_A_INDEX_TAG,'1',testName,"5D");
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '1';
   PS_SET_T_POS_INDEX_TAGS <= '1';
   wait for 30 ns;  -- Set Latch
   PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= '0';
   PS_SET_T_POS_INDEX_TAGS <= '0';
   wait for 30 ns;  -- Latch should stay set
   check1(PS_T_POS_A_INDEX_TAG,'1',testName,"5E");
   check1(LAMP_11C8B01,'1',testName,"5EL");   
   check1(MS_T_POS_A_INDEX_TAG,'0',testName,"5F");   
   check1(MS_T_POS_B_INDEX_TAG,'1',testName,"5G");
   check1(MS_T_POS_C_INDEX_TAG,'1',testName,"5H");


   assert false report "Simulation Ended NORMALLY(2)" severity failure;
   
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
