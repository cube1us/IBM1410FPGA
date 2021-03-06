-- Test Bench VHDL for IBM SMS ALD page 17.15.04.1
-- Title: COMPARE MATRIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 2:41:32 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_15_04_1_COMPARE_MATRIX_tb is
end ALD_17_15_04_1_COMPARE_MATRIX_tb;

architecture behavioral of ALD_17_15_04_1_COMPARE_MATRIX_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_15_04_1_COMPARE_MATRIX
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CH_B_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_A_CH_A_BIT:	 in STD_LOGIC;
		PS_B_CH_NOT_A_BIT:	 in STD_LOGIC;
		PS_B_CH_B_BIT:	 in STD_LOGIC;
		PS_B_CH_A_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_A_BIT:	 in STD_LOGIC;
		PS_HI_ZONE:	 out STD_LOGIC;
		PS_CMP_ZONE_EQUAL:	 out STD_LOGIC;
		MS_CMP_ZONE_UNEQUAL:	 out STD_LOGIC;
		PS_LOW_ZONE:	 out STD_LOGIC;
		PS_ZONES:	 out STD_LOGIC;
		PS_NO_ZONES:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A_CH_B_BIT: STD_LOGIC := '0';
	signal PS_B_CH_NOT_B_BIT: STD_LOGIC := '0';
	signal PS_A_CH_A_BIT: STD_LOGIC := '0';
	signal PS_B_CH_NOT_A_BIT: STD_LOGIC := '0';
	signal PS_B_CH_B_BIT: STD_LOGIC := '0';
	signal PS_B_CH_A_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_B_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_A_BIT: STD_LOGIC := '0';

	-- Outputs

	signal PS_HI_ZONE: STD_LOGIC;
	signal PS_CMP_ZONE_EQUAL: STD_LOGIC;
	signal MS_CMP_ZONE_UNEQUAL: STD_LOGIC;
	signal PS_LOW_ZONE: STD_LOGIC;
	signal PS_ZONES: STD_LOGIC;
	signal PS_NO_ZONES: STD_LOGIC;

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

	UUT: ALD_17_15_04_1_COMPARE_MATRIX port map(
		FPGA_CLK => FPGA_CLK,
		PS_A_CH_B_BIT => PS_A_CH_B_BIT,
		PS_B_CH_NOT_B_BIT => PS_B_CH_NOT_B_BIT,
		PS_A_CH_A_BIT => PS_A_CH_A_BIT,
		PS_B_CH_NOT_A_BIT => PS_B_CH_NOT_A_BIT,
		PS_B_CH_B_BIT => PS_B_CH_B_BIT,
		PS_B_CH_A_BIT => PS_B_CH_A_BIT,
		PS_A_CH_NOT_B_BIT => PS_A_CH_NOT_B_BIT,
		PS_A_CH_NOT_A_BIT => PS_A_CH_NOT_A_BIT,
		PS_HI_ZONE => PS_HI_ZONE,
		PS_CMP_ZONE_EQUAL => PS_CMP_ZONE_EQUAL,
		MS_CMP_ZONE_UNEQUAL => MS_CMP_ZONE_UNEQUAL,
		PS_LOW_ZONE => PS_LOW_ZONE,
		PS_ZONES => PS_ZONES,
		PS_NO_ZONES => PS_NO_ZONES);

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
   
   variable aa, notaa, ab, notab, ba, notba, bb, notbb: std_logic;

   begin

   -- Your test bench code

   testName := "17.15.04.1        ";

   for tt in 0 to 2**4 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));

		PS_A_CH_A_BIT <= tv(0);
		PS_A_CH_NOT_A_BIT <= not tv(0);
		aa := tv(0);
		notaa := not tv(0);

   	PS_A_CH_B_BIT <= tv(1);
		PS_A_CH_NOT_B_BIT <= not tv(1);
		ab := tv(1);
		notab := not tv(1);

		PS_B_CH_A_BIT <= tv(2);
		PS_B_CH_NOT_A_BIT <= not tv(2);
		ba := tv(2);
		notba := not tv(2);

		PS_B_CH_B_BIT <= tv(3);
		PS_B_CH_NOT_B_BIT <= not tv(3);
		bb := tv(3);
		notbb := not tv(3);
		
		g1 := ab and notbb;
		g2 := aa and notba;
		g3 := ab and bb;
		g4 := notbb and notab;
		g5 := notba and notaa;
		g6 := aa and ba;
		g7 := ba and not aa;
		g8 := bb and notab;
		
		wait for 30 ns;
		
		check1(PS_HI_ZONE,g1 or (g2 and (g3 or g4)),testName,"High Zone");
		check1(PS_CMP_ZONE_EQUAL,(g3 or g4) and (g5 or g6),testName,"CMP Zone Equal");
		check1(MS_CMP_ZONE_UNEQUAL,not(PS_HI_ZONE or PS_LOW_ZONE),testName,"CMP Zone Unequal");
		check1(PS_LOW_ZONE,g8 or (g7 and(g3 or g4)),testName,"Low Zone");
		check1(PS_ZONES,(aa or ab) and (ba or bb),testName,"Zones");
		check1(PS_NO_ZONES,(notaa and notab) or (notba and notbb),testName,"No Zones");
      
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
