-- Test Bench VHDL for IBM SMS ALD page 14.50.08.1
-- Title: INDEX REQUIRED GENERATION-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 9/1/2020 1:55:49 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_50_08_1_INDEX_REQUIRED_GENERATION_ACC_tb is
end ALD_14_50_08_1_INDEX_REQUIRED_GENERATION_ACC_tb;

architecture behavioral of ALD_14_50_08_1_INDEX_REQUIRED_GENERATION_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_50_08_1_INDEX_REQUIRED_GENERATION_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_H_POS_B_INDEX_TAG:	 in STD_LOGIC;
		MS_H_POS_A_INDEX_TAG:	 in STD_LOGIC;
		PS_H_POS_C_INDEX_TAG:	 in STD_LOGIC;
		MS_T_POS_B_INDEX_TAG:	 in STD_LOGIC;
		MS_T_POS_A_INDEX_TAG:	 in STD_LOGIC;
		PS_NO_INDEX_ON_1ST_ADDR_OPS:	 in STD_LOGIC;
		PS_1ST_ADDRESS:	 in STD_LOGIC;
		PS_T_POS_C_INDEX_TAG:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		PS_INDEX_REQUIRED:	 out STD_LOGIC;
		PS_INDEX_NOT_REQUIRED:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_H_POS_B_INDEX_TAG: STD_LOGIC := '1';
	signal MS_H_POS_A_INDEX_TAG: STD_LOGIC := '1';
	signal PS_H_POS_C_INDEX_TAG: STD_LOGIC := '0';
	signal MS_T_POS_B_INDEX_TAG: STD_LOGIC := '1';
	signal MS_T_POS_A_INDEX_TAG: STD_LOGIC := '1';
	signal PS_NO_INDEX_ON_1ST_ADDR_OPS: STD_LOGIC := '0';
	signal PS_1ST_ADDRESS: STD_LOGIC := '0';
	signal PS_T_POS_C_INDEX_TAG: STD_LOGIC := '0';
	signal PS_1401_MODE_1: STD_LOGIC := '0';

	-- Outputs

	signal PS_INDEX_REQUIRED: STD_LOGIC;
	signal PS_INDEX_NOT_REQUIRED: STD_LOGIC;

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

	UUT: ALD_14_50_08_1_INDEX_REQUIRED_GENERATION_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MS_H_POS_B_INDEX_TAG => MS_H_POS_B_INDEX_TAG,
		MS_H_POS_A_INDEX_TAG => MS_H_POS_A_INDEX_TAG,
		PS_H_POS_C_INDEX_TAG => PS_H_POS_C_INDEX_TAG,
		MS_T_POS_B_INDEX_TAG => MS_T_POS_B_INDEX_TAG,
		MS_T_POS_A_INDEX_TAG => MS_T_POS_A_INDEX_TAG,
		PS_NO_INDEX_ON_1ST_ADDR_OPS => PS_NO_INDEX_ON_1ST_ADDR_OPS,
		PS_1ST_ADDRESS => PS_1ST_ADDRESS,
		PS_T_POS_C_INDEX_TAG => PS_T_POS_C_INDEX_TAG,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		PS_INDEX_REQUIRED => PS_INDEX_REQUIRED,
		PS_INDEX_NOT_REQUIRED => PS_INDEX_NOT_REQUIRED);

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
   variable a,b,c,d,e,f,g,h,i: std_logic;
   variable tv: std_logic_vector(8 downto 0);
   variable g1, g2, g3: std_logic;

   begin

   -- Your test bench code
   
   testName := "14.50.08.1        ";
   
   for l in 0 to 511 loop
      tv := std_logic_vector(to_unsigned(l,tv'length));
      a := tv(0); 
      b := tv(1); 
      c := tv(2); 
      d := tv(3);
      e := tv(4); 
      f := tv(5); 
      g := tv(6); 
      h := tv(7); 
      i := tv(8);
      MS_H_POS_B_INDEX_TAG <= not b;
      MS_H_POS_A_INDEX_TAG <= not a;
      PS_H_POS_C_INDEX_TAG <= c;
      MS_T_POS_B_INDEX_TAG <= not d;
      MS_T_POS_A_INDEX_TAG <= not e;
      PS_NO_INDEX_ON_1ST_ADDR_OPS <= f;
      PS_1ST_ADDRESS <= g;
      PS_T_POS_C_INDEX_TAG <= h;
      PS_1401_MODE_1 <= i;
      g1 := not a and not b and not d and not e and c and h;
      -- ILD HAD: g2 := h and not b and not a and i;
      g2 := not d and not e and h and i;
      g3 := g and f;
      wait for 30 ns;
      
      check1(PS_INDEX_REQUIRED,a or b or d or e,testName,"Index Required");
      check1(PS_INDEX_NOT_REQUIRED,g1 or g2 or g3,testName,"Index Not Required");      
      
   end loop;

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
   

end;
