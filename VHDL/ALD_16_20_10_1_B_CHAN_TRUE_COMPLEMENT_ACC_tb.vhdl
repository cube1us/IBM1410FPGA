-- Test Bench VHDL for IBM SMS ALD page 16.20.10.1
-- Title: B CHAN TRUE-COMPLEMENT-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 10/2/2020 3:00:40 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC_tb is
end ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC_tb;

architecture behavioral of ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_ADD_OR_SUBT_OP_CODES:	 in STD_LOGIC;
		PS_1ST_SCAN:	 in STD_LOGIC;
		PS_MPLY_OR_DIV_OP_CODES:	 in STD_LOGIC;
		PS_1ST_OR_3RD_SCAN:	 in STD_LOGIC;
		MS_CMP_OP_CODES_DOT_1ST_SCAN:	 in STD_LOGIC;
		MS_X_CYCLE_CTRL:	 in STD_LOGIC;
		MS_X_CYCLE:	 in STD_LOGIC;
		MB_START_1401_INDEX:	 in STD_LOGIC;
		MB_START_TRUE_INDEX:	 in STD_LOGIC;
		MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN:	 in STD_LOGIC;
		PS_3RD_SCAN:	 in STD_LOGIC;
		MB_START_COMPL_INDEX:	 in STD_LOGIC;
		MS_TRUE_ADD_B:	 out STD_LOGIC;
		PS_COMP_ADD_B:	 out STD_LOGIC;
		LAMP_15A1F11:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_ADD_OR_SUBT_OP_CODES: STD_LOGIC := '0';
	signal PS_1ST_SCAN: STD_LOGIC := '0';
	signal PS_MPLY_OR_DIV_OP_CODES: STD_LOGIC := '0';
	signal PS_1ST_OR_3RD_SCAN: STD_LOGIC := '0';
	signal MS_CMP_OP_CODES_DOT_1ST_SCAN: STD_LOGIC := '1';
	signal MS_X_CYCLE_CTRL: STD_LOGIC := '1';
	signal MS_X_CYCLE: STD_LOGIC := '1';
	signal MB_START_1401_INDEX: STD_LOGIC := '1';
	signal MB_START_TRUE_INDEX: STD_LOGIC := '1';
	signal MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN: STD_LOGIC := '1';
	signal PS_3RD_SCAN: STD_LOGIC := '0';
	signal MB_START_COMPL_INDEX: STD_LOGIC := '1';

	-- Outputs

	signal MS_TRUE_ADD_B: STD_LOGIC;
	signal PS_COMP_ADD_B: STD_LOGIC;
	signal LAMP_15A1F11: STD_LOGIC;

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

	UUT: ALD_16_20_10_1_B_CHAN_TRUE_COMPLEMENT_ACC port map(
		FPGA_CLK => FPGA_CLK,
		PS_ADD_OR_SUBT_OP_CODES => PS_ADD_OR_SUBT_OP_CODES,
		PS_1ST_SCAN => PS_1ST_SCAN,
		PS_MPLY_OR_DIV_OP_CODES => PS_MPLY_OR_DIV_OP_CODES,
		PS_1ST_OR_3RD_SCAN => PS_1ST_OR_3RD_SCAN,
		MS_CMP_OP_CODES_DOT_1ST_SCAN => MS_CMP_OP_CODES_DOT_1ST_SCAN,
		MS_X_CYCLE_CTRL => MS_X_CYCLE_CTRL,
		MS_X_CYCLE => MS_X_CYCLE,
		MB_START_1401_INDEX => MB_START_1401_INDEX,
		MB_START_TRUE_INDEX => MB_START_TRUE_INDEX,
		MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN => MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN,
		PS_3RD_SCAN => PS_3RD_SCAN,
		MB_START_COMPL_INDEX => MB_START_COMPL_INDEX,
		MS_TRUE_ADD_B => MS_TRUE_ADD_B,
		PS_COMP_ADD_B => PS_COMP_ADD_B,
		LAMP_15A1F11 => LAMP_15A1F11);

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
   variable tv2: std_logic_vector(3 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "16.20.10.1        ";

   for tt in 0 to 2**10 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0);
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      h := tv(5);
      j := tv(6);
      k := tv(7);
      l := tv(8);
      m := tv(9);
      
      g1 := (a and b) or (c and d) or e or k or (h and j);
      g2 := (a and l) or m;
      
      --  Reset
      
      MS_X_CYCLE_CTRL <= '1';
      MS_X_CYCLE <= '1';
      wait for 30 ns;
      MS_X_CYCLE_CTRL <= '0';
      MS_X_CYCLE <= '0';
      wait for 30 ns;

      check1(MS_TRUE_ADD_B,'1',testName,"Reset True Add");
      check1(PS_COMP_ADD_B,'0',testName,"Reset Compl Add");
      check1(LAMP_15A1F11,'0',testName,"Reset Compl Add Lamp");            
 
      -- Combinatorial Outputs test  

		PS_ADD_OR_SUBT_OP_CODES <= a;
		PS_1ST_SCAN <= b;
		PS_MPLY_OR_DIV_OP_CODES <= c;
		PS_1ST_OR_3RD_SCAN <= d;
		MS_CMP_OP_CODES_DOT_1ST_SCAN <= not e;
		MB_START_1401_INDEX <= not h;
		MB_START_TRUE_INDEX <= not j;
		MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN <= not k;
		PS_3RD_SCAN <= l;		
		MB_START_COMPL_INDEX <= not m;
      
      wait for 30 ns;  -- Latch may set

		PS_ADD_OR_SUBT_OP_CODES <= '0';
      PS_1ST_SCAN <= '0';
      PS_MPLY_OR_DIV_OP_CODES <= '0';
      PS_1ST_OR_3RD_SCAN <= '0';
      MS_CMP_OP_CODES_DOT_1ST_SCAN <= '1';
		MB_START_1401_INDEX <= '1';
		MB_START_TRUE_INDEX <= '1';
      MS_LB_DOT_B_CYCLE_DOT_1ST_SCAN <= '1';
      PS_3RD_SCAN <= '0';
		MB_START_COMPL_INDEX <= '1';
      
      wait for 30 ns; -- If set, latch should stay that way
      
      check1(MS_TRUE_ADD_B,not g1,testName,"Set True Add B");
      check1(PS_COMP_ADD_B,g2,testName,"Set Compl Add B");
      check1(LAMP_15A1F11,g2,testName,"Set Compl Add Lamp");            
            
      -- Reset Test
      
      for rr in 0 to 3 loop
         tv2 := std_logic_vector(to_unsigned(rr,tv2'Length));
         MS_X_CYCLE_CTRL <= tv2(0);
         MS_X_CYCLE <= tv2(1);
         wait for 30 ns;
         if(rr /= 3) then
            -- No reset yet
            check1(MS_TRUE_ADD_B,not g1,testName,"Still Set True Add B");
            check1(PS_COMP_ADD_B,g2,testName,"Still Set Compl Add B");
            check1(LAMP_15A1F11,g2,testName,"Still Set Compl Add Lamp");            
         else
            check1(MS_TRUE_ADD_B,'1',testName,"Reset 2 True Add");
            check1(PS_COMP_ADD_B,'0',testName,"Reset 2 Compl Add");
            check1(LAMP_15A1F11,'0',testName,"Reset 2 Compl Add Lamp");            
         end if;
      end loop;      
      
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
