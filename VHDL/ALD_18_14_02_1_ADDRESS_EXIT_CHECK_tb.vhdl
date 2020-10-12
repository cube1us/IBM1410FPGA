-- Test Bench VHDL for IBM SMS ALD page 18.14.02.1
-- Title: ADDRESS EXIT CHECK
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/12/2020 12:45:01 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_14_02_1_ADDRESS_EXIT_CHECK_tb is
end ALD_18_14_02_1_ADDRESS_EXIT_CHECK_tb;

architecture behavioral of ALD_18_14_02_1_ADDRESS_EXIT_CHECK_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_18_14_02_1_ADDRESS_EXIT_CHECK
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		PS_AR_CH_VC_GROUP_ONE:	 in STD_LOGIC;
		MV_3RD_CHECK_TEST_SWITCH:	 in STD_LOGIC;
		PS_AR_CH_VC_GROUP_TWO:	 in STD_LOGIC;
		MS_START_RESET:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_ADDRESS_EXIT_ERROR:	 out STD_LOGIC;
		MS_ADDRESS_EXIT_SAMPLE:	 out STD_LOGIC;
		LAMP_15A1H19:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal PS_AR_CH_VC_GROUP_ONE: STD_LOGIC := '0';
	signal MV_3RD_CHECK_TEST_SWITCH: STD_LOGIC := '1';
	signal PS_AR_CH_VC_GROUP_TWO: STD_LOGIC := '0';
	signal MS_START_RESET: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';

	-- Outputs

	signal MS_ADDRESS_EXIT_ERROR: STD_LOGIC;
	signal MS_ADDRESS_EXIT_SAMPLE: STD_LOGIC;
	signal LAMP_15A1H19: STD_LOGIC;

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

   constant MX_X1A_POS: integer := 7;
   constant MX_X6A_POS: integer := 8;

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

	UUT: ALD_18_14_02_1_ADDRESS_EXIT_CHECK port map(
		FPGA_CLK => FPGA_CLK,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		PS_AR_CH_VC_GROUP_ONE => PS_AR_CH_VC_GROUP_ONE,
		MV_3RD_CHECK_TEST_SWITCH => MV_3RD_CHECK_TEST_SWITCH,
		PS_AR_CH_VC_GROUP_TWO => PS_AR_CH_VC_GROUP_TWO,
		MS_START_RESET => MS_START_RESET,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_ADDRESS_EXIT_ERROR => MS_ADDRESS_EXIT_ERROR,
		MS_ADDRESS_EXIT_SAMPLE => MS_ADDRESS_EXIT_SAMPLE,
		LAMP_15A1H19 => LAMP_15A1H19);

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
   variable tv: std_logic_vector(25 downto 0);
   variable a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "18.14.02.1        ";

   for tt in 0 to 2**5 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      f := tv(4);

      -- Reset the trigger
      MS_START_RESET <= '0';
      wait for 30 ns;
      MS_START_RESET <= '1';
      wait for 30 ns;
      
      check1(MS_ADDRESS_EXIT_ERROR,'1',testName,"Address Exit Error Loop Reset");
      check1(LAMP_15A1H19,'0',testName,"Address Exit Error Lamp Loop Reset");
      
      wait for 30 ns;

		PS_ERROR_SAMPLE <= a;
		PS_AR_CH_VC_GROUP_ONE <= b;
		MV_3RD_CHECK_TEST_SWITCH <= not c;
		PS_AR_CH_VC_GROUP_TWO <= d;
				
		PS_LOGIC_GATE_F_1 <= f;
		wait for 30 ns;
		check1(MS_ADDRESS_EXIT_SAMPLE, not f,testName,"-S Address Exit Sample");
		
		PS_LOGIC_GATE_F_1 <= '0';
		wait for 90 ns;
		
		-- Reset the variables that can set the trigger - should not affect trigger
      PS_AR_CH_VC_GROUP_ONE <= '0';
      MV_3RD_CHECK_TEST_SWITCH <= '1';
      PS_AR_CH_VC_GROUP_TWO <= '0';
      wait for 30 ns;
		
		check1(MS_ADDRESS_EXIT_ERROR,
		 not((c or (b and d) or (not b and not d)) and a and f),testName,
		    "Address Exit Error");
		    
	   check1(LAMP_15A1H19,not MS_ADDRESS_EXIT_ERROR,testName,"Address Exit Error Lamp");

		PS_ERROR_SAMPLE <= '0';
            
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 2 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
