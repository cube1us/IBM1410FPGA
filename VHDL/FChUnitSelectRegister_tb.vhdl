-- Test BenchVHDL for IBM SMS ALD group FChUnitSelectRegister
-- Title: FChUnitSelectRegister
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 9/18/2020 9:22:29 AM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity FChUnitSelectRegister_tb is
end FChUnitSelectRegister_tb;

architecture behavioral of FChUnitSelectRegister_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component FChUnitSelectRegister
	    Port (
		FPGA_CLK: in STD_LOGIC;
		MS_CONTROL_REG_DISABLE: in STD_LOGIC;
		MS_F_CH_RESET: in STD_LOGIC;
		PS_ASSEMBLY_CH_C_CHAR_BIT: in STD_LOGIC;
		PS_LAST_LOGIC_GATE_1: in STD_LOGIC;
		PS_LOZENGE_OR_ASTERISK: in STD_LOGIC;
		MS_F_CH_RESET_1: in STD_LOGIC;
		MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR: in STD_LOGIC;
		MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR: in STD_LOGIC;
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		PS_I_RING_HDL_BUS: in STD_LOGIC_VECTOR (12 downTo 0);
		PS_F_CH_U_SEL_REG_NOT_BUS: out STD_LOGIC_VECTOR (7 downTo 0);
		PS_F_CH_U_SEL_REG_BUS: out STD_LOGIC_VECTOR (7 downTo 0));
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MS_CONTROL_REG_DISABLE: STD_LOGIC := '1';
	signal MS_F_CH_RESET: STD_LOGIC := '1';
	signal PS_ASSEMBLY_CH_C_CHAR_BIT: STD_LOGIC := '0';
	signal PS_LAST_LOGIC_GATE_1: STD_LOGIC := '0';
	signal PS_LOZENGE_OR_ASTERISK: STD_LOGIC := '0';
	signal MS_F_CH_RESET_1: STD_LOGIC := '1';
	signal MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR: STD_LOGIC := '1';
	signal MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR: STD_LOGIC := '1';
	signal PS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";
	signal PS_I_RING_HDL_BUS: STD_LOGIC_VECTOR (12 downTo 0) := "0000000000000";

	-- Outputs

	signal PS_F_CH_U_SEL_REG_NOT_BUS: STD_LOGIC_VECTOR (7 downTo 0);
	signal PS_F_CH_U_SEL_REG_BUS: STD_LOGIC_VECTOR (7 downTo 0);

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

	UUT: FChUnitSelectRegister port map(
		FPGA_CLK => FPGA_CLK,
		MS_CONTROL_REG_DISABLE => MS_CONTROL_REG_DISABLE,
		MS_F_CH_RESET => MS_F_CH_RESET,
		PS_ASSEMBLY_CH_C_CHAR_BIT => PS_ASSEMBLY_CH_C_CHAR_BIT,
		PS_LAST_LOGIC_GATE_1 => PS_LAST_LOGIC_GATE_1,
		PS_LOZENGE_OR_ASTERISK => PS_LOZENGE_OR_ASTERISK,
		MS_F_CH_RESET_1 => MS_F_CH_RESET_1,
		MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR => MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR,
		MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR => MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR,
		PS_ASSEMBLY_CH_BUS => PS_ASSEMBLY_CH_BUS,
		PS_I_RING_HDL_BUS => PS_I_RING_HDL_BUS,
		PS_F_CH_U_SEL_REG_NOT_BUS => PS_F_CH_U_SEL_REG_NOT_BUS,
		PS_F_CH_U_SEL_REG_BUS => PS_F_CH_U_SEL_REG_BUS);

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
   variable a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z: std_logic;
   variable g1, g2, g3, g4, g5, g6, g7, g8, g9, g10: std_logic;

   begin

   -- Your test bench code

   testName := "15.56.08.1        ";

   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));

      b := tv(0);
      c := tv(1); -- Bit C
      e := tv(2); -- Bit 8
      f := tv(3); -- Bit A
      g := tv(4); -- Bit B
      p := tv(5);
      q := tv(6);
      r := tv(7);

      g1 := p and q and r;

      MS_F_CH_RESET <= '0';
      wait for 30 ns;
      MS_F_CH_RESET <= '1';      
      wait for 30 ns;

      -- These three signals comprise +S SET E CH UNIT SEL REG
      PS_LOZENGE_OR_ASTERISK <= p;
      PS_I_RING_HDL_BUS(4) <= q;
      PS_LAST_LOGIC_GATE_1 <= r;
      
      MS_CONTROL_REG_DISABLE <= not b;
      PS_ASSEMBLY_CH_C_CHAR_BIT <= c;
      PS_ASSEMBLY_CH_BUS <= "0" & g & f & e & "000";      

      wait for 30 ns; -- Any given register may or may not set

      PS_LOZENGE_OR_ASTERISK <= '0';
      PS_I_RING_HDL_BUS(4) <= '0';
      PS_LAST_LOGIC_GATE_1 <= '0';
      wait for 30 ns;     

      if(g1 = '0') then
         -- No register should be set under these conditions
         for bitnum in 3 to 7 loop
            check1(PS_F_CH_U_SEL_REG_BUS(bitnum),'0',testName,"No Set E Ch U Sel Reg Bit " & Integer'Image(bitnum));
            if(bitnum < 6) then   -- No WM bit to test, so it is always 0.
               check1(PS_F_CH_U_SEL_REG_NOT_BUS(bitnum),'1',testName,"No Set E Ch U Sel Reg Not Bit " & Integer'Image(bitnum));
            end if;
            if(bitnum = 7) then
               check1(PS_F_CH_U_SEL_REG_NOT_BUS(HDL_C_BIT),not b,testName,"No Set E Ch U Sel Reg Not Bit CR Disable ");
            end if;
         end loop;
      else
         -- Certain register(s) may be set
         for bitnum in 3 to 5 loop
            check1(PS_F_CH_U_SEL_REG_BUS(bitnum),tv(bitNum-1),testName,"Set E Ch U Sel Reg Bit " & Integer'Image(bitnum));
            check1(PS_F_CH_U_SEL_REG_NOT_BUS(bitnum),not tv(bitNum-1),testName,"Set E Ch U Sel Reg NOT Bit " & Integer'Image(bitnum));
         end loop;
         check1(PS_F_CH_U_SEL_REG_BUS(HDL_C_BIT),not b and c,testName,"Set E Ch U Sel reg C Bit");
         check1(PS_F_CH_U_SEL_REG_NOT_BUS(HDL_C_BIT),not b and not c,testName,"Set E Ch U Sel reg NOT C Bit");
      end if;
      
   end loop;
   
   testName := "15.56.09.1        ";
   
   for tt in 0 to 2**8 loop
      tv := std_logic_vector(to_unsigned(tt,tv'Length));
      -- a := tv(0);
      -- b := tv(1);
      c := tv(0);
      -- d := tv(3);
      -- e := tv(3);
      f := tv(1);
      g := tv(2);
      -- h := tv(6);
      -- j := tv(7);
      -- k := tv(8);
      l := tv(3);
      m := tv(4);
      -- n := tv(11);
      -- o := tv(12);
      p := tv(5);
      q := tv(6);
      r := tv(7);
      
      g1 := p and q and r;
      
      MS_F_CH_RESET <= '0';
      wait for 30 ns;
      MS_F_CH_RESET <= '1';
      wait for 30 ns;
      
      -- All should be clear
      
      for bitnum in 0 to 2 loop
         check1(PS_F_CH_U_SEL_REG_BUS(bitnum),'0',testName,"Reset E Ch U Sel Reg Bit " & Integer'Image(bitnum));
         check1(PS_F_CH_U_SEL_REG_NOT_BUS(bitnum),'1',testName,"Reset E Ch U Sel Reg NOT Bit " & Integer'Image(bitnum));         
      end loop;   
      
      PS_ASSEMBLY_CH_BUS(HDL_4_BIT) <= c;
      MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR <= not f;
      PS_ASSEMBLY_CH_BUS(HDL_2_BIT) <= g;
      PS_ASSEMBLY_CH_BUS(HDL_1_BIT) <= l;
      MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR <= not m;
      PS_LOZENGE_OR_ASTERISK <= p;
      PS_I_RING_HDL_BUS(4) <= q;
      PS_LAST_LOGIC_GATE_1 <= r;                  
      wait for 30 ns;  -- Maybe set some latches...
           
      PS_ASSEMBLY_CH_BUS(HDL_4_BIT) <= '0';
      MS_SET_F_U_SEL_REG_2_BIT_STAR_1414_STAR <= '1';
      PS_ASSEMBLY_CH_BUS(HDL_2_BIT) <= '0';
      MS_SET_F_U_SEL_REG_1_BIT_STAR_1414_STAR <= '1';
      PS_ASSEMBLY_CH_BUS(HDL_1_BIT) <= '0';
      PS_LOZENGE_OR_ASTERISK <= '0';
      PS_I_RING_HDL_BUS(4) <= '0';
      PS_LAST_LOGIC_GATE_1 <= '0';                        
      wait for 30 ns;            
      
      -- 4 Bit
      check1(PS_F_CH_U_SEL_REG_BUS(HDL_4_BIT),c and g1,testName,"Set E Ch U Sel Reg 4 Bit");
      check1(PS_F_CH_U_SEL_REG_NOT_BUS(HDL_4_BIT),
         NOT PS_F_CH_U_SEL_REG_BUS(HDL_4_BIT),testName,"Set E Ch U Sel Reg NOT 4 Bit");
      
      -- 2 Bit
      check1(PS_F_CH_U_SEL_REG_BUS(HDL_2_BIT),e or (g and g1),testName,"Set E Ch U Sel Reg 2 bit");
      check1(PS_F_CH_U_SEL_REG_NOT_BUS(HDL_2_BIT),NOT PS_F_CH_U_SEL_REG_BUS(HDL_2_BIT),testName,"Set E Ch U Sel Reg NOT 2 Bit");
      
      check1(PS_F_CH_U_SEL_REG_BUS(HDL_1_BIT),m or (l and g1),testName,"Set E Ch U Sel Reg 1 bit");
      check1(PS_F_CH_U_SEL_REG_NOT_BUS(HDL_1_bit),NOT PS_F_CH_U_SEL_REG_BUS(HDL_1_BIT),testName,"Set E Ch U Sel Reg NOT 1 Bit");
      
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
