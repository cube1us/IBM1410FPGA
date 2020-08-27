-- Test Bench VHDL for IBM SMS ALD page 14.18.10.1
-- Title: AUXILIARY BINARY ADDER-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/27/2020 12:56:31 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_18_10_1_AUXILIARY_BINARY_ADDER_ACC_tb is
end ALD_14_18_10_1_AUXILIARY_BINARY_ADDER_ACC_tb;

architecture behavioral of ALD_14_18_10_1_AUXILIARY_BINARY_ADDER_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_18_10_1_AUXILIARY_BINARY_ADDER_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A4_DOT_B4_EVEN:	 in STD_LOGIC;
		MS_ZONE_ADDER_CARRY:	 in STD_LOGIC;
		PS_ZONE_ADDER_CARRY:	 in STD_LOGIC;
		PS_BIN_REG_4_DOT_NOT_8_OR_8_DOT_NOT_4:	 in STD_LOGIC;
		PS_AUX_BIN_ADDER_4_BIT:	 out STD_LOGIC;
		MS_AUX_BIN_ADDER_4_BIT:	 out STD_LOGIC;
		PS_AUX_BIN_ADDER_8_BIT:	 out STD_LOGIC;
		MS_AUX_BIN_ADDER_8_BIT:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A4_DOT_B4_EVEN: STD_LOGIC := '0';
	signal MS_ZONE_ADDER_CARRY: STD_LOGIC := '1';
	signal PS_ZONE_ADDER_CARRY: STD_LOGIC := '0';
	signal PS_BIN_REG_4_DOT_NOT_8_OR_8_DOT_NOT_4: STD_LOGIC := '0';

	-- Outputs

	signal PS_AUX_BIN_ADDER_4_BIT: STD_LOGIC;
	signal MS_AUX_BIN_ADDER_4_BIT: STD_LOGIC;
	signal PS_AUX_BIN_ADDER_8_BIT: STD_LOGIC;
	signal MS_AUX_BIN_ADDER_8_BIT: STD_LOGIC;

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

	UUT: ALD_14_18_10_1_AUXILIARY_BINARY_ADDER_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_A4_DOT_B4_EVEN => PS_A4_DOT_B4_EVEN,
		MS_ZONE_ADDER_CARRY => MS_ZONE_ADDER_CARRY,
		PS_ZONE_ADDER_CARRY => PS_ZONE_ADDER_CARRY,
		PS_BIN_REG_4_DOT_NOT_8_OR_8_DOT_NOT_4 => PS_BIN_REG_4_DOT_NOT_8_OR_8_DOT_NOT_4,
		PS_AUX_BIN_ADDER_4_BIT => PS_AUX_BIN_ADDER_4_BIT,
		MS_AUX_BIN_ADDER_4_BIT => MS_AUX_BIN_ADDER_4_BIT,
		PS_AUX_BIN_ADDER_8_BIT => PS_AUX_BIN_ADDER_8_BIT,
		MS_AUX_BIN_ADDER_8_BIT => MS_AUX_BIN_ADDER_8_BIT);

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
   
   testName := "14.18.10.1        ";
   
   for Va in std_logic range '0' to '1' loop
      PS_A4_DOT_B4_EVEN <= Va;
      for Vc in std_logic range '0' to '1' loop
         PS_ZONE_ADDER_CARRY <= Vc;
         MS_ZONE_ADDER_CARRY <= NOT Vc;
         for Vd in std_logic range '0' to '1' loop
            PS_BIN_REG_4_DOT_NOT_8_OR_8_DOT_NOT_4 <= Vd;
            wait for 30 ns;
            check1(PS_AUX_BIN_ADDER_4_BIT,(Va and Vc) or (NOT Va and NOT Vc),testName,"1A");
            check1(MS_AUX_BIN_ADDER_4_BIT,NOT PS_AUX_BIN_ADDER_4_BIT,testName,"1B");
            check1(PS_AUX_BIN_ADDER_8_BIT,
                (Vd and NOT Va and Vc) or (NOT Vd and Va) or (not Vc and Not Vd),testName,"1C");
            check1(MS_AUX_BIN_ADDER_8_BIT,NOT PS_AUX_BIN_ADDER_8_BIT,testName,"1D");
         end loop;
      end loop;
   end loop;
   

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
