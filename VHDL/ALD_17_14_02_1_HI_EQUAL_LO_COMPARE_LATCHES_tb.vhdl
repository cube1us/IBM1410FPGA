-- Test Bench VHDL for IBM SMS ALD page 17.14.02.1
-- Title: HI-EQUAL-LO COMPARE LATCHES
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/10/2020 10:50:37 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_17_14_02_1_HI_EQUAL_LO_COMPARE_LATCHES_tb is
end ALD_17_14_02_1_HI_EQUAL_LO_COMPARE_LATCHES_tb;

architecture behavioral of ALD_17_14_02_1_HI_EQUAL_LO_COMPARE_LATCHES_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_17_14_02_1_HI_EQUAL_LO_COMPARE_LATCHES
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_EQUAL_LOW_LATCHES_RESET:	 in STD_LOGIC;
		MS_COMPUTER_RESET_1:	 in STD_LOGIC;
		PS_PULL_OFF_CMP_LO_STAR_1311_SCAN:	 in STD_LOGIC;
		PS_SET_HIGH_CY:	 in STD_LOGIC;
		MS_1401_DOT_C_OP_DOT_I_RING_4_TIME:	 in STD_LOGIC;
		PS_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MS_CMP_LOW:	 in STD_LOGIC;
		PS_EQUAL_LOW_LATCHES_SET:	 in STD_LOGIC;
		MS_CMP_EQUAL:	 in STD_LOGIC;
		PS_CMP_LOW:	 in STD_LOGIC;
		MS_SET_HIGH_CY:	 in STD_LOGIC;
		PS_LOW:	 out STD_LOGIC;
		MS_LOW:	 out STD_LOGIC;
		LAMP_15A1E12:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_EQUAL_LOW_LATCHES_RESET: STD_LOGIC := '1';
	signal MS_COMPUTER_RESET_1: STD_LOGIC := '1';
	signal PS_PULL_OFF_CMP_LO_STAR_1311_SCAN: STD_LOGIC := '0';
	signal PS_SET_HIGH_CY: STD_LOGIC := '0';
	signal MS_1401_DOT_C_OP_DOT_I_RING_4_TIME: STD_LOGIC := '1';
	signal PS_LOGIC_GATE_F_1: STD_LOGIC := '0';
	signal MS_CMP_LOW: STD_LOGIC := '1';
	signal PS_EQUAL_LOW_LATCHES_SET: STD_LOGIC := '0';
	signal MS_CMP_EQUAL: STD_LOGIC := '1';
	signal PS_CMP_LOW: STD_LOGIC := '0';
	signal MS_SET_HIGH_CY: STD_LOGIC := '1';

	-- Outputs

	signal PS_LOW: STD_LOGIC;
	signal MS_LOW: STD_LOGIC;
	signal LAMP_15A1E12: STD_LOGIC;

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

	UUT: ALD_17_14_02_1_HI_EQUAL_LO_COMPARE_LATCHES port map(
		FPGA_CLK => FPGA_CLK,
		MS_EQUAL_LOW_LATCHES_RESET => MS_EQUAL_LOW_LATCHES_RESET,
		MS_COMPUTER_RESET_1 => MS_COMPUTER_RESET_1,
		PS_PULL_OFF_CMP_LO_STAR_1311_SCAN => PS_PULL_OFF_CMP_LO_STAR_1311_SCAN,
		PS_SET_HIGH_CY => PS_SET_HIGH_CY,
		MS_1401_DOT_C_OP_DOT_I_RING_4_TIME => MS_1401_DOT_C_OP_DOT_I_RING_4_TIME,
		PS_LOGIC_GATE_F_1 => PS_LOGIC_GATE_F_1,
		MS_CMP_LOW => MS_CMP_LOW,
		PS_EQUAL_LOW_LATCHES_SET => PS_EQUAL_LOW_LATCHES_SET,
		MS_CMP_EQUAL => MS_CMP_EQUAL,
		PS_CMP_LOW => PS_CMP_LOW,
		MS_SET_HIGH_CY => MS_SET_HIGH_CY,
		PS_LOW => PS_LOW,
		MS_LOW => MS_LOW,
		LAMP_15A1E12 => LAMP_15A1E12);

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

   testName := "17.14.02.1        ";

   for tt in 0 to 2**10 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      c := tv(1);
      d := tv(2);
      e := tv(3);
      f := tv(4);
      g := tv(5);
      h := tv(6);
      j := tv(7);
      k := tv(8);
      l := tv(9);

      g1 := k and h and f and not l;
      g2 := d and f;
      g3 := h and not g and f and not j;
      g4 := c or a or e or g2 or g3;
      
      -- Force latch Set
      
      MS_COMPUTER_RESET_1 <= '0';
      wait for 30 ns;            
      MS_COMPUTER_RESET_1 <= '1';
      wait for 30 ns;            

      check1(PS_LOW,'1',testName,"+S Low Loop Set");
      check1(MS_LOW,'0',testName,"-S Low Loop Set");
      check1(LAMP_15A1E12,'1',testName,"+S Lamp Loop Set");
      
		MS_EQUAL_LOW_LATCHES_RESET <= not a;
		PS_PULL_OFF_CMP_LO_STAR_1311_SCAN <= c;
		PS_SET_HIGH_CY <= d;
		MS_1401_DOT_C_OP_DOT_I_RING_4_TIME <= not e;
		PS_LOGIC_GATE_F_1 <= f;
		MS_CMP_LOW <= not g;
		PS_EQUAL_LOW_LATCHES_SET <= h;
		MS_CMP_EQUAL <= not j;
		PS_CMP_LOW <= '0'; -- Set later so it doesn't hold latch SET
		MS_SET_HIGH_CY <= not l;      
      wait for 30 ns;
      
      check1(PS_LOW,not g4,testName,"+S Low Reset");
      check1(MS_LOW,g4,testName,"-S Low Reset");
      check1(LAMP_15A1E12,not g4,testName,"+S Lamp Reset");
      
      -- Reset most of the reset variables - should not affect latch

		MS_EQUAL_LOW_LATCHES_RESET <= '1';
      PS_PULL_OFF_CMP_LO_STAR_1311_SCAN <= '0';
      PS_SET_HIGH_CY <= '0';
      MS_1401_DOT_C_OP_DOT_I_RING_4_TIME <= '1';
      PS_LOGIC_GATE_F_1 <= '0';
      MS_CMP_LOW <= not k;
      MS_CMP_EQUAL <= '1';
      wait for 30 ns;
      
      check1(PS_LOW,not g4,testName,"+S Low Still Reset");
      check1(MS_LOW,g4,testName,"-S Low Still Reset");
      check1(LAMP_15A1E12,not g4,testName,"+S Lamp Still Reset");
      
      -- Now, FORCE the latch reset
      
      PS_PULL_OFF_CMP_LO_STAR_1311_SCAN <= '1';
      wait for 30 ns;
      PS_PULL_OFF_CMP_LO_STAR_1311_SCAN <= '0';
      wait for 30 ns;
      
      check1(PS_LOW,'0',testName,"+S Low Force Reset");
      check1(MS_LOW,'1',testName,"-S Low Force Reset");
      check1(LAMP_15A1E12,'0',testName,"+S Lamp Force Reset");
      
      -- Now, maybe set the latch
      
      PS_LOGIC_GATE_F_1 <= f;
      PS_EQUAL_LOW_LATCHES_SET <= h;
      PS_CMP_LOW <= k;
      MS_SET_HIGH_CY <= not l;      
      wait for 30 ns;
      
      check1(PS_LOW,g1,testName,"+S Low Set");
      check1(MS_LOW,not g1,testName,"-S Set");
      check1(LAMP_15A1E12,g1,testName,"+S Lamp Set");

      -- Set the signals back to their starting state for the next iteration
      
      MS_EQUAL_LOW_LATCHES_RESET <= '1';
      MS_COMPUTER_RESET_1 <= '1';
      PS_PULL_OFF_CMP_LO_STAR_1311_SCAN <= '0';
      PS_SET_HIGH_CY <= '0';
      MS_1401_DOT_C_OP_DOT_I_RING_4_TIME <= '1';
      PS_LOGIC_GATE_F_1 <= '0';
      MS_CMP_LOW <= '1';
      PS_EQUAL_LOW_LATCHES_SET <= '0';
      MS_CMP_EQUAL <= '1';
      PS_CMP_LOW <= '0';
      MS_SET_HIGH_CY <= '1';
      
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