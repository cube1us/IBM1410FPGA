-- Test Bench VHDL for IBM SMS ALD page 17.15.03.1
-- Title: COMPARE MATRIX
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 2:15:44 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_15_03_1_COMPARE_MATRIX_tb is
end ALD_17_15_03_1_COMPARE_MATRIX_tb;

architecture behavioral of ALD_17_15_03_1_COMPARE_MATRIX_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_15_03_1_COMPARE_MATRIX
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ALPH_B_CH:	 in STD_LOGIC;
		PS_SPL_CHAR_B_CH:	 in STD_LOGIC;
		PS_NO_NU_B_CH:	 in STD_LOGIC;
		PS_ALPH_A_CH:	 in STD_LOGIC;
		PS_NO_NU_A_CH:	 in STD_LOGIC;
		PS_SPL_CHAR_A_CH:	 in STD_LOGIC;
		MS_ALPH_NO_NU:	 out STD_LOGIC;
		MS_ALPH_SPL_CHAR:	 out STD_LOGIC;
		PS_ALPH_OR_SPL_CHAR:	 out STD_LOGIC;
		MS_SPL_CHAR_ALPH:	 out STD_LOGIC;
		PS_SPL_CHAR_OR_NO_NU:	 out STD_LOGIC;
		MS_NO_NU_ALPH:	 out STD_LOGIC;
		PS_SPL_CHAR_NO_NU:	 out STD_LOGIC;
		PS_NO_NUMERICS:	 out STD_LOGIC;
		PS_NO_NU_SPL_CHAR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ALPH_B_CH: STD_LOGIC := '0';
	signal PS_SPL_CHAR_B_CH: STD_LOGIC := '0';
	signal PS_NO_NU_B_CH: STD_LOGIC := '0';
	signal PS_ALPH_A_CH: STD_LOGIC := '0';
	signal PS_NO_NU_A_CH: STD_LOGIC := '0';
	signal PS_SPL_CHAR_A_CH: STD_LOGIC := '0';

	-- Outputs

	signal MS_ALPH_NO_NU: STD_LOGIC;
	signal MS_ALPH_SPL_CHAR: STD_LOGIC;
	signal PS_ALPH_OR_SPL_CHAR: STD_LOGIC;
	signal MS_SPL_CHAR_ALPH: STD_LOGIC;
	signal PS_SPL_CHAR_OR_NO_NU: STD_LOGIC;
	signal MS_NO_NU_ALPH: STD_LOGIC;
	signal PS_SPL_CHAR_NO_NU: STD_LOGIC;
	signal PS_NO_NUMERICS: STD_LOGIC;
	signal PS_NO_NU_SPL_CHAR: STD_LOGIC;

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

	UUT: ALD_17_15_03_1_COMPARE_MATRIX port map(
		FPGA_CLK => FPGA_CLK,
		PS_ALPH_B_CH => PS_ALPH_B_CH,
		PS_SPL_CHAR_B_CH => PS_SPL_CHAR_B_CH,
		PS_NO_NU_B_CH => PS_NO_NU_B_CH,
		PS_ALPH_A_CH => PS_ALPH_A_CH,
		PS_NO_NU_A_CH => PS_NO_NU_A_CH,
		PS_SPL_CHAR_A_CH => PS_SPL_CHAR_A_CH,
		MS_ALPH_NO_NU => MS_ALPH_NO_NU,
		MS_ALPH_SPL_CHAR => MS_ALPH_SPL_CHAR,
		PS_ALPH_OR_SPL_CHAR => PS_ALPH_OR_SPL_CHAR,
		MS_SPL_CHAR_ALPH => MS_SPL_CHAR_ALPH,
		PS_SPL_CHAR_OR_NO_NU => PS_SPL_CHAR_OR_NO_NU,
		MS_NO_NU_ALPH => MS_NO_NU_ALPH,
		PS_SPL_CHAR_NO_NU => PS_SPL_CHAR_NO_NU,
		PS_NO_NUMERICS => PS_NO_NUMERICS,
		PS_NO_NU_SPL_CHAR => PS_NO_NU_SPL_CHAR);

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

   testName := "17.15.03.1        ";

   for tt in 0 to 2**6 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);

		PS_ALPH_B_CH <= a;
		PS_SPL_CHAR_B_CH <= b;
		PS_NO_NU_B_CH <= c;
		PS_ALPH_A_CH <= d;
		PS_NO_NU_A_CH <= e;
		PS_SPL_CHAR_A_CH <= f;
      
      wait for 30 ns;
      
		check1(MS_ALPH_NO_NU,not(a and e),testName,"Alph : No NU");
		check1(MS_ALPH_SPL_CHAR,not(a and f),testName,"Alph : Spl");
		check1(PS_ALPH_OR_SPL_CHAR,(a and d) or (f and b),testName,"Alph:Alph or Spl:Spl");
		check1(MS_SPL_CHAR_ALPH,not(d and b),testName,"Spl : Alph");
		check1(PS_SPL_CHAR_OR_NO_NU,(b and e) or (e and c) or (f and c),testName,
		 "Spl Char or No Nu");
		check1(MS_NO_NU_ALPH,not(d and c),testName,"No Nu : Alph");
		check1(PS_SPL_CHAR_NO_NU,b and e,testName,"Spl : No Nu");
		check1(PS_NO_NUMERICS,e and c,testName,"No Numerics");
		check1(PS_NO_NU_SPL_CHAR,f and c,testName,"No Nu : Spl");
      
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