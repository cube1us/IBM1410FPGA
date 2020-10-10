-- Test Bench VHDL for IBM SMS ALD page 17.15.01.1
-- Title: COMPARE MATRIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 1:27:30 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_15_01_1_COMPARE_MATRIX_tb is
end ALD_17_15_01_1_COMPARE_MATRIX_tb;

architecture behavioral of ALD_17_15_01_1_COMPARE_MATRIX_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_15_01_1_COMPARE_MATRIX
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CH_NOT_8_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_4_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_2_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_1_BIT:	 in STD_LOGIC;
		PS_A_CH_2_BIT:	 in STD_LOGIC;
		PS_A_CH_8_BIT:	 in STD_LOGIC;
		PS_A_CH_4_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_B_BIT:	 in STD_LOGIC;
		PS_A_CH_A_BIT:	 in STD_LOGIC;
		PS_A_CH_1_BIT:	 in STD_LOGIC;
		PS_A_CH_B_BIT:	 in STD_LOGIC;
		PS_A_CH_NOT_A_BIT:	 in STD_LOGIC;
		PS_NO_NU_A_CH:	 out STD_LOGIC;
		PS_SPL_CHAR_A_CH:	 out STD_LOGIC;
		PS_ALPH_A_CH:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A_CH_NOT_8_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_4_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_2_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_1_BIT: STD_LOGIC := '0';
	signal PS_A_CH_2_BIT: STD_LOGIC := '0';
	signal PS_A_CH_8_BIT: STD_LOGIC := '0';
	signal PS_A_CH_4_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_B_BIT: STD_LOGIC := '0';
	signal PS_A_CH_A_BIT: STD_LOGIC := '0';
	signal PS_A_CH_1_BIT: STD_LOGIC := '0';
	signal PS_A_CH_B_BIT: STD_LOGIC := '0';
	signal PS_A_CH_NOT_A_BIT: STD_LOGIC := '0';

	-- Outputs

	signal PS_NO_NU_A_CH: STD_LOGIC;
	signal PS_SPL_CHAR_A_CH: STD_LOGIC;
	signal PS_ALPH_A_CH: STD_LOGIC;

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

	UUT: ALD_17_15_01_1_COMPARE_MATRIX port map(
		FPGA_CLK => FPGA_CLK,
		PS_A_CH_NOT_8_BIT => PS_A_CH_NOT_8_BIT,
		PS_A_CH_NOT_4_BIT => PS_A_CH_NOT_4_BIT,
		PS_A_CH_NOT_2_BIT => PS_A_CH_NOT_2_BIT,
		PS_A_CH_NOT_1_BIT => PS_A_CH_NOT_1_BIT,
		PS_A_CH_2_BIT => PS_A_CH_2_BIT,
		PS_A_CH_8_BIT => PS_A_CH_8_BIT,
		PS_A_CH_4_BIT => PS_A_CH_4_BIT,
		PS_A_CH_NOT_B_BIT => PS_A_CH_NOT_B_BIT,
		PS_A_CH_A_BIT => PS_A_CH_A_BIT,
		PS_A_CH_1_BIT => PS_A_CH_1_BIT,
		PS_A_CH_B_BIT => PS_A_CH_B_BIT,
		PS_A_CH_NOT_A_BIT => PS_A_CH_NOT_A_BIT,
		PS_NO_NU_A_CH => PS_NO_NU_A_CH,
		PS_SPL_CHAR_A_CH => PS_SPL_CHAR_A_CH,
		PS_ALPH_A_CH => PS_ALPH_A_CH);

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

   testName := "17.15.01.1        ";

   for tt in 0 to 64 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      
      PS_A_CH_1_BIT <= tv(HDL_1_BIT);
      PS_A_CH_2_BIT <= tv(HDL_2_BIT);
      PS_A_CH_4_BIT <= tv(HDL_4_BIT);
      PS_A_CH_8_BIT <= tv(HDL_8_BIT);
      PS_A_CH_A_BIT <= tv(HDL_A_BIT);
      PS_A_CH_B_BIT <= tv(HDL_B_BIT);
      
      PS_A_CH_NOT_1_BIT <= not tv(HDL_1_BIT);
      PS_A_CH_NOT_2_BIT <= not tv(HDL_2_BIT);
      PS_A_CH_NOT_4_BIT <= not tv(HDL_4_BIT);
      PS_A_CH_NOT_8_BIT <= not tv(HDL_8_BIT);
      PS_A_CH_NOT_A_BIT <= not tv(HDL_A_BIT);
      PS_A_CH_NOT_B_BIT <= not tv(HDL_B_BIT);
      wait for 30 ns;

      a := PS_A_CH_NOT_8_BIT;
      b := PS_A_CH_NOT_4_BIT;
      c := PS_A_CH_NOT_2_BIT;
      d := PS_A_CH_NOT_1_BIT;
      e := PS_A_CH_2_BIT;
      f := PS_A_CH_8_BIT;
      g := PS_A_CH_4_BIT;
      h := PS_A_CH_NOT_B_BIT;
      j := PS_A_CH_A_BIT; 
      k := PS_A_CH_1_BIT;
      l := PS_A_CH_B_BIT;
      m := PS_A_CH_NOT_A_BIT;
      
      check1(PS_NO_NU_A_CH,a and b and c and d,testName,"No NU");
      check1(PS_SPL_CHAR_A_CH,
         (f and e and k) or (f and g) or (j and k and a and h and b and c),
         testName,"Spl Char");
      check1(PS_ALPH_A_CH,
         (m and a and k) or (l and k and a) or (a and e) or (f and b and c) or (b and d and e) or (g and a),
         testName,"Alpha");
      
      
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
