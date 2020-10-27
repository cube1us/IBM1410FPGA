-- Test Bench VHDL for IBM SMS ALD page 45.20.01.1
-- Title: CONS CYCLE CTRL MATRIX DRIVE
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/27/2020 3:01:09 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_45_20_01_1_CONS_CYCLE_CTRL_MATRIX_DRIVE_tb is
end ALD_45_20_01_1_CONS_CYCLE_CTRL_MATRIX_DRIVE_tb;

architecture behavioral of ALD_45_20_01_1_CONS_CYCLE_CTRL_MATRIX_DRIVE_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_45_20_01_1_CONS_CYCLE_CTRL_MATRIX_DRIVE
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_PROGRAM_RESET_4:	 in STD_LOGIC;
		MS_CONS_STOP_RESET:	 in STD_LOGIC;
		PS_MASTER_ERROR:	 in STD_LOGIC;
		PS_CONS_STOP_CR_COMPLETE:	 in STD_LOGIC;
		PS_CONS_MX_Y6_POS:	 in STD_LOGIC;
		PS_CONS_CLOCK_1_POS:	 in STD_LOGIC;
		PS_CONS_PRINTER_NOT_BUSY:	 in STD_LOGIC;
		PS_PRTR_LOCKED_CND_PROCEED:	 in STD_LOGIC;
		PS_CONS_CLOCK_2_POS:	 in STD_LOGIC;
		MS_CONSOLE_CHECK_STROBE_1:	 in STD_LOGIC;
		PS_CONS_MX_X1A_POS:	 in STD_LOGIC;
		PS_CONS_PRINTER_STROBE:	 in STD_LOGIC;
		PS_CONS_CLOCK_4_POS:	 in STD_LOGIC;
		PS_ALTER_ROUTINE:	 in STD_LOGIC;
		PS_D_CYCLE:	 in STD_LOGIC;
		PS_NO_SCAN:	 in STD_LOGIC;
		PS_LOGIC_GATE_D_1:	 in STD_LOGIC;
		MS_CONS_MX_Y_DC_RESET:	 out STD_LOGIC;
		MS_CONS_MX_X_DC_RESET:	 out STD_LOGIC;
		PS_CONS_MX_X_DRIVE_1:	 out STD_LOGIC;
		PS_CONS_MX_X_DRIVE_2:	 out STD_LOGIC;
		PS_CONS_MX_Y_DRIVE_1:	 out STD_LOGIC;
		PS_CONS_MX_Y_DRIVE_2:	 out STD_LOGIC;
		PS_CONS_MX_ADDR_DRIVE:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_4: STD_LOGIC := '1';
	signal MS_CONS_STOP_RESET: STD_LOGIC := '1';
	signal PS_MASTER_ERROR: STD_LOGIC := '0';
	signal PS_CONS_STOP_CR_COMPLETE: STD_LOGIC := '0';
	signal PS_CONS_MX_Y6_POS: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_1_POS: STD_LOGIC := '0';
	signal PS_CONS_PRINTER_NOT_BUSY: STD_LOGIC := '0';
	signal PS_PRTR_LOCKED_CND_PROCEED: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_2_POS: STD_LOGIC := '0';
	signal MS_CONSOLE_CHECK_STROBE_1: STD_LOGIC := '1';
	signal PS_CONS_MX_X1A_POS: STD_LOGIC := '0';
	signal PS_CONS_PRINTER_STROBE: STD_LOGIC := '0';
	signal PS_CONS_CLOCK_4_POS: STD_LOGIC := '0';
	signal PS_ALTER_ROUTINE: STD_LOGIC := '0';
	signal PS_D_CYCLE: STD_LOGIC := '0';
	signal PS_NO_SCAN: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_D_1: STD_LOGIC := '0';

	-- Outputs

	signal MS_CONS_MX_Y_DC_RESET: STD_LOGIC;
	signal MS_CONS_MX_X_DC_RESET: STD_LOGIC;
	signal PS_CONS_MX_X_DRIVE_1: STD_LOGIC;
	signal PS_CONS_MX_X_DRIVE_2: STD_LOGIC;
	signal PS_CONS_MX_Y_DRIVE_1: STD_LOGIC;
	signal PS_CONS_MX_Y_DRIVE_2: STD_LOGIC;
	signal PS_CONS_MX_ADDR_DRIVE: STD_LOGIC;

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

	UUT: ALD_45_20_01_1_CONS_CYCLE_CTRL_MATRIX_DRIVE port map(
		FPGA_CLK => FPGA_CLK,
		MS_PROGRAM_RESET_4 => MS_PROGRAM_RESET_4,
		MS_CONS_STOP_RESET => MS_CONS_STOP_RESET,
		PS_MASTER_ERROR => PS_MASTER_ERROR,
		PS_CONS_STOP_CR_COMPLETE => PS_CONS_STOP_CR_COMPLETE,
		PS_CONS_MX_Y6_POS => PS_CONS_MX_Y6_POS,
		PS_CONS_CLOCK_1_POS => PS_CONS_CLOCK_1_POS,
		PS_CONS_PRINTER_NOT_BUSY => PS_CONS_PRINTER_NOT_BUSY,
		PS_PRTR_LOCKED_CND_PROCEED => PS_PRTR_LOCKED_CND_PROCEED,
		PS_CONS_CLOCK_2_POS => PS_CONS_CLOCK_2_POS,
		MS_CONSOLE_CHECK_STROBE_1 => MS_CONSOLE_CHECK_STROBE_1,
		PS_CONS_MX_X1A_POS => PS_CONS_MX_X1A_POS,
		PS_CONS_PRINTER_STROBE => PS_CONS_PRINTER_STROBE,
		PS_CONS_CLOCK_4_POS => PS_CONS_CLOCK_4_POS,
		PS_ALTER_ROUTINE => PS_ALTER_ROUTINE,
		PS_D_CYCLE => PS_D_CYCLE,
		PS_NO_SCAN => PS_NO_SCAN,
		PS_LOGIC_GATE_D_1 => PS_LOGIC_GATE_D_1,
		MS_CONS_MX_Y_DC_RESET => MS_CONS_MX_Y_DC_RESET,
		MS_CONS_MX_X_DC_RESET => MS_CONS_MX_X_DC_RESET,
		PS_CONS_MX_X_DRIVE_1 => PS_CONS_MX_X_DRIVE_1,
		PS_CONS_MX_X_DRIVE_2 => PS_CONS_MX_X_DRIVE_2,
		PS_CONS_MX_Y_DRIVE_1 => PS_CONS_MX_Y_DRIVE_1,
		PS_CONS_MX_Y_DRIVE_2 => PS_CONS_MX_Y_DRIVE_2,
		PS_CONS_MX_ADDR_DRIVE => PS_CONS_MX_ADDR_DRIVE);

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

   testName := "45.20.01.1        ";

   for tt in 0 to 2**17 loop
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
      k := tv(9);
      l := tv(10);
      m := tv(11);
      n := tv(12);
      o := tv(13);
      p := tv(14);
      q := tv(15);
      r := tv(16);

		MS_PROGRAM_RESET_4 <= not a;
		MS_CONS_STOP_RESET <= not b;
		PS_MASTER_ERROR <= c;
		PS_CONS_STOP_CR_COMPLETE <= d;
		PS_CONS_MX_Y6_POS <= e;
		PS_CONS_CLOCK_1_POS <= f;
		PS_CONS_PRINTER_NOT_BUSY <= g;
		PS_PRTR_LOCKED_CND_PROCEED <= h;
		PS_CONS_CLOCK_2_POS <= j;
		MS_CONSOLE_CHECK_STROBE_1 <= not k;
		PS_CONS_MX_X1A_POS <= l;
		PS_CONS_PRINTER_STROBE <= m;
		PS_CONS_CLOCK_4_POS <= n;
		PS_ALTER_ROUTINE <= o;
		PS_D_CYCLE <= p;
		PS_NO_SCAN <= q;
		PS_LOGIC_GATE_D_1 <= r;
      
      wait for 30 ns;

		check1(MS_CONS_MX_Y_DC_RESET,not((b and c and d) or a),testName,"CONS MX Y DC Reset");
		check1(MS_CONS_MX_X_DC_RESET,MS_CONS_MX_Y_DC_RESET,testName,"CONS MX X DC Reset");
		check1(PS_CONS_MX_X_DRIVE_1,e and f and g and h and not k,testName,"Cons MX X Drive 1");
		check1(PS_CONS_MX_X_DRIVE_2,PS_CONS_MX_X_DRIVE_1,testName,"Cons MX X Drive 2");
		check1(PS_CONS_MX_Y_DRIVE_1,g and j and h and not k,testName,"Cons MX Y Drive 1");
		check1(PS_CONS_MX_Y_DRIVE_2,PS_CONS_MX_Y_DRIVE_1,testName,"Cons MX Y Drive 2");
		check1(PS_CONS_MX_ADDR_DRIVE,(l and m and n) or (o and p and q and r),testName,
		    "Cons MX Addr Drive");
            
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 5 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS
   

end;
