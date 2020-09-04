-- Test BenchVHDL for IBM SMS ALD group ADDRRegSetTtoTTHP
-- Title: ADDRRegSetTtoTTHP
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/4/2020 12:51:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ADDRRegSetTtoTTHP_tb is
end ADDRRegSetTtoTTHP_tb;

architecture behavioral of ADDRRegSetTtoTTHP_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ADDRRegSetTtoTTHP
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_LOGIC_GATE_C_1: in STD_LOGIC;
		PS_LOGIC_GATE_H: in STD_LOGIC;
		MS_LOGIC_GATE_T: in STD_LOGIC;
		PS_LOGIC_GATE_A_OR_R: in STD_LOGIC;
		PS_I_RING_4_OR_9_TIME: in STD_LOGIC;
		PS_I_CYCLE: in STD_LOGIC;
		PS_X_CYCLE: in STD_LOGIC;
		PS_2ND_CLOCK_PULSE_4: in STD_LOGIC;
		PS_CONSOLE_STROBE_GTD: in STD_LOGIC;
		PS_CONS_CLOCK_2_POS: in STD_LOGIC;
		MS_LOGIC_GATE_D_1: in STD_LOGIC;
		MS_LOGIC_GATE_U: in STD_LOGIC;
		PS_I_RING_3_OR_8_TIME: in STD_LOGIC;
		MS_LOGIC_GATE_E_1: in STD_LOGIC;
		PS_LOGIC_GATE_J: in STD_LOGIC;
		MS_LOGIC_GATE_V: in STD_LOGIC;
		PS_I_RING_5_OR_10_TIME: in STD_LOGIC;
		PS_I_RING_2_OR_7_TIME: in STD_LOGIC;
		MS_LOGIC_GATE_F_1: in STD_LOGIC;
		PS_LOGIC_GATE_K: in STD_LOGIC;
		MS_LOGIC_GATE_W: in STD_LOGIC;
		PS_I_RING_1_OR_6_TIME: in STD_LOGIC;
		PS_A_RING_BUS: in STD_LOGIC_VECTOR (6 downTo 1);
		PS_CONS_MX_Y_POS_BUS: in STD_LOGIC_VECTOR (6 downTo 1);
		PS_SET_AR_T_POS: out STD_LOGIC;
		PS_SET_AR_H_POS: out STD_LOGIC;
		PS_SET_AR_TH_POS: out STD_LOGIC;
		PS_SET_AR_TTH_POS: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_C_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_H: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_T: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_A_OR_R: STD_LOGIC := '0';
	signal PS_I_RING_4_OR_9_TIME: STD_LOGIC := '0';
	signal PS_I_CYCLE: STD_LOGIC := '0';
	signal PS_X_CYCLE: STD_LOGIC := '0';
	signal PS_2ND_CLOCK_PULSE_4: STD_LOGIC := '0';
	signal PS_CONSOLE_STROBE_GTD: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_2_POS: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_D_1: STD_LOGIC := '1';
	signal MS_LOGIC_GATE_U: STD_LOGIC := '1';
	signal PS_I_RING_3_OR_8_TIME: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_E_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_J: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_V: STD_LOGIC := '1';
	signal PS_I_RING_5_OR_10_TIME: STD_LOGIC := '0';
	signal PS_I_RING_2_OR_7_TIME: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_F_1: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_K: STD_LOGIC := '0';
	signal MS_LOGIC_GATE_W: STD_LOGIC := '1';
	signal PS_I_RING_1_OR_6_TIME: STD_LOGIC := '0';
	signal PS_A_RING_BUS: STD_LOGIC_VECTOR (6 downTo 1) := "000000";
	signal PS_CONS_MX_Y_POS_BUS: STD_LOGIC_VECTOR (6 downTo 1) := "000000";

	-- Outputs

	signal PS_SET_AR_T_POS: STD_LOGIC;
	signal PS_SET_AR_H_POS: STD_LOGIC;
	signal PS_SET_AR_TH_POS: STD_LOGIC;
	signal PS_SET_AR_TTH_POS: STD_LOGIC;

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

	UUT: ADDRRegSetTtoTTHP port map(
		FPGA_CLK => FPGA_CLK,
		MS_LOGIC_GATE_C_1 => MS_LOGIC_GATE_C_1,
		PS_LOGIC_GATE_H => PS_LOGIC_GATE_H,
		MS_LOGIC_GATE_T => MS_LOGIC_GATE_T,
		PS_LOGIC_GATE_A_OR_R => PS_LOGIC_GATE_A_OR_R,
		PS_I_RING_4_OR_9_TIME => PS_I_RING_4_OR_9_TIME,
		PS_I_CYCLE => PS_I_CYCLE,
		PS_X_CYCLE => PS_X_CYCLE,
		PS_2ND_CLOCK_PULSE_4 => PS_2ND_CLOCK_PULSE_4,
		PS_CONSOLE_STROBE_GTD => PS_CONSOLE_STROBE_GTD,
		PS_CONS_CLOCK_2_POS => PS_CONS_CLOCK_2_POS,
		MS_LOGIC_GATE_D_1 => MS_LOGIC_GATE_D_1,
		MS_LOGIC_GATE_U => MS_LOGIC_GATE_U,
		PS_I_RING_3_OR_8_TIME => PS_I_RING_3_OR_8_TIME,
		MS_LOGIC_GATE_E_1 => MS_LOGIC_GATE_E_1,
		PS_LOGIC_GATE_J => PS_LOGIC_GATE_J,
		MS_LOGIC_GATE_V => MS_LOGIC_GATE_V,
		PS_I_RING_5_OR_10_TIME => PS_I_RING_5_OR_10_TIME,
		PS_I_RING_2_OR_7_TIME => PS_I_RING_2_OR_7_TIME,
		MS_LOGIC_GATE_F_1 => MS_LOGIC_GATE_F_1,
		PS_LOGIC_GATE_K => PS_LOGIC_GATE_K,
		MS_LOGIC_GATE_W => MS_LOGIC_GATE_W,
		PS_I_RING_1_OR_6_TIME => PS_I_RING_1_OR_6_TIME,
		PS_A_RING_BUS => PS_A_RING_BUS,
		PS_CONS_MX_Y_POS_BUS => PS_CONS_MX_Y_POS_BUS,
		PS_SET_AR_T_POS => PS_SET_AR_T_POS,
		PS_SET_AR_H_POS => PS_SET_AR_H_POS,
		PS_SET_AR_TH_POS => PS_SET_AR_TH_POS,
		PS_SET_AR_TTH_POS => PS_SET_AR_TTH_POS);

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
   

END;
