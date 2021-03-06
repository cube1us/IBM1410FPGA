-- Test Bench VHDL for IBM SMS ALD page 18.14.05.1
-- Title: OP MODIFIER SET CHECK
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/13/2020 9:38:26 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_14_05_1_OP_MODIFIER_SET_CHECK_tb is
end ALD_18_14_05_1_OP_MODIFIER_SET_CHECK_tb;

architecture behavioral of ALD_18_14_05_1_OP_MODIFIER_SET_CHECK_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_18_14_05_1_OP_MODIFIER_SET_CHECK
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_2ND_TRIGGER_CHECK:	 in STD_LOGIC;
		PS_SET_OP_MOD_REG:	 in STD_LOGIC;
		MS_PROGRAM_RESET_3:	 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		MS_1401_MODE:	 in STD_LOGIC;
		MS_1ST_TRIGGER_CHECK:	 in STD_LOGIC;
		MS_CHECK_OP_MOD_SET:	 in STD_LOGIC;
		MS_OP_MOD_REG_SET_ERROR:	 out STD_LOGIC;
		LAMP_15A1F20:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_2ND_TRIGGER_CHECK: STD_LOGIC := '1';
	signal PS_SET_OP_MOD_REG: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_3: STD_LOGIC := '1';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal MS_1401_MODE: STD_LOGIC := '1';
	signal MS_1ST_TRIGGER_CHECK: STD_LOGIC := '1';
	signal MS_CHECK_OP_MOD_SET: STD_LOGIC := '1';

	-- Outputs

	signal MS_OP_MOD_REG_SET_ERROR: STD_LOGIC;
	signal LAMP_15A1F20: STD_LOGIC;

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

	UUT: ALD_18_14_05_1_OP_MODIFIER_SET_CHECK port map(
		FPGA_CLK => FPGA_CLK,
		MS_2ND_TRIGGER_CHECK => MS_2ND_TRIGGER_CHECK,
		PS_SET_OP_MOD_REG => PS_SET_OP_MOD_REG,
		MS_PROGRAM_RESET_3 => MS_PROGRAM_RESET_3,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		MS_1401_MODE => MS_1401_MODE,
		MS_1ST_TRIGGER_CHECK => MS_1ST_TRIGGER_CHECK,
		MS_CHECK_OP_MOD_SET => MS_CHECK_OP_MOD_SET,
		MS_OP_MOD_REG_SET_ERROR => MS_OP_MOD_REG_SET_ERROR,
		LAMP_15A1F20 => LAMP_15A1F20);

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

   testName := "18.14.05.1        ";

   for tt in 0 to 2**6 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);

      g1 := a or b or f or g;
      g2 := not(a or b) or not(f or g);
      
      MS_PROGRAM_RESET_3 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_3 <= '1';
      wait for 30 ns;      

      check1(MS_OP_MOD_REG_SET_ERROR,'1',testName,"OP Mod Reg Loop Reset");
      check1(LAMP_15A1F20,'0',testName,"OP Mod Reg Lamp Loop Reset");
      
		MS_2ND_TRIGGER_CHECK <= not a;
		PS_SET_OP_MOD_REG <= b;
		PS_ERROR_SAMPLE <= d;
		MS_1401_MODE <= not e;
		MS_1ST_TRIGGER_CHECK <= not f;
		MS_CHECK_OP_MOD_SET <= not g;      
      wait for 90 ns;
      
		MS_2ND_TRIGGER_CHECK <= '1';
      PS_SET_OP_MOD_REG <= '0';
      MS_1ST_TRIGGER_CHECK <= '1';
      MS_CHECK_OP_MOD_SET <= '1';      
      wait for 90 ns;

      check1(MS_OP_MOD_REG_SET_ERROR,not(d and not e and g1 and g2),testName,"OP Mod Reg Set Error Set");
      check1(LAMP_15A1F20,NOT MS_OP_MOD_REG_SET_ERROR,testName,"OP Mod Reg Set Error Lamp ");

      PS_ERROR_SAMPLE <= '0';
      MS_1401_MODE <= '1';            
      
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
