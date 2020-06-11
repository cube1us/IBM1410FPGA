-- Test Bench VHDL for IBM SMS ALD page 11.20.11.1
-- Title: 1ST AND 2ND ADDRESS CTRLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 6/11/2020 1:06:59 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS_tb is
end ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS_tb;

architecture behavioral of ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_I_RING_1_TIME:	 in STD_LOGIC;
		MS_I_RING_2_TIME:	 in STD_LOGIC;
		MS_I_RING_3_TIME:	 in STD_LOGIC;
		MS_I_RING_4_TIME:	 in STD_LOGIC;
		MS_I_RING_5_TIME:	 in STD_LOGIC;
		MS_I_RING_6_TIME:	 in STD_LOGIC;
		MS_I_RING_7_TIME:	 in STD_LOGIC;
		MS_I_RING_8_TIME:	 in STD_LOGIC;
		MS_I_RING_9_TIME:	 in STD_LOGIC;
		MS_I_RING_10_TIME:	 in STD_LOGIC;
		PS_1ST_ADDRESS:	 out STD_LOGIC;
		PS_2ND_ADDRESS:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_I_RING_1_TIME: STD_LOGIC := '1';
	signal MS_I_RING_2_TIME: STD_LOGIC := '1';
	signal MS_I_RING_3_TIME: STD_LOGIC := '1';
	signal MS_I_RING_4_TIME: STD_LOGIC := '1';
	signal MS_I_RING_5_TIME: STD_LOGIC := '1';
	signal MS_I_RING_6_TIME: STD_LOGIC := '1';
	signal MS_I_RING_7_TIME: STD_LOGIC := '1';
	signal MS_I_RING_8_TIME: STD_LOGIC := '1';
	signal MS_I_RING_9_TIME: STD_LOGIC := '1';
	signal MS_I_RING_10_TIME: STD_LOGIC := '1';

	-- Outputs

	signal PS_1ST_ADDRESS: STD_LOGIC;
	signal PS_2ND_ADDRESS: STD_LOGIC;

-- START USER TEST BENCH DECLARATIONS

-- The user test bench declarations, if any, must be
-- placed AFTER the line starts with the first line of text 
-- with -- START USER TEST BENCH DECLARATIONS and ends
-- with -- END USER TEST BENCH DECLARATIONS
-- This text is preserved when the IBM1410SMS applciation
-- regenerates a test bench

   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ALD_11_20_11_1_1ST_AND_2ND_ADDRESS_CTRLS port map(
		FPGA_CLK => FPGA_CLK,
		MS_I_RING_1_TIME => MS_I_RING_1_TIME,
		MS_I_RING_2_TIME => MS_I_RING_2_TIME,
		MS_I_RING_3_TIME => MS_I_RING_3_TIME,
		MS_I_RING_4_TIME => MS_I_RING_4_TIME,
		MS_I_RING_5_TIME => MS_I_RING_5_TIME,
		MS_I_RING_6_TIME => MS_I_RING_6_TIME,
		MS_I_RING_7_TIME => MS_I_RING_7_TIME,
		MS_I_RING_8_TIME => MS_I_RING_8_TIME,
		MS_I_RING_9_TIME => MS_I_RING_9_TIME,
		MS_I_RING_10_TIME => MS_I_RING_10_TIME,
		PS_1ST_ADDRESS => PS_1ST_ADDRESS,
		PS_2ND_ADDRESS => PS_2ND_ADDRESS);

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
