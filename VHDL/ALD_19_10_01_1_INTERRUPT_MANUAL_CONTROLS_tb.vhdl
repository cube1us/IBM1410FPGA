-- Test Bench VHDL for IBM SMS ALD page 19.10.01.1
-- Title: INTERRUPT MANUAL CONTROLS
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 11/7/2020 5:11:10 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS_tb is
end ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS_tb;

architecture behavioral of ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		M36_VOLTS:	 in STD_LOGIC;
		MC_READER_BUSY:	 in STD_LOGIC;
		MC_READER_BUSY_JRJ:	 in STD_LOGIC;
		PS_1403_PRINT_BUFFER_BUSY:	 in STD_LOGIC;
		MC_PUNCH_BUSY:	 in STD_LOGIC;
		MC_PUNCH_BUSY_JRJ:	 in STD_LOGIC;
		MC_PAPER_TAPE_READER_BUSY:	 in STD_LOGIC;
		MC_PAPER_TAPE_READY_BUSY_JRJ:	 in STD_LOGIC;
		MC_I_O_CLOCK_080_090_TIME:	 in STD_LOGIC;
		MC_I_O_CLOCK_080_090_TIME_JRJ:	 in STD_LOGIC;
		MS_PROGRAM_RESET_6:	 in STD_LOGIC;
		SWITCH_ALT_PRIORITY_PL1:	 in STD_LOGIC;
		SWITCH_ALT_PRIORITY_PL2:	 in STD_LOGIC;
		SWITCH_ROT_I_O_UNIT_DK1:	 in STD_LOGIC_VECTOR(5 downTo 0);
		PS_PRIORITY_SW_ON:	 out STD_LOGIC;
		MS_SEL_I_O_FINISH_PULSE:	 out STD_LOGIC;
		LAMP_15A2K03:	 out STD_LOGIC;
		LAMP_15A2K05:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal M36_VOLTS: STD_LOGIC := '1';
	signal MC_READER_BUSY: STD_LOGIC := '1';
	signal MC_READER_BUSY_JRJ: STD_LOGIC := '1';
	signal PS_1403_PRINT_BUFFER_BUSY: STD_LOGIC := '0';
	signal MC_PUNCH_BUSY: STD_LOGIC := '1';
	signal MC_PUNCH_BUSY_JRJ: STD_LOGIC := '1';
	signal MC_PAPER_TAPE_READER_BUSY: STD_LOGIC := '1';
	signal MC_PAPER_TAPE_READY_BUSY_JRJ: STD_LOGIC := '1';
	signal MC_I_O_CLOCK_080_090_TIME: STD_LOGIC := '1';
	signal MC_I_O_CLOCK_080_090_TIME_JRJ: STD_LOGIC := '1';
	signal MS_PROGRAM_RESET_6: STD_LOGIC := '1';
	signal SWITCH_ALT_PRIORITY_PL1: STD_LOGIC := '0';
	signal SWITCH_ALT_PRIORITY_PL2: STD_LOGIC := '0';
	signal SWITCH_ROT_I_O_UNIT_DK1: STD_LOGIC_VECTOR(5 downTo 0) := "000000";

	-- Outputs

	signal PS_PRIORITY_SW_ON: STD_LOGIC;
	signal MS_SEL_I_O_FINISH_PULSE: STD_LOGIC;
	signal LAMP_15A2K03: STD_LOGIC;
	signal LAMP_15A2K05: STD_LOGIC;

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

	UUT: ALD_19_10_01_1_INTERRUPT_MANUAL_CONTROLS port map(
		FPGA_CLK => FPGA_CLK,
		M36_VOLTS => M36_VOLTS,
		MC_READER_BUSY => MC_READER_BUSY,
		MC_READER_BUSY_JRJ => MC_READER_BUSY_JRJ,
		PS_1403_PRINT_BUFFER_BUSY => PS_1403_PRINT_BUFFER_BUSY,
		MC_PUNCH_BUSY => MC_PUNCH_BUSY,
		MC_PUNCH_BUSY_JRJ => MC_PUNCH_BUSY_JRJ,
		MC_PAPER_TAPE_READER_BUSY => MC_PAPER_TAPE_READER_BUSY,
		MC_PAPER_TAPE_READY_BUSY_JRJ => MC_PAPER_TAPE_READY_BUSY_JRJ,
		MC_I_O_CLOCK_080_090_TIME => MC_I_O_CLOCK_080_090_TIME,
		MC_I_O_CLOCK_080_090_TIME_JRJ => MC_I_O_CLOCK_080_090_TIME_JRJ,
		MS_PROGRAM_RESET_6 => MS_PROGRAM_RESET_6,
		SWITCH_ALT_PRIORITY_PL1 => SWITCH_ALT_PRIORITY_PL1,
		SWITCH_ALT_PRIORITY_PL2 => SWITCH_ALT_PRIORITY_PL2,
		SWITCH_ROT_I_O_UNIT_DK1 => SWITCH_ROT_I_O_UNIT_DK1,
		PS_PRIORITY_SW_ON => PS_PRIORITY_SW_ON,
		MS_SEL_I_O_FINISH_PULSE => MS_SEL_I_O_FINISH_PULSE,
		LAMP_15A2K03 => LAMP_15A2K03,
		LAMP_15A2K05 => LAMP_15A2K05);

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
   variable switchPosition: integer;
   variable switchValue: std_logic_vector(5 downto 0);

   begin

   -- Your test bench code

   testName := "19.10.01.1        ";

   for tt in 0 to 2**14 loop
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
      
      -- Reset latches
      
      MS_PROGRAM_RESET_6 <= '0';
      wait for 30 ns;
      MS_PROGRAM_RESET_6 <= '1';
      wait for 30 ns;
      
      check1(MS_SEL_I_O_FINISH_PULSE,'1',testName,"Finish Pulse Loop Reset");
            
		MC_READER_BUSY <= not b;
		MC_READER_BUSY_JRJ <= not c;
		PS_1403_PRINT_BUFFER_BUSY <= d;
		MC_PUNCH_BUSY <= not e;
		MC_PUNCH_BUSY_JRJ <= not f;
		MC_PAPER_TAPE_READER_BUSY <= not g;
		MC_PAPER_TAPE_READY_BUSY_JRJ <= not h;
		MC_I_O_CLOCK_080_090_TIME <= not j;
		MC_I_O_CLOCK_080_090_TIME_JRJ <= not k;
		SWITCH_ALT_PRIORITY_PL2 <= l;
		SWITCH_ALT_PRIORITY_PL1 <= not l;
		
		--  Switch should only be in one position at any given time
		--  Switch is active LOW
		
		switchValue := "000000";
		switchPosition := to_integer(unsigned(tv(13 downto 11)));
		if(switchPosition > 0 and switchPosition < 6) then
		   switchValue(switchPosition) := l;
		end if;

		SWITCH_ROT_I_O_UNIT_DK1 <= switchValue;           
      wait for 30 ns; -- Perhaps set the latch
     
      check1(PS_PRIORITY_SW_ON,SWITCH_ALT_PRIORITY_PL2,testName,"Priority Switch On"); 
      
      -- But at this point, the I/O that set the latch is still busy, so no finish pulse yet
      
      check1(MS_SEL_I_O_FINISH_PULSE,'1',testName,"No Finish Pulse - I/O in progress");
      wait for 30 ns;
      
      -- Now, wait for the I/O to "end" which should generate a finish pulse
      -- if that device is selected and the prority switch is on.

      case switchPosition is
         when 2 => g1 := b or c;
         when 3 => g1 := d;
         when 4 => g1 := e or f;
         when 5 => g1 := g or h;
         when others => g1 := '0';
      end case;
      
      g1 := g1 and l;
      
      MC_READER_BUSY <= '1';
      MC_READER_BUSY_JRJ <= '1';
      PS_1403_PRINT_BUFFER_BUSY <= '0';
      MC_PUNCH_BUSY <= '1';
      MC_PUNCH_BUSY_JRJ <= '1';
      MC_PAPER_TAPE_READER_BUSY <= '1';
      MC_PAPER_TAPE_READY_BUSY_JRJ <= '1';
      MC_I_O_CLOCK_080_090_TIME <= '1';
      MC_I_O_CLOCK_080_090_TIME_JRJ <= '1';            
      wait for 60 ns;
      
      check1(MS_SEL_I_O_FINISH_PULSE,not g1,testName,"Finish Pulse");
      
   end loop;

   assert false report "Simulation Ended NORMALLY" severity failure;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 20 ms;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY (TIMEOUT)" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

end;
