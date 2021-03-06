-- Test Bench VHDL for IBM SMS ALD page 18.11.03.1
-- Title: CHANNEL A VALIDITY CHECK
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/11/2020 11:42:27 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_18_11_03_1_CHANNEL_A_VALIDITY_CHECK_tb is
end ALD_18_11_03_1_CHANNEL_A_VALIDITY_CHECK_tb;

architecture behavioral of ALD_18_11_03_1_CHANNEL_A_VALIDITY_CHECK_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_18_11_03_1_CHANNEL_A_VALIDITY_CHECK
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_A_CH_VC_NUMERICS_ODD:	 in STD_LOGIC;
		PS_A_CH_VC_NOT_NU_C_BIT:	 in STD_LOGIC;
		PS_A_CH_VC_NUMERICS_EVEN:	 in STD_LOGIC;
		PS_A_CH_VC_NU_C_BIT:	 in STD_LOGIC;
		PS_ERROR_SAMPLE:	 in STD_LOGIC;
		MS_ASTERISK_A_CH_CHECK_CTRL:	 in STD_LOGIC;
		MS_ANY_LAST_INPUT_CYCLE:	 in STD_LOGIC;
		MS_DISPLAY_OR_ALTER_ROUTINE:	 in STD_LOGIC;
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT:	 in STD_LOGIC;
		MS_A_CH_VALID:	 out STD_LOGIC;
		PS_A_CH_INVALID:	 out STD_LOGIC;
		MS_A_CHANNEL_VC_ERROR:	 out STD_LOGIC;
		LAMP_11C8A12:	 out STD_LOGIC;
		LAMP_15A1A19:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_A_CH_VC_NUMERICS_ODD: STD_LOGIC := '0';
	signal PS_A_CH_VC_NOT_NU_C_BIT: STD_LOGIC := '0';
	signal PS_A_CH_VC_NUMERICS_EVEN: STD_LOGIC := '0';
	signal PS_A_CH_VC_NU_C_BIT: STD_LOGIC := '0';
	signal PS_ERROR_SAMPLE: STD_LOGIC := '0';
	signal MS_ASTERISK_A_CH_CHECK_CTRL: STD_LOGIC := '1';
	signal MS_ANY_LAST_INPUT_CYCLE: STD_LOGIC := '1';
	signal MS_DISPLAY_OR_ALTER_ROUTINE: STD_LOGIC := '1';
	signal MS_INPUT_CYCLE_GRP_MK_WM_INSRT: STD_LOGIC := '1';

	-- Outputs

	signal MS_A_CH_VALID: STD_LOGIC;
	signal PS_A_CH_INVALID: STD_LOGIC;
	signal MS_A_CHANNEL_VC_ERROR: STD_LOGIC;
	signal LAMP_11C8A12: STD_LOGIC;
	signal LAMP_15A1A19: STD_LOGIC;

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

	UUT: ALD_18_11_03_1_CHANNEL_A_VALIDITY_CHECK port map(
		FPGA_CLK => FPGA_CLK,
		PS_A_CH_VC_NUMERICS_ODD => PS_A_CH_VC_NUMERICS_ODD,
		PS_A_CH_VC_NOT_NU_C_BIT => PS_A_CH_VC_NOT_NU_C_BIT,
		PS_A_CH_VC_NUMERICS_EVEN => PS_A_CH_VC_NUMERICS_EVEN,
		PS_A_CH_VC_NU_C_BIT => PS_A_CH_VC_NU_C_BIT,
		PS_ERROR_SAMPLE => PS_ERROR_SAMPLE,
		MS_ASTERISK_A_CH_CHECK_CTRL => MS_ASTERISK_A_CH_CHECK_CTRL,
		MS_ANY_LAST_INPUT_CYCLE => MS_ANY_LAST_INPUT_CYCLE,
		MS_DISPLAY_OR_ALTER_ROUTINE => MS_DISPLAY_OR_ALTER_ROUTINE,
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT => MS_INPUT_CYCLE_GRP_MK_WM_INSRT,
		MS_A_CH_VALID => MS_A_CH_VALID,
		PS_A_CH_INVALID => PS_A_CH_INVALID,
		MS_A_CHANNEL_VC_ERROR => MS_A_CHANNEL_VC_ERROR,
		LAMP_11C8A12 => LAMP_11C8A12,
		LAMP_15A1A19 => LAMP_15A1A19);

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

   testName := "18.11.03.1        ";

   for tt in 0 to 2**9 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      j := tv(8);
      
      g1 := (a and d) or (b and c);
      g2 := (a and b) or (d and c);

		PS_A_CH_VC_NUMERICS_ODD <= a;
		PS_A_CH_VC_NOT_NU_C_BIT <= b;
		PS_A_CH_VC_NUMERICS_EVEN <= c;
		PS_A_CH_VC_NU_C_BIT <= d;
		PS_ERROR_SAMPLE <= e;
		MS_ASTERISK_A_CH_CHECK_CTRL <= not f;
		MS_ANY_LAST_INPUT_CYCLE <= not g;
		MS_DISPLAY_OR_ALTER_ROUTINE <= not h;
		MS_INPUT_CYCLE_GRP_MK_WM_INSRT <= not j;
      
      wait for 30 ns;
      
      check1(MS_A_CH_VALID,g1,testName,"MS A Ch Valid");
      check1(PS_A_CH_INVALID,not g2,testName,"PS A Ch Invalid");
      check1(MS_A_CHANNEL_VC_ERROR,
         not(e and not f and not g and not h and not j and (g1 or not g2)),
         testName,"A Ch VC Error");
      check1(LAMP_11C8A12,not MS_A_CHANNEL_VC_ERROR,testName,"CE A Ch VC Error Lamp");
      check1(LAMP_15A1A19,not MS_A_CHANNEL_VC_ERROR,testName,"CE A Ch VC Error Lamp");
      
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
