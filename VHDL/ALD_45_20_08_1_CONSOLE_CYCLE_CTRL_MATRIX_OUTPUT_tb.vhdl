-- Test Bench VHDL for IBM SMS ALD page 45.20.08.1
-- Title: CONSOLE CYCLE CTRL MATRIX OUTPUT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/30/2020 2:38:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_20_08_1_CONSOLE_CYCLE_CTRL_MATRIX_OUTPUT_tb is
end ALD_45_20_08_1_CONSOLE_CYCLE_CTRL_MATRIX_OUTPUT_tb;

architecture behavioral of ALD_45_20_08_1_CONSOLE_CYCLE_CTRL_MATRIX_OUTPUT_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_20_08_1_CONSOLE_CYCLE_CTRL_MATRIX_OUTPUT
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_CONS_MX_Y2_POS:	 in STD_LOGIC;
		PS_CONS_MX_Y3_POS:	 in STD_LOGIC;
		PS_CONS_MX_X5_POS:	 in STD_LOGIC;
		PS_CONS_MX_Y4_POS:	 in STD_LOGIC;
		PS_CONS_MX_Y1_POS:	 in STD_LOGIC;
		PS_CONS_MX_Y5_POS:	 in STD_LOGIC;
		PS_CONS_MX_Y6_POS:	 in STD_LOGIC;
		PS_CONS_MX_X6_POS:	 in STD_LOGIC;
		MS_CONS_MX_25_POS:	 out STD_LOGIC;
		PS_CONS_MX_26_POS:	 out STD_LOGIC;
		PS_CONS_MX_27_POS:	 out STD_LOGIC;
		PS_CONS_MX_28_POS:	 out STD_LOGIC;
		MS_CONS_MX_28_POS:	 out STD_LOGIC;
		PS_CONS_MX_29_POS:	 out STD_LOGIC;
		MS_CONS_MX_29_POS:	 out STD_LOGIC;
		PS_CONS_MX_30_POS:	 out STD_LOGIC;
		MS_CONS_MX_30_POS:	 out STD_LOGIC;
		MS_CONS_MX_31_POS:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_CONS_MX_Y2_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_Y3_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_X5_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_Y4_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_Y1_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_Y5_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_Y6_POS: STD_LOGIC := '0';
	signal PS_CONS_MX_X6_POS: STD_LOGIC := '0';

	-- Outputs

	signal MS_CONS_MX_25_POS: STD_LOGIC;
	signal PS_CONS_MX_26_POS: STD_LOGIC;
	signal PS_CONS_MX_27_POS: STD_LOGIC;
	signal PS_CONS_MX_28_POS: STD_LOGIC;
	signal MS_CONS_MX_28_POS: STD_LOGIC;
	signal PS_CONS_MX_29_POS: STD_LOGIC;
	signal MS_CONS_MX_29_POS: STD_LOGIC;
	signal PS_CONS_MX_30_POS: STD_LOGIC;
	signal MS_CONS_MX_30_POS: STD_LOGIC;
	signal MS_CONS_MX_31_POS: STD_LOGIC;

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

	UUT: ALD_45_20_08_1_CONSOLE_CYCLE_CTRL_MATRIX_OUTPUT port map(
		FPGA_CLK => FPGA_CLK,
		PS_CONS_MX_Y2_POS => PS_CONS_MX_Y2_POS,
		PS_CONS_MX_Y3_POS => PS_CONS_MX_Y3_POS,
		PS_CONS_MX_X5_POS => PS_CONS_MX_X5_POS,
		PS_CONS_MX_Y4_POS => PS_CONS_MX_Y4_POS,
		PS_CONS_MX_Y1_POS => PS_CONS_MX_Y1_POS,
		PS_CONS_MX_Y5_POS => PS_CONS_MX_Y5_POS,
		PS_CONS_MX_Y6_POS => PS_CONS_MX_Y6_POS,
		PS_CONS_MX_X6_POS => PS_CONS_MX_X6_POS,
		MS_CONS_MX_25_POS => MS_CONS_MX_25_POS,
		PS_CONS_MX_26_POS => PS_CONS_MX_26_POS,
		PS_CONS_MX_27_POS => PS_CONS_MX_27_POS,
		PS_CONS_MX_28_POS => PS_CONS_MX_28_POS,
		MS_CONS_MX_28_POS => MS_CONS_MX_28_POS,
		PS_CONS_MX_29_POS => PS_CONS_MX_29_POS,
		MS_CONS_MX_29_POS => MS_CONS_MX_29_POS,
		PS_CONS_MX_30_POS => PS_CONS_MX_30_POS,
		MS_CONS_MX_30_POS => MS_CONS_MX_30_POS,
		MS_CONS_MX_31_POS => MS_CONS_MX_31_POS);

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

   testName := "45.20.08.1        ";

   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);

		PS_CONS_MX_Y2_POS <= a;
		PS_CONS_MX_Y3_POS <= b;
		PS_CONS_MX_X5_POS <= c;
		PS_CONS_MX_Y4_POS <= d;
		PS_CONS_MX_Y1_POS <= e;
		PS_CONS_MX_Y5_POS <= f;
		PS_CONS_MX_Y6_POS <= g;
		PS_CONS_MX_X6_POS <= h;
      
      wait for 30 ns;

		check1(MS_CONS_MX_25_POS,not(e and c),testName,"-S CONS MX 25 POS");
		check1(PS_CONS_MX_26_POS,a and c,testName,"+S CONS MX 26 POS");
		check1(PS_CONS_MX_27_POS,b and c,testName,"+S CONS MX 27 POS");
		check1(PS_CONS_MX_28_POS,d and c,testName,"+S CONS MX 28 POS");
		check1(MS_CONS_MX_28_POS,not(d and c),testName,"-S CONS MX 28 POS");
		check1(PS_CONS_MX_29_POS,f and c,testName,"+S CONS MX 29 POS");
		check1(MS_CONS_MX_29_POS,not(f and c),testName,"-S CONS MX 29 POS");
		check1(PS_CONS_MX_30_POS,g and c,testName,"+S CONS MX 30 POS");
		check1(MS_CONS_MX_30_POS,not(g and c),testName,"-S CONS MX 30 POS");
		check1(MS_CONS_MX_31_POS,not(h and e),testName,"-S CONS MX 31 POS");
      
      
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