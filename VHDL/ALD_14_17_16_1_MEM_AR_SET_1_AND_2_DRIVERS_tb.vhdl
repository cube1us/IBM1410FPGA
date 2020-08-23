-- Test Bench VHDL for IBM SMS ALD page 14.17.16.1
-- Title: MEM AR SET 1 AND 2 DRIVERS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/23/2020 9:21:01 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_17_16_1_MEM_AR_SET_1_AND_2_DRIVERS_tb is
end ALD_14_17_16_1_MEM_AR_SET_1_AND_2_DRIVERS_tb;

architecture behavioral of ALD_14_17_16_1_MEM_AR_SET_1_AND_2_DRIVERS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_17_16_1_MEM_AR_SET_1_AND_2_DRIVERS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R:	 in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_3_JRJ:	 in STD_LOGIC;
		MS_CE_ADDR_REG_READ_OUT:	 in STD_LOGIC;
		MS_PROGRAM_RESET_1:	 in STD_LOGIC;
		PS_SET_MEM_AR_1_GATED:	 out STD_LOGIC;
		PS_SET_MEM_AR_2_GATED:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_A_OR_R: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_3_JRJ: STD_LOGIC := '0';
	signal MS_CE_ADDR_REG_READ_OUT: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';

	-- Outputs

	signal PS_SET_MEM_AR_1_GATED: STD_LOGIC;
	signal PS_SET_MEM_AR_2_GATED: STD_LOGIC;

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

	UUT: ALD_14_17_16_1_MEM_AR_SET_1_AND_2_DRIVERS port map(
		FPGA_CLK => FPGA_CLK,
		PS_LOGIC_GATE_A_OR_R => PS_LOGIC_GATE_A_OR_R,
		PS_2ND_CLOCK_PULSE_3_JRJ => PS_2ND_CLOCK_PULSE_3_JRJ,
		MS_CE_ADDR_REG_READ_OUT => MS_CE_ADDR_REG_READ_OUT,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		PS_SET_MEM_AR_1_GATED => PS_SET_MEM_AR_1_GATED,
		PS_SET_MEM_AR_2_GATED => PS_SET_MEM_AR_2_GATED);

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
   
   testName := "14.17.16.1        ";
   
   wait for 30 ns;
   PS_LOGIC_GATE_A_OR_R <= '0';
   PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
   wait for 30 ns;
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"1A");
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"1B");
   PS_LOGIC_GATE_A_OR_R <= '1';
   PS_2ND_CLOCK_PULSE_3_JRJ <= '0';
   wait for 30 ns;
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"1C");
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"1D");
   PS_LOGIC_GATE_A_OR_R <= '1';
   PS_2ND_CLOCK_PULSE_3_JRJ <= '1';
   wait for 30 ns;
   check1(PS_SET_MEM_AR_1_GATED,'1',testName,"1E");
   check1(PS_SET_MEM_AR_1_GATED,'1',testName,"1F");
   PS_LOGIC_GATE_A_OR_R <= '0';
   PS_2ND_CLOCK_PULSE_3_JRJ <= '0';
   wait for 30 ns;

   MS_CE_ADDR_REG_READ_OUT <= '0';
   wait for 30 ns;
   MS_CE_ADDR_REG_READ_OUT <= '1';
   wait for 20 ms;
   check1(PS_SET_MEM_AR_1_GATED,'1',testName,"2A");
   check1(PS_SET_MEM_AR_1_GATED,'1',testName,"2B");
   wait for 6 ms;
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"2C");
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"2D");
   
   MS_PROGRAM_RESET_1 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_1 <= '1';
   wait for 20 ms;
   check1(PS_SET_MEM_AR_1_GATED,'1',testName,"2A");
   check1(PS_SET_MEM_AR_1_GATED,'1',testName,"2B");
   wait for 6 ms;
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"2C");
   check1(PS_SET_MEM_AR_1_GATED,'0',testName,"2D");
      

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 100 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;