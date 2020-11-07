-- Test Bench VHDL for IBM SMS ALD page 14.71.30.1
-- Title: A AR READOUT
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 3:54:36 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_71_30_1_A_AR_READOUT_tb is
end ALD_14_71_30_1_A_AR_READOUT_tb;

architecture behavioral of ALD_14_71_30_1_A_AR_READOUT_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_71_30_1_A_AR_READOUT
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		PS_STORE_ADDR_REGS_OP_CODE:	 in STD_LOGIC;
		MS_CONSOLE_INHIBIT_AR_RO:	 in STD_LOGIC;
		PS_A_SYMBOL_OP_MODIFIER:	 in STD_LOGIC;
		PS_B_TO_LAST_LOGIC_GATE:	 in STD_LOGIC;
		PS_C_CYCLE_1:	 in STD_LOGIC;
		MS_CONSOLE_RO_AAR:	 in STD_LOGIC;
		PS_I_CYCLE_CTRL:	 in STD_LOGIC;
		PS_BRANCH_TO_A_AR_LATCH:	 in STD_LOGIC;
		PS_LOGIC_GATE_SPECIAL_A:	 in STD_LOGIC;
		PS_I_RING_CTRL:	 in STD_LOGIC;
		PS_C_CYCLE_CTRL:	 in STD_LOGIC;
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8:	 in STD_LOGIC;
		MS_SCAN_RESTART_LATCH_STAR_1311:	 in STD_LOGIC;
		PS_A_CYCLE_CTRL:	 in STD_LOGIC;
		PS_READ_OUT_AAR_ON_A_CY_OPS:	 in STD_LOGIC;
		MS_A_AR_RO_CTRL_STAR_ARITH:	 in STD_LOGIC;
		PS_TABLE_SEARCH_OP_CODE:	 in STD_LOGIC;
		PS_BODY_CTRL_LATCH:	 in STD_LOGIC;
		MS_1401_Q_OP_TRANS:	 in STD_LOGIC;
		PS_1401_MODE_1:	 in STD_LOGIC;
		PS_1401_BRANCH_LATCH:	 in STD_LOGIC;
		MS_BRANCH_TO_00001:	 in STD_LOGIC;
		M36_VOLTS:	 in STD_LOGIC;
		MV_CE_ADDRESS_RO_ENABLE:	 in STD_LOGIC;
		GROUND:	 in STD_LOGIC;
		SWITCH_ROT_ADDR_SEL_DK1:	 in STD_LOGIC_VECTOR(12 downTo 0);
		SWITCH_MOM_ADDR_DISP:	 in STD_LOGIC;
		PS_STORE_ADDR_REG_OPS_RO_GATE:	 out STD_LOGIC;
		PS_RO_A_AR:	 out STD_LOGIC;
		MV_CE_RO_B_AR:	 out STD_LOGIC;
		MV_CE_RO_C_AR:	 out STD_LOGIC;
		MV_CE_RO_D_AR:	 out STD_LOGIC;
		MS_CE_ADDR_REG_READ_OUT:	 out STD_LOGIC;
		MV_CE_RO_E_AR:	 out STD_LOGIC;
		MV_CE_RO_F_AR:	 out STD_LOGIC;
		MV_CE_RO_I_AR:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_STORE_ADDR_REGS_OP_CODE: STD_LOGIC := '0';
	signal MS_CONSOLE_INHIBIT_AR_RO: STD_LOGIC := '1';
	signal PS_A_SYMBOL_OP_MODIFIER: STD_LOGIC := '0';
	signal PS_B_TO_LAST_LOGIC_GATE: STD_LOGIC := '0';
	signal PS_C_CYCLE_1: STD_LOGIC := '0';
	signal MS_CONSOLE_RO_AAR: STD_LOGIC := '1';
	signal PS_I_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_BRANCH_TO_A_AR_LATCH: STD_LOGIC := '0';
	signal PS_LOGIC_GATE_SPECIAL_A: STD_LOGIC := '0';
	signal PS_I_RING_CTRL: STD_LOGIC := '0';
	signal PS_C_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8: STD_LOGIC := '0';
	signal MS_SCAN_RESTART_LATCH_STAR_1311: STD_LOGIC := '1';
	signal PS_A_CYCLE_CTRL: STD_LOGIC := '0';
	signal PS_READ_OUT_AAR_ON_A_CY_OPS: STD_LOGIC := '0';
	signal MS_A_AR_RO_CTRL_STAR_ARITH: STD_LOGIC := '1';
	signal PS_TABLE_SEARCH_OP_CODE: STD_LOGIC := '0';
	signal PS_BODY_CTRL_LATCH: STD_LOGIC := '0';
	signal MS_1401_Q_OP_TRANS: STD_LOGIC := '1';
	signal PS_1401_MODE_1: STD_LOGIC := '0';
	signal PS_1401_BRANCH_LATCH: STD_LOGIC := '0';
	signal MS_BRANCH_TO_00001: STD_LOGIC := '1';
	signal M36_VOLTS: STD_LOGIC := '1';
	signal MV_CE_ADDRESS_RO_ENABLE: STD_LOGIC := '1';
	signal GROUND: STD_LOGIC := '0';
	signal SWITCH_ROT_ADDR_SEL_DK1: STD_LOGIC_VECTOR(12 downTo 0) := "0000000000000";
	signal SWITCH_MOM_ADDR_DISP: STD_LOGIC := '0';

	-- Outputs

	signal PS_STORE_ADDR_REG_OPS_RO_GATE: STD_LOGIC;
	signal PS_RO_A_AR: STD_LOGIC;
	signal MV_CE_RO_B_AR: STD_LOGIC;
	signal MV_CE_RO_C_AR: STD_LOGIC;
	signal MV_CE_RO_D_AR: STD_LOGIC;
	signal MS_CE_ADDR_REG_READ_OUT: STD_LOGIC;
	signal MV_CE_RO_E_AR: STD_LOGIC;
	signal MV_CE_RO_F_AR: STD_LOGIC;
	signal MV_CE_RO_I_AR: STD_LOGIC;

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

	UUT: ALD_14_71_30_1_A_AR_READOUT port map(
		FPGA_CLK => FPGA_CLK,
		PS_STORE_ADDR_REGS_OP_CODE => PS_STORE_ADDR_REGS_OP_CODE,
		MS_CONSOLE_INHIBIT_AR_RO => MS_CONSOLE_INHIBIT_AR_RO,
		PS_A_SYMBOL_OP_MODIFIER => PS_A_SYMBOL_OP_MODIFIER,
		PS_B_TO_LAST_LOGIC_GATE => PS_B_TO_LAST_LOGIC_GATE,
		PS_C_CYCLE_1 => PS_C_CYCLE_1,
		MS_CONSOLE_RO_AAR => MS_CONSOLE_RO_AAR,
		PS_I_CYCLE_CTRL => PS_I_CYCLE_CTRL,
		PS_BRANCH_TO_A_AR_LATCH => PS_BRANCH_TO_A_AR_LATCH,
		PS_LOGIC_GATE_SPECIAL_A => PS_LOGIC_GATE_SPECIAL_A,
		PS_I_RING_CTRL => PS_I_RING_CTRL,
		PS_C_CYCLE_CTRL => PS_C_CYCLE_CTRL,
		PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 => PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8,
		MS_SCAN_RESTART_LATCH_STAR_1311 => MS_SCAN_RESTART_LATCH_STAR_1311,
		PS_A_CYCLE_CTRL => PS_A_CYCLE_CTRL,
		PS_READ_OUT_AAR_ON_A_CY_OPS => PS_READ_OUT_AAR_ON_A_CY_OPS,
		MS_A_AR_RO_CTRL_STAR_ARITH => MS_A_AR_RO_CTRL_STAR_ARITH,
		PS_TABLE_SEARCH_OP_CODE => PS_TABLE_SEARCH_OP_CODE,
		PS_BODY_CTRL_LATCH => PS_BODY_CTRL_LATCH,
		MS_1401_Q_OP_TRANS => MS_1401_Q_OP_TRANS,
		PS_1401_MODE_1 => PS_1401_MODE_1,
		PS_1401_BRANCH_LATCH => PS_1401_BRANCH_LATCH,
		MS_BRANCH_TO_00001 => MS_BRANCH_TO_00001,
		M36_VOLTS => M36_VOLTS,
		MV_CE_ADDRESS_RO_ENABLE => MV_CE_ADDRESS_RO_ENABLE,
		GROUND => GROUND,
		SWITCH_ROT_ADDR_SEL_DK1 => SWITCH_ROT_ADDR_SEL_DK1,
		SWITCH_MOM_ADDR_DISP => SWITCH_MOM_ADDR_DISP,
		PS_STORE_ADDR_REG_OPS_RO_GATE => PS_STORE_ADDR_REG_OPS_RO_GATE,
		PS_RO_A_AR => PS_RO_A_AR,
		MV_CE_RO_B_AR => MV_CE_RO_B_AR,
		MV_CE_RO_C_AR => MV_CE_RO_C_AR,
		MV_CE_RO_D_AR => MV_CE_RO_D_AR,
		MS_CE_ADDR_REG_READ_OUT => MS_CE_ADDR_REG_READ_OUT,
		MV_CE_RO_E_AR => MV_CE_RO_E_AR,
		MV_CE_RO_F_AR => MV_CE_RO_F_AR,
		MV_CE_RO_I_AR => MV_CE_RO_I_AR);

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

-- fpga_clk_process: process

--   constant clk_period : time := 10 ns;

--   begin
--       fpga_clk <= '0';
--      wait for clk_period / 2;
--       fpga_clk <= '1';
--       wait for clk_period / 2;
--   end process;

--
-- End of TestBenchFPGAClock.vhdl
--   

-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;
   variable tv: std_logic_vector(24 downto 0);
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y: std_logic;
   variable g1, g2, g3, g4, g5, g6: std_logic;

   begin

   -- Your test bench code

   testName := "14.71.30.1        ";
   
   FPGA_CLK <= '1';  -- Not needed for this combinatorial test.

   SWITCH_ROT_ADDR_SEL_DK1 <= "0000000000001";  -- (0 position is just the seed)   
   for tt in 0 to 255 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      MV_CE_ADDRESS_RO_ENABLE <= not tv(0);
      SWITCH_MOM_ADDR_DISP <= tv(1) and tv(0); -- Switch does not work right yet.
      if(tv(2) = '1' and tv(1) = '0' and tv(0) = '0') then
         SWITCH_ROT_ADDR_SEL_DK1 <= SWITCH_ROT_ADDR_SEL_DK1(11 downto 0) & "0";
      end if;
      wait for 30 ns;
      check1(MS_CE_ADDR_REG_READ_OUT,not(tv(0) and tv(1)),testName,"CE ADDR REG RO");
      check1(MV_CE_RO_B_AR,not SWITCH_ROT_ADDR_SEL_DK1(2),testName,"CE RO B AR");   
      check1(MV_CE_RO_C_AR,not SWITCH_ROT_ADDR_SEL_DK1(3),testName,"CE RO C AR");   
      check1(MV_CE_RO_D_AR,not SWITCH_ROT_ADDR_SEL_DK1(4),testName,"CE RO D AR");   
      check1(MV_CE_RO_E_AR,not SWITCH_ROT_ADDR_SEL_DK1(5),testName,"CE RO E AR");   
      check1(MV_CE_RO_F_AR,not SWITCH_ROT_ADDR_SEL_DK1(6),testName,"CE RO F AR");   
      check1(MV_CE_RO_I_AR,not SWITCH_ROT_ADDR_SEL_DK1(7),testName,"CE RO I AR");   
   end loop;
   
   SWITCH_ROT_ADDR_SEL_DK1 <= "0000000000000";
   MV_CE_ADDRESS_RO_ENABLE <= '0';
   SWITCH_MOM_ADDR_DISP <= '0';

   for tt in 0 to 2048*16384 loop  -- 25 bits, 0 to 24 - 32M
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      a := tv(0); 
      b := tv(1);
      c := tv(2);
      d := tv(3);
      e := tv(4);
      f := tv(5);
      g := tv(6);
      h := tv(7);
      i := tv(8);
      j := tv(9);
      k := tv(10);
      l := tv(11);
      m := tv(12);
      n := tv(13);
      o := tv(14);
      p := tv(15);
      q := tv(16);
      r := tv(17);
      s := tv(18);
      t := tv(19);
      u := tv(20);
      v := tv(21);
      w := tv(22);
      x := tv(23);
      y := tv(24);

      g1 := a and not b and d and e;
      g2 := u and v and not w and g and j;
      g3 := t or (l and m) or (o and p) or (g and j and h) or (o and s and r) or g2 or q;

   	PS_STORE_ADDR_REGS_OP_CODE <= a;
   	MS_CONSOLE_INHIBIT_AR_RO <= not b;
   	PS_A_SYMBOL_OP_MODIFIER <= c;
   	PS_B_TO_LAST_LOGIC_GATE <= d;
   	PS_C_CYCLE_1 <= e;
   	MS_CONSOLE_RO_AAR <= not f;
   	PS_I_CYCLE_CTRL <= g;
   	PS_BRANCH_TO_A_AR_LATCH <= h;
   	PS_LOGIC_GATE_SPECIAL_A <=i;
      PS_I_RING_CTRL <= j;
   	PS_C_CYCLE_CTRL <= l;
   	PS_I_RING_1_OR_5_OR_6_OR_10_OR_1401_DOT_3_OR_8 <= m;
   	MS_SCAN_RESTART_LATCH_STAR_1311 <= not n;
   	PS_A_CYCLE_CTRL <= o;
   	PS_READ_OUT_AAR_ON_A_CY_OPS <= p;
   	MS_A_AR_RO_CTRL_STAR_ARITH <= not q;
   	PS_TABLE_SEARCH_OP_CODE <= r;
   	PS_BODY_CTRL_LATCH <= s;
   	MS_1401_Q_OP_TRANS <= not t;
   	PS_1401_MODE_1 <= u;
   	PS_1401_BRANCH_LATCH <= v;
   	MS_BRANCH_TO_00001 <= not w;
   	MV_CE_ADDRESS_RO_ENABLE <= not y;
   	SWITCH_MOM_ADDR_DISP <= x and y;    -- Switches previous signal (doesn't work right yet)
   	SWITCH_ROT_ADDR_SEL_DK1(1) <= x and y;  -- Previous switch feeds this switch as well  

      wait for 30 ns;

      check1(PS_RO_A_AR,
         f or (x and y) or n or (c and g1) or (not b and i and g3),testName,
         "RO A AR");
      check1(PS_STORE_ADDR_REG_OPS_RO_GATE,g1,testName,"Store ADDR Reg Ops RO Gate");                 
      
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 1100 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

end;
