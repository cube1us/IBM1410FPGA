-- Test BenchVHDL for IBM SMS ALD group BDataRegFrom2ndMem
-- Title: BDataRegFrom2ndMem
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 10/22/2020 8:50:41 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity BDataRegFrom2ndMem_tb is
end BDataRegFrom2ndMem_tb;

architecture behavioral of BDataRegFrom2ndMem_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component BDataRegFrom2ndMem
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS: in STD_LOGIC_VECTOR (7 downTo 0);
		PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_B_DATA_REG_STAR_0_STAR_Z_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_DATA_REG_STAR_1_STAR_Z_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_DATA_REG_STAR_2_STAR_Z_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
	signal PS_B_DATA_REG_STAR_3_STAR_Z_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

	-- Outputs

	signal PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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
      
procedure checkChar(
        checked: in STD_LOGIC_VECTOR(7 downto 0);
        val: in STD_LOGIC_VECTOR(7 downto 0);
        testname: in string;
        test: in string) is
        begin
           for thebit in 0 to 7 loop
             assert checked(thebit) = val(thebit) report
                testname & " (" & test & ") bit " & Integer'image(thebit) & " failed." severity failure; 
           end loop;
        end procedure;


   -- Your test bench declarations go here

-- END USER TEST BENCH DECLARATIONS
   

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: BDataRegFrom2ndMem port map(
		FPGA_CLK => FPGA_CLK,
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS => PS_B_DATA_REG_STAR_0_STAR_Z_BUS,
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS => PS_B_DATA_REG_STAR_1_STAR_Z_BUS,
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS => PS_B_DATA_REG_STAR_2_STAR_Z_BUS,
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS => PS_B_DATA_REG_STAR_3_STAR_Z_BUS,
		PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS => PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS);

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

   testName := "39.50.60.1        ";  -- NOTE:  Remove X when editing to set correct length!

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
      
		PS_B_DATA_REG_STAR_0_STAR_Z_BUS <= tv(7 downto 0);
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS <= "00000000";
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS <= "00000000";
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS <= "00000000";
      wait for 30 ns;

      checkChar(PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS,tv(7 downto 0),testName,"B Data Reg *0*");
      
		PS_B_DATA_REG_STAR_1_STAR_Z_BUS <= tv(7 downto 0);
      PS_B_DATA_REG_STAR_0_STAR_Z_BUS <= "00000000";
      PS_B_DATA_REG_STAR_2_STAR_Z_BUS <= "00000000";
      PS_B_DATA_REG_STAR_3_STAR_Z_BUS <= "00000000";
      wait for 30 ns;

      checkChar(PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS,tv(7 downto 0),testName,"B Data Reg *1*");
      
		PS_B_DATA_REG_STAR_2_STAR_Z_BUS <= tv(7 downto 0);
      PS_B_DATA_REG_STAR_0_STAR_Z_BUS <= "00000000";
      PS_B_DATA_REG_STAR_1_STAR_Z_BUS <= "00000000";
      PS_B_DATA_REG_STAR_3_STAR_Z_BUS <= "00000000";
      wait for 30 ns;

      checkChar(PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS,tv(7 downto 0),testName,"B Data REg *2*");
      
		PS_B_DATA_REG_STAR_3_STAR_Z_BUS <= tv(7 downto 0);
      PS_B_DATA_REG_STAR_0_STAR_Z_BUS <= "00000000";
      PS_B_DATA_REG_STAR_1_STAR_Z_BUS <= "00000000";
      PS_B_DATA_REG_STAR_2_STAR_Z_BUS <= "00000000";
      wait for 30 ns;

      checkChar(PS_B_DATA_REG_STAR_FROM_M2_STAR_BUS,tv(7 downto 0),testName,"B Data REg *3*");

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
   

END;
