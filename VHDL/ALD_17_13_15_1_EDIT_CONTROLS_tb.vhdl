-- Test Bench VHDL for IBM SMS ALD page 17.13.15.1
-- Title: EDIT CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/8/2020 8:46:52 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_13_15_1_EDIT_CONTROLS_tb is
end ALD_17_13_15_1_EDIT_CONTROLS_tb;

architecture behavioral of ALD_17_13_15_1_EDIT_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_13_15_1_EDIT_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_MQ_LATCH:	 in STD_LOGIC;
		PS_2ND_SCAN:	 in STD_LOGIC;
		PS_E_OR_Z_OP_DOT_B_CYCLE:	 in STD_LOGIC;
		PS_EXTENSION_LATCH:	 in STD_LOGIC;
		PS_3RD_SCAN:	 in STD_LOGIC;
		PS_E_OP_DOT_B_CYCLE_2:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		MS_EDIT_SKID_CYCLE:	 out STD_LOGIC;
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION:	 out STD_LOGIC;
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION:	 out STD_LOGIC;
		MS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION:	 out STD_LOGIC;
		PS_E_OP_DOT_B_CY_DOT_1ST_SCAN:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_MQ_LATCH: STD_LOGIC := '0';
	signal PS_2ND_SCAN: STD_LOGIC := '0';
	signal PS_E_OR_Z_OP_DOT_B_CYCLE: STD_LOGIC := '0';
	signal PS_EXTENSION_LATCH: STD_LOGIC := '0';
	signal PS_3RD_SCAN: STD_LOGIC := '0';
	signal PS_E_OP_DOT_B_CYCLE_2: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';

	-- Outputs

	signal MS_EDIT_SKID_CYCLE: STD_LOGIC;
	signal PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION: STD_LOGIC;
	signal PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION: STD_LOGIC;
	signal MS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION: STD_LOGIC;
	signal PS_E_OP_DOT_B_CY_DOT_1ST_SCAN: STD_LOGIC;

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

	UUT: ALD_17_13_15_1_EDIT_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		PS_MQ_LATCH => PS_MQ_LATCH,
		PS_2ND_SCAN => PS_2ND_SCAN,
		PS_E_OR_Z_OP_DOT_B_CYCLE => PS_E_OR_Z_OP_DOT_B_CYCLE,
		PS_EXTENSION_LATCH => PS_EXTENSION_LATCH,
		PS_3RD_SCAN => PS_3RD_SCAN,
		PS_E_OP_DOT_B_CYCLE_2 => PS_E_OP_DOT_B_CYCLE_2,
		PS_1ST_SCAN => PS_1ST_SCAN,
		MS_EDIT_SKID_CYCLE => MS_EDIT_SKID_CYCLE,
		PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION => PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION,
		PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION => PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION,
		MS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION => MS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION,
		PS_E_OP_DOT_B_CY_DOT_1ST_SCAN => PS_E_OP_DOT_B_CY_DOT_1ST_SCAN);

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

   testName := "17.13.15.1        ";

   for tt in 0 to 2**7 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);

		PS_MQ_LATCH <= a;
		PS_2ND_SCAN <= b;
		PS_E_OR_Z_OP_DOT_B_CYCLE <= c;
		PS_EXTENSION_LATCH <= d;
		PS_3RD_SCAN <= e;
		PS_E_OP_DOT_B_CYCLE_2 <= f;
		PS_1ST_SCAN <= g;
      
      wait for 30 ns;
      
      check1(MS_EDIT_SKID_CYCLE,not(a and c),testName,"Edit Skid Cycle");
      check1(PS_E_OR_Z_DOT_2ND_SCAN_DOT_EXTENSION,c and b and d,testName,"E Or Z.2nd Scan.Extension");
      check1(PS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION,c and d and e,testName,"+S E Or Z.3rd Scan.Extension");
      check1(MS_E_OR_Z_DOT_3RD_SCAN_DOT_EXTENSION,not(c and d and e),testName,"-S E Or Z.3rd Scan.Extension");
      check1(PS_E_OP_DOT_B_CY_DOT_1ST_SCAN,f and g,testName,"E Op.B Cy.1St Scan");
      
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