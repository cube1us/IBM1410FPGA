-- Test Bench VHDL for IBM SMS ALD page 40.10.02.1
-- Title: CONSOLE TAPE DENSITY SWITCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/22/2020 4:15:28 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_40_10_02_1_CONSOLE_TAPE_DENSITY_SWITCHES_tb is
end ALD_40_10_02_1_CONSOLE_TAPE_DENSITY_SWITCHES_tb;

architecture behavioral of ALD_40_10_02_1_CONSOLE_TAPE_DENSITY_SWITCHES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_40_10_02_1_CONSOLE_TAPE_DENSITY_SWITCHES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		SWITCH_TOG_CH_1:	 in STD_LOGIC;
		SWITCH_TOG_CH_2:	 in STD_LOGIC;
		PS_DENSITY_SW_556_OR_200_CH_1:	 out STD_LOGIC;
		PS_DENSITY_SW_800_OR_556_CH_1:	 out STD_LOGIC;
		PS_DENSITY_SW_556_OR_200_CH_2:	 out STD_LOGIC;
		PS_DENSITY_SW_800_OR_556_CH_2:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal GROUND: STD_LOGIC := '0';
	signal SWITCH_TOG_CH_1: STD_LOGIC := '0';
	signal SWITCH_TOG_CH_2: STD_LOGIC := '0';

	-- Outputs

	signal PS_DENSITY_SW_556_OR_200_CH_1: STD_LOGIC;
	signal PS_DENSITY_SW_800_OR_556_CH_1: STD_LOGIC;
	signal PS_DENSITY_SW_556_OR_200_CH_2: STD_LOGIC;
	signal PS_DENSITY_SW_800_OR_556_CH_2: STD_LOGIC;

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

	UUT: ALD_40_10_02_1_CONSOLE_TAPE_DENSITY_SWITCHES port map(
		FPGA_CLK => FPGA_CLK,
		GROUND => GROUND,
		SWITCH_TOG_CH_1 => SWITCH_TOG_CH_1,
		SWITCH_TOG_CH_2 => SWITCH_TOG_CH_2,
		PS_DENSITY_SW_556_OR_200_CH_1 => PS_DENSITY_SW_556_OR_200_CH_1,
		PS_DENSITY_SW_800_OR_556_CH_1 => PS_DENSITY_SW_800_OR_556_CH_1,
		PS_DENSITY_SW_556_OR_200_CH_2 => PS_DENSITY_SW_556_OR_200_CH_2,
		PS_DENSITY_SW_800_OR_556_CH_2 => PS_DENSITY_SW_800_OR_556_CH_2);

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

   testName := "40.10.02.1        ";

   for tt in 0 to 2**2 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);

		SWITCH_TOG_CH_1 <= a;
		SWITCH_TOG_CH_2 <= b;
		      
      wait for 30 ns;
      
		check1(PS_DENSITY_SW_556_OR_200_CH_1,not a,testName,"556 Ch 1");
		check1(PS_DENSITY_SW_800_OR_556_CH_1,a,testName,"800 Ch 1");

		check1(PS_DENSITY_SW_556_OR_200_CH_2,not b,testName,"556 Ch 2");
		check1(PS_DENSITY_SW_800_OR_556_CH_2,b,testName,"800 Ch 2");
      
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
