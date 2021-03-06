-- Test Bench VHDL for IBM SMS ALD page 41.50.01.1
-- Title: ADDRESS REGISTER DISPLAY-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/24/2020 8:52:14 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_41_50_01_1_ADDRESS_REGISTER_DISPLAY_ACC_tb is
end ALD_41_50_01_1_ADDRESS_REGISTER_DISPLAY_ACC_tb;

architecture behavioral of ALD_41_50_01_1_ADDRESS_REGISTER_DISPLAY_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_41_50_01_1_ADDRESS_REGISTER_DISPLAY_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_STOPPED_AT_CYCLE_END:	 in STD_LOGIC;
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS:	 in STD_LOGIC;
		MS_CE_ADDR_REG_READ_OUT:	 in STD_LOGIC;
		MS_CONS_ADDR_REG_EXIT_GATE:	 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		PS_CONS_MX_X1_POS:	 in STD_LOGIC;
		PS_CONS_MX_X2_POS:	 in STD_LOGIC;
		PS_CONS_STOP_PRINT_LATCH:	 in STD_LOGIC;
		PS_CONS_MX_X3_POS:	 in STD_LOGIC;
		MV_CE_ADDRESS_RO_ENABLE:	 out STD_LOGIC;
		MS_CONSOLE_INHIBIT_AR_RO:	 out STD_LOGIC;
		MS_CONSOLE_RO_IAR:	 out STD_LOGIC;
		MS_CONSOLE_RO_AAR:	 out STD_LOGIC;
		MS_CONSOLE_RO_BAR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_STOPPED_AT_CYCLE_END: STD_LOGIC := '1';
	signal PP_SPECIAL_OR_12V_FOR_REL_DRIVERS: STD_LOGIC := '0';
	signal MS_CE_ADDR_REG_READ_OUT: STD_LOGIC := '1';
	signal MS_CONS_ADDR_REG_EXIT_GATE: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal PS_CONS_MX_X1_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_X2_POS: STD_LOGIC := '0';
	signal PS_CONS_STOP_PRINT_LATCH: STD_LOGIC := '0';
	signal PS_CONS_MX_X3_POS: STD_LOGIC := '0';

	-- Outputs

	signal MV_CE_ADDRESS_RO_ENABLE: STD_LOGIC;
	signal MS_CONSOLE_INHIBIT_AR_RO: STD_LOGIC;
	signal MS_CONSOLE_RO_IAR: STD_LOGIC;
	signal MS_CONSOLE_RO_AAR: STD_LOGIC;
	signal MS_CONSOLE_RO_BAR: STD_LOGIC;

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

	UUT: ALD_41_50_01_1_ADDRESS_REGISTER_DISPLAY_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_STOPPED_AT_CYCLE_END => MS_STOPPED_AT_CYCLE_END,
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS => PP_SPECIAL_OR_12V_FOR_REL_DRIVERS,
		MS_CE_ADDR_REG_READ_OUT => MS_CE_ADDR_REG_READ_OUT,
		MS_CONS_ADDR_REG_EXIT_GATE => MS_CONS_ADDR_REG_EXIT_GATE,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		PS_CONS_MX_X1_POS => PS_CONS_MX_X1_POS,
		PS_CONS_MX_X2_POS => PS_CONS_MX_X2_POS,
		PS_CONS_STOP_PRINT_LATCH => PS_CONS_STOP_PRINT_LATCH,
		PS_CONS_MX_X3_POS => PS_CONS_MX_X3_POS,
		MV_CE_ADDRESS_RO_ENABLE => MV_CE_ADDRESS_RO_ENABLE,
		MS_CONSOLE_INHIBIT_AR_RO => MS_CONSOLE_INHIBIT_AR_RO,
		MS_CONSOLE_RO_IAR => MS_CONSOLE_RO_IAR,
		MS_CONSOLE_RO_AAR => MS_CONSOLE_RO_AAR,
		MS_CONSOLE_RO_BAR => MS_CONSOLE_RO_BAR);

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

   testName := "41.50.01.1        ";

   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      c := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      h := tv(6);
      j := tv(7);

		MS_STOPPED_AT_CYCLE_END <= not a;
		PP_SPECIAL_OR_12V_FOR_REL_DRIVERS <= '1'; -- Special - logic 1 given how HDL generates
		MS_CE_ADDR_REG_READ_OUT <= not c;
		MS_CONS_ADDR_REG_EXIT_GATE <= not d;
		MS_PROGRAM_RESET_4 <= not e;
		PS_CONS_MX_X1_POS <= f;
		PS_CONS_MX_X2_POS <= g;
		PS_CONS_STOP_PRINT_LATCH <= h;
		PS_CONS_MX_X3_POS <= j;
		wait for 30 ns;
		
		check1(MV_CE_ADDRESS_RO_ENABLE,not(a),testName,"CE Addr RO Enable");
      check1(MS_CONSOLE_INHIBIT_AR_RO,not(c or d or e),testName,"Console Inhibit AR RO");
      check1(MS_CONSOLE_RO_IAR,not(f and h),testName,"Console RO IAR");
      check1(MS_CONSOLE_RO_AAR,not(g and h),testName,"Console RO AAR");
      check1(MS_CONSOLE_RO_BAR,not(j and h),testName,"Console RO BAR");
		      
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
