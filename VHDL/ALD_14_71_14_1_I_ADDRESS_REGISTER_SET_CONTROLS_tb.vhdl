-- Test Bench VHDL for IBM SMS ALD page 14.71.14.1
-- Title: I ADDRESS REGISTER SET CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/5/2020 1:28:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS_tb is
end ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS_tb;

architecture behavioral of ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_LOGIC_GATE_B_OR_C:	 in STD_LOGIC;
		PS_I_CYCLE:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_OR_E_OR_F:	 in STD_LOGIC;
		MS_I_RING_OP_TIME:	 in STD_LOGIC;
		PS_B_CH_WM_BIT_2:	 in STD_LOGIC;
		MS_STORAGE_SCAN_ROUTINE:	 in STD_LOGIC;
		MS_1401_LAST_I_CYCLE:	 in STD_LOGIC;
		MV_CONS_ADDRESS_ENTRY_NORMAL_1:	 in STD_LOGIC;
		MS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		MV_STORAGE_SCAN_MODE_2:	 in STD_LOGIC;
		PS_SET_I_AR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_B_OR_C: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_D_OR_E_OR_F: STD_LOGIC := '0';
	signal MS_I_RING_OP_TIME: STD_LOGIC := '1';
	signal PS_B_CH_WM_BIT_2: STD_LOGIC := '0';
	signal MS_STORAGE_SCAN_ROUTINE: STD_LOGIC := '1';
	signal MS_1401_LAST_I_CYCLE: STD_LOGIC := '1';
	signal MV_CONS_ADDRESS_ENTRY_NORMAL_1: STD_LOGIC := '1';
	signal MS_STOPPED_AT_CYCLE_END: STD_LOGIC := '1';
	signal MV_STORAGE_SCAN_MODE_2: STD_LOGIC := '1';

	-- Outputs

	signal PS_SET_I_AR: STD_LOGIC;

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

	UUT: ALD_14_71_14_1_I_ADDRESS_REGISTER_SET_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		PS_LOGIC_GATE_B_OR_C => PS_LOGIC_GATE_B_OR_C,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_LOGIC_GATE_D_OR_E_OR_F => PS_LOGIC_GATE_D_OR_E_OR_F,
		MS_I_RING_OP_TIME => MS_I_RING_OP_TIME,
		PS_B_CH_WM_BIT_2 => PS_B_CH_WM_BIT_2,
		MS_STORAGE_SCAN_ROUTINE => MS_STORAGE_SCAN_ROUTINE,
		MS_1401_LAST_I_CYCLE => MS_1401_LAST_I_CYCLE,
		MV_CONS_ADDRESS_ENTRY_NORMAL_1 => MV_CONS_ADDRESS_ENTRY_NORMAL_1,
		MS_STOPPED_AT_CYCLE_END => MS_STOPPED_AT_CYCLE_END,
		MV_STORAGE_SCAN_MODE_2 => MV_STORAGE_SCAN_MODE_2,
		PS_SET_I_AR => PS_SET_I_AR);

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
