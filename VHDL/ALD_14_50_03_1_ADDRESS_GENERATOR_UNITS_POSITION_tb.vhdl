-- Test Bench VHDL for IBM SMS ALD page 14.50.03.1
-- Title: ADDRESS GENERATOR UNITS POSITION
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/31/2020 9:47:22 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_50_03_1_ADDRESS_GENERATOR_UNITS_POSITION_tb is
end ALD_14_50_03_1_ADDRESS_GENERATOR_UNITS_POSITION_tb;

architecture behavioral of ALD_14_50_03_1_ADDRESS_GENERATOR_UNITS_POSITION_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_50_03_1_ADDRESS_GENERATOR_UNITS_POSITION
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_T_POS_C_INDEX_TAG:	 in STD_LOGIC;
		PS_T_POS_A_INDEX_TAG:	 in STD_LOGIC;
		MS_T_POS_C_INDEX_TAG:	 in STD_LOGIC;
		MS_T_POS_B_INDEX_TAG:	 in STD_LOGIC;
		PS_T_POS_B_INDEX_TAG:	 in STD_LOGIC;
		MS_T_POS_A_INDEX_TAG:	 in STD_LOGIC;
		PS_INDEX_CTRL_NUMBER_ONE:	 out STD_LOGIC;
		PS_INDEX_CTRL_NUMBER_TWO:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_T_POS_C_INDEX_TAG: STD_LOGIC := '0';
	signal PS_T_POS_A_INDEX_TAG: STD_LOGIC := '0';
	signal MS_T_POS_C_INDEX_TAG: STD_LOGIC := '1';
	signal MS_T_POS_B_INDEX_TAG: STD_LOGIC := '1';
	signal PS_T_POS_B_INDEX_TAG: STD_LOGIC := '0';
	signal MS_T_POS_A_INDEX_TAG: STD_LOGIC := '1';

	-- Outputs

	signal PS_INDEX_CTRL_NUMBER_ONE: STD_LOGIC;
	signal PS_INDEX_CTRL_NUMBER_TWO: STD_LOGIC;

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

	UUT: ALD_14_50_03_1_ADDRESS_GENERATOR_UNITS_POSITION port map(
		FPGA_CLK => FPGA_CLK,
		PS_T_POS_C_INDEX_TAG => PS_T_POS_C_INDEX_TAG,
		PS_T_POS_A_INDEX_TAG => PS_T_POS_A_INDEX_TAG,
		MS_T_POS_C_INDEX_TAG => MS_T_POS_C_INDEX_TAG,
		MS_T_POS_B_INDEX_TAG => MS_T_POS_B_INDEX_TAG,
		PS_T_POS_B_INDEX_TAG => PS_T_POS_B_INDEX_TAG,
		MS_T_POS_A_INDEX_TAG => MS_T_POS_A_INDEX_TAG,
		PS_INDEX_CTRL_NUMBER_ONE => PS_INDEX_CTRL_NUMBER_ONE,
		PS_INDEX_CTRL_NUMBER_TWO => PS_INDEX_CTRL_NUMBER_TWO);

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
