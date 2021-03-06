-- Test BenchVHDL for IBM SMS ALD group ARing
-- Title: ARing
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/3/2020 3:09:44 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ARing_tb is
end ARing_tb;

architecture behavioral of ARing_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ARing
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_PROGRAM_RESET_1: in STD_LOGIC;
		MS_SET_A_RING_1_TRIG: in STD_LOGIC;
		PS_A_RING_ADV_B: in STD_LOGIC;
		PS_A_CYCLE: in STD_LOGIC;
		PS_1401_STORE_AR_OP_CODES: in STD_LOGIC;
		PS_CONS_ADDR_REG_EXIT_GATE: in STD_LOGIC;
		MS_CONS_ADDR_REG_EXIT_GATE: in STD_LOGIC;
		PS_A_RING_ADV_A: in STD_LOGIC;
		MS_STORE_AR_SET_A_CYCLE_CTRL_A: in STD_LOGIC;
		MS_1401_MODE_1: in STD_LOGIC;
		MS_STORE_AR_SET_C_CYCLE_CTRL_B: in STD_LOGIC;
		PS_CONS_MX_Y_POS_BUS: in STD_LOGIC_VECTOR (6 downTo 1);
		PS_ADDR_SCNR_2_POS: out STD_LOGIC;
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME: out STD_LOGIC;
		PS_ADDR_SCNR_3_POS: out STD_LOGIC;
		PS_ADDR_SCNR_4_POS: out STD_LOGIC;
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME: out STD_LOGIC;
		PS_ADDR_SCNR_5_POS: out STD_LOGIC;
		PS_ADDR_SCNR_6_POS: out STD_LOGIC;
		PS_A_RING_2_OR_3_TIME: out STD_LOGIC;
		PS_A_RING_2_OR_3_OR_4_OR_5_TIME: out STD_LOGIC;
		PS_A_RING_OFF_TIME: out STD_LOGIC;
		PS_A_RING_BUS: out STD_LOGIC_VECTOR (6 downTo 1);
		MS_A_RING_BUS: out STD_LOGIC_VECTOR (6 downTo 1);
		LAMPS_ARING: out STD_LOGIC_VECTOR (6 downTo 1));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_PROGRAM_RESET_1: STD_LOGIC := '1';
	signal MS_SET_A_RING_1_TRIG: STD_LOGIC := '1';
	signal PS_A_RING_ADV_B: STD_LOGIC := '0';
	signal PS_A_CYCLE: STD_LOGIC := '0';
	signal PS_1401_STORE_AR_OP_CODES: STD_LOGIC := '0';
	signal PS_CONS_ADDR_REG_EXIT_GATE: STD_LOGIC := '0';
	signal MS_CONS_ADDR_REG_EXIT_GATE: STD_LOGIC := '1';
	signal PS_A_RING_ADV_A: STD_LOGIC := '0';
	signal MS_STORE_AR_SET_A_CYCLE_CTRL_A: STD_LOGIC := '1';
	signal MS_1401_MODE_1: STD_LOGIC := '1';
	signal MS_STORE_AR_SET_C_CYCLE_CTRL_B: STD_LOGIC := '1';
	signal PS_CONS_MX_Y_POS_BUS: STD_LOGIC_VECTOR (6 downTo 1) := "000000";

	-- Outputs

	signal PS_ADDR_SCNR_2_POS: STD_LOGIC;
	signal MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME: STD_LOGIC;
	signal PS_ADDR_SCNR_3_POS: STD_LOGIC;
	signal PS_ADDR_SCNR_4_POS: STD_LOGIC;
	signal MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME: STD_LOGIC;
	signal PS_ADDR_SCNR_5_POS: STD_LOGIC;
	signal PS_ADDR_SCNR_6_POS: STD_LOGIC;
	signal PS_A_RING_2_OR_3_TIME: STD_LOGIC;
	signal PS_A_RING_2_OR_3_OR_4_OR_5_TIME: STD_LOGIC;
	signal PS_A_RING_OFF_TIME: STD_LOGIC;
	signal PS_A_RING_BUS: STD_LOGIC_VECTOR (6 downTo 1);
	signal MS_A_RING_BUS: STD_LOGIC_VECTOR (6 downTo 1);
	signal LAMPS_ARING: STD_LOGIC_VECTOR (6 downTo 1);

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
   
   signal AddrScnr: std_logic_vector(6 downto 2);

-- END USER TEST BENCH DECLARATIONS

	begin

	-- Instantiate the Unit Under Test (UUT)

	UUT: ARing port map(
		FPGA_CLK => FPGA_CLK,
		MS_PROGRAM_RESET_1 => MS_PROGRAM_RESET_1,
		MS_SET_A_RING_1_TRIG => MS_SET_A_RING_1_TRIG,
		PS_A_RING_ADV_B => PS_A_RING_ADV_B,
		PS_A_CYCLE => PS_A_CYCLE,
		PS_1401_STORE_AR_OP_CODES => PS_1401_STORE_AR_OP_CODES,
		PS_CONS_ADDR_REG_EXIT_GATE => PS_CONS_ADDR_REG_EXIT_GATE,
		MS_CONS_ADDR_REG_EXIT_GATE => MS_CONS_ADDR_REG_EXIT_GATE,
		PS_A_RING_ADV_A => PS_A_RING_ADV_A,
		MS_STORE_AR_SET_A_CYCLE_CTRL_A => MS_STORE_AR_SET_A_CYCLE_CTRL_A,
		MS_1401_MODE_1 => MS_1401_MODE_1,
		MS_STORE_AR_SET_C_CYCLE_CTRL_B => MS_STORE_AR_SET_C_CYCLE_CTRL_B,
		PS_CONS_MX_Y_POS_BUS => PS_CONS_MX_Y_POS_BUS,
		PS_ADDR_SCNR_2_POS => PS_ADDR_SCNR_2_POS,
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME => MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME,
		PS_ADDR_SCNR_3_POS => PS_ADDR_SCNR_3_POS,
		PS_ADDR_SCNR_4_POS => PS_ADDR_SCNR_4_POS,
		MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME => MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME,
		PS_ADDR_SCNR_5_POS => PS_ADDR_SCNR_5_POS,
		PS_ADDR_SCNR_6_POS => PS_ADDR_SCNR_6_POS,
		PS_A_RING_2_OR_3_TIME => PS_A_RING_2_OR_3_TIME,
		PS_A_RING_2_OR_3_OR_4_OR_5_TIME => PS_A_RING_2_OR_3_OR_4_OR_5_TIME,
		PS_A_RING_OFF_TIME => PS_A_RING_OFF_TIME,
		PS_A_RING_BUS => PS_A_RING_BUS,
		MS_A_RING_BUS => MS_A_RING_BUS,
		LAMPS_ARING => LAMPS_ARING);

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

MS_CONS_ADDR_REG_EXIT_GATE <= NOT PS_CONS_ADDR_REG_EXIT_GATE;
AddrScnr(2) <= PS_ADDR_SCNR_2_POS;
AddrScnr(3) <= PS_ADDR_SCNR_3_POS;
AddrScnr(4) <= PS_ADDR_SCNR_4_POS;
AddrScnr(5) <= PS_ADDR_SCNR_5_POS;
AddrScnr(6) <= PS_ADDR_SCNR_6_POS;


-- Place your test bench code in the uut_process

uut_process: process

   variable testName: string(1 to 18);
   variable subtest: integer;

   begin

   -- Your test bench code
   
   testName := "14.70.0%.1        ";
   
   MS_PROGRAM_RESET_1 <= '0';
   wait for 30 ns;
   MS_PROGRAM_RESET_1 <= '1';
   wait for 30 ns;
   
   for i in 1 to 6 loop
      check1(PS_A_RING_BUS(i),'0',testName,"+S Reset");
      check1(MS_A_RING_BUS(i),'1',testName,"-S Reset");
   end loop;
   
   PS_CONS_MX_Y_POS_BUS(5) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_2_POS,'0',testName,"1A");
   PS_CONS_MX_Y_POS_BUS(5) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_2_POS,'0',testName,"1B");
   PS_CONS_MX_Y_POS_BUS(5) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_2_POS,'1',testName,"1C");
   PS_CONS_MX_Y_POS_BUS(5) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;

   PS_CONS_MX_Y_POS_BUS(4) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_3_POS,'0',testName,"2A");
   PS_CONS_MX_Y_POS_BUS(4) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_3_POS,'0',testName,"2B");
   PS_CONS_MX_Y_POS_BUS(4) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_3_POS,'1',testName,"2C");
   PS_CONS_MX_Y_POS_BUS(4) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;

   PS_CONS_MX_Y_POS_BUS(3) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_4_POS,'0',testName,"3A");
   PS_CONS_MX_Y_POS_BUS(3) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_4_POS,'0',testName,"3B");
   PS_CONS_MX_Y_POS_BUS(3) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_4_POS,'1',testName,"3C");
   PS_CONS_MX_Y_POS_BUS(3) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   
   PS_CONS_MX_Y_POS_BUS(2) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_5_POS,'0',testName,"4A");
   PS_CONS_MX_Y_POS_BUS(2) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_5_POS,'0',testName,"4B");
   PS_CONS_MX_Y_POS_BUS(2) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_5_POS,'1',testName,"4C");
   PS_CONS_MX_Y_POS_BUS(2) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   
   PS_CONS_MX_Y_POS_BUS(1) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_6_POS,'0',testName,"5A");
   PS_CONS_MX_Y_POS_BUS(1) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_6_POS,'0',testName,"5B");
   PS_CONS_MX_Y_POS_BUS(1) <= '1';
   PS_CONS_ADDR_REG_EXIT_GATE <= '1';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_6_POS,'1',testName,"5C");
   PS_CONS_MX_Y_POS_BUS(1) <= '0';
   PS_CONS_ADDR_REG_EXIT_GATE <= '0';
   wait for 30 ns;
   
   -- Set A Ring 1 time
   
   MS_SET_A_RING_1_TRIG <= '0';
   wait for 30 ns;
   MS_SET_A_RING_1_TRIG <= '1';
   wait for 30 ns;
   
   for i in 1 to 6 loop
   
      for j in 1 to 6 loop
         if(j = i) then
            check1(PS_A_RING_BUS(j),'1',testName,"A Ring Set Check +");
            check1(MS_A_RING_BUS(j),'0',testName,"A Ring Set Check -");
            check1(LAMPS_ARING(j),'1',testName,"A Ring Set Check LAMPS");
         else
            check1(PS_A_RING_BUS(j),'0',testName,"A Ring Not Set Check +");
            check1(MS_A_RING_BUS(j),'1',testName,"A Ring Not Set Check -");
            check1(LAMPS_ARING(j),'0',testName,"A Ring Not Set Check LAMPS");         
         end if;
         
         check1(PS_A_RING_2_OR_3_TIME,PS_A_RING_BUS(2) or PS_A_RING_BUS(3),testName,"A Ring 2 or 3");
         check1(PS_A_RING_2_OR_3_OR_4_OR_5_TIME,
            PS_A_RING_BUS(2) or PS_A_RING_BUS(3) or PS_A_RING_BUS(4) or PS_A_RING_BUS(5),testName,"A Ring 2+3+4+5");
         check1(PS_A_RING_OFF_TIME,
            NOT(PS_A_RING_BUS(2) or PS_A_RING_BUS(3) or PS_A_RING_BUS(4) or PS_A_RING_BUS(5) or PS_A_RING_BUS(6)),
            testName,"A Ring OFF");

         if(j > 1) then
             if(j = i) then
                check1(AddrScnr(j),'1',testName,"A Ring Addr Scnr A " & INTEGER'image(i) & " " & INTEGER'image(j) );
             else
                check1(AddrScnr(j),'0',testName,"A Ring Addr Scnr B " & INTEGER'image(i) & " " & INTEGER'image(j));
             end if;
             PS_CONS_ADDR_REG_EXIT_GATE <= '1';
             wait for 30 ns; 
             check1(AddrScnr(j),'0',testName,"A Ring Addr Scnr C " & INTEGER'image(i) & " " & INTEGER'image(j));
             PS_CONS_ADDR_REG_EXIT_GATE <= '0';
             wait for 30 ns;
         end if;
         
      end loop;
      
      if(i = 2) then
         PS_A_CYCLE <= '0';
         PS_1401_STORE_AR_OP_CODES <= '1';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME,'1',testName,"2 MS H + Q - A");
         PS_A_CYCLE <= '1';
         PS_1401_STORE_AR_OP_CODES <= '0';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME,'1',testName,"2 MS H + Q - B");
         PS_A_CYCLE <= '1';
         PS_1401_STORE_AR_OP_CODES <= '1';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME,'0',testName,"2 MS H + Q - C");         
      else
         PS_A_CYCLE <= '1';
         PS_1401_STORE_AR_OP_CODES <= '1';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_2_TIME,'1',testName,"2 MS H + Q - D");         
      end if;
      PS_A_CYCLE <= '0';
      PS_1401_STORE_AR_OP_CODES <= '0';
      
      if(i = 4) then
         PS_A_CYCLE <= '0';
         PS_1401_STORE_AR_OP_CODES <= '1';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME,'1',testName,"4 MS H + Q - A");
         PS_A_CYCLE <= '1';
         PS_1401_STORE_AR_OP_CODES <= '0';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME,'1',testName,"4 MS H + Q - B");
         PS_A_CYCLE <= '1';
         PS_1401_STORE_AR_OP_CODES <= '1';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME,'0',testName,"4 MS H + Q - C");         
      else
         PS_A_CYCLE <= '1';
         PS_1401_STORE_AR_OP_CODES <= '1';
         wait for 30 ns;
         check1(MS_H_OR_Q_OP_DOT_A_CY_DOT_A_RING_4_TIME,'1',testName,"4 MS H + Q - D");         
      end if;
      PS_A_CYCLE <= '0';
      PS_1401_STORE_AR_OP_CODES <= '0';

      -- Advance the A Ring
      
      PS_A_RING_ADV_A <= '1';
      PS_A_RING_ADV_B <= '1';
      wait for 90 ns;
      PS_A_RING_ADV_A <= '0';
      PS_A_RING_ADV_B <= '0';
      wait for 90 ns;            
   end loop;
   
   -- After step 6, The A Ring should be all reaset

     for j in 1 to 6 loop
        check1(PS_A_RING_BUS(j),'0',testName,"A Ring Done Check +");
        check1(MS_A_RING_BUS(j),'1',testName,"A Ring Done Check -");
        check1(LAMPS_ARING(j),'0',testName,"A Ring Done Check LAMPS");         
     end loop;


   check1(PS_ADDR_SCNR_5_POS,'0',testName,"5A");
   MS_STORE_AR_SET_A_CYCLE_CTRL_A <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_5_POS,'1',testName,"5B");
   MS_STORE_AR_SET_A_CYCLE_CTRL_A <= '1';

   check1(PS_ADDR_SCNR_6_POS,'0',testName,"6A");
   MS_STORE_AR_SET_C_CYCLE_CTRL_B <= '0';
   wait for 30 ns;
   check1(PS_ADDR_SCNR_6_POS,'1',testName,"5B");
   MS_STORE_AR_SET_C_CYCLE_CTRL_B <= '1';

   -- Test A ring in 1401 mode - 3 character addresses
   
   MS_SET_A_RING_1_TRIG <= '0';
   wait for 30 ns;
   MS_SET_A_RING_1_TRIG <= '1';
   wait for 30 ns;
         
   MS_1401_MODE_1 <= '0'; 
   
   for i in 1 to 6 loop
      for j in 1 to 6 loop
         if(j = i AND i < 5) then
            check1(PS_A_RING_BUS(j),'1',testName,"1401 A Ring Set Check +");
            check1(MS_A_RING_BUS(j),'0',testName,"1401 A Ring Set Check -");
            check1(LAMPS_ARING(j),'1',testName,"1401 A Ring Set Check LAMPS");
         else
            check1(PS_A_RING_BUS(j),'0',testName,"1401 A Ring Not Set Check +");
            check1(MS_A_RING_BUS(j),'1',testName,"1401 A Ring Not Set Check -");
            check1(LAMPS_ARING(j),'0',testName,"1401 A Ring Set Not Check LAMPS");         
         end if;
      end loop;
      
      PS_A_RING_ADV_A <= '1';
      PS_A_RING_ADV_B <= '1';
      wait for 90 ns;
      PS_A_RING_ADV_A <= '0';
      PS_A_RING_ADV_B <= '0';
      wait for 90 ns;            
   end loop;
   
   
   
   assert false report "Simulation Ended NORMALLY (2)" severity failure;
   
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

END;
