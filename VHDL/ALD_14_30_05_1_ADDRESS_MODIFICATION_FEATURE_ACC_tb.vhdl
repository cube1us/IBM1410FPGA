-- Test Bench VHDL for IBM SMS ALD page 14.30.05.1
-- Title: ADDRESS MODIFICATION FEATURE-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/28/2020 2:41:55 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_14_30_05_1_ADDRESS_MODIFICATION_FEATURE_ACC_tb is
end ALD_14_30_05_1_ADDRESS_MODIFICATION_FEATURE_ACC_tb;

architecture behavioral of ALD_14_30_05_1_ADDRESS_MODIFICATION_FEATURE_ACC_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component ALD_14_30_05_1_ADDRESS_MODIFICATION_FEATURE_ACC
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MY_WRAP_AROUND_MODE:	 in STD_LOGIC;
		MY_LOGIC_GATE_F_1:	 in STD_LOGIC;
		MY_MEM_AR_TTHP8B:	 in STD_LOGIC;
		MY_MEM_AR_TTHP2B:	 in STD_LOGIC;
		MY_LOGIC_GATE_E:	 in STD_LOGIC;
		MY_1401_MODE_1:	 in STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_1_BIT:	 in STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_4_BIT:	 in STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_2_BIT:	 in STD_LOGIC;
		MY_MODIFY_BY_MINUS_ONE:	 in STD_LOGIC;
		MY_MODIFY_BY_PLUS_ONE:	 in STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_0_BIT:	 in STD_LOGIC;
		MY_MEM_AR_TO_ADDR_MOD_8_BIT:	 in STD_LOGIC;
		MS_ADDR_MOD_04_BIT:	 out STD_LOGIC;
		PY_1401_INSERT_14_BIT:	 out STD_LOGIC;
		PY_1401_INSERT_48_BIT:	 out STD_LOGIC;
		PY_BLOCK_TTHP:	 out STD_LOGIC;
		MS_ADDR_MOD_14_BIT:	 out STD_LOGIC;
		MS_ADDR_MOD_24_BIT:	 out STD_LOGIC;
		MS_ADDR_MOD_48_BIT:	 out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal MY_WRAP_AROUND_MODE: STD_LOGIC := '1';
	signal MY_LOGIC_GATE_F_1: STD_LOGIC := '1';
	signal MY_MEM_AR_TTHP8B: STD_LOGIC := '1';
	signal MY_MEM_AR_TTHP2B: STD_LOGIC := '1';
	signal MY_LOGIC_GATE_E: STD_LOGIC := '1';
	signal MY_1401_MODE_1: STD_LOGIC := '1';
	signal MY_MEM_AR_TO_ADDR_MOD_1_BIT: STD_LOGIC := '1';
	signal MY_MEM_AR_TO_ADDR_MOD_4_BIT: STD_LOGIC := '1';
	signal MY_MEM_AR_TO_ADDR_MOD_2_BIT: STD_LOGIC := '1';
	signal MY_MODIFY_BY_MINUS_ONE: STD_LOGIC := '1';
	signal MY_MODIFY_BY_PLUS_ONE: STD_LOGIC := '1';
	signal MY_MEM_AR_TO_ADDR_MOD_0_BIT: STD_LOGIC := '1';
	signal MY_MEM_AR_TO_ADDR_MOD_8_BIT: STD_LOGIC := '1';

	-- Outputs

	signal MS_ADDR_MOD_04_BIT: STD_LOGIC;
	signal PY_1401_INSERT_14_BIT: STD_LOGIC;
	signal PY_1401_INSERT_48_BIT: STD_LOGIC;
	signal PY_BLOCK_TTHP: STD_LOGIC;
	signal MS_ADDR_MOD_14_BIT: STD_LOGIC;
	signal MS_ADDR_MOD_24_BIT: STD_LOGIC;
	signal MS_ADDR_MOD_48_BIT: STD_LOGIC;

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

	UUT: ALD_14_30_05_1_ADDRESS_MODIFICATION_FEATURE_ACC port map(
		FPGA_CLK => FPGA_CLK,
		MY_WRAP_AROUND_MODE => MY_WRAP_AROUND_MODE,
		MY_LOGIC_GATE_F_1 => MY_LOGIC_GATE_F_1,
		MY_MEM_AR_TTHP8B => MY_MEM_AR_TTHP8B,
		MY_MEM_AR_TTHP2B => MY_MEM_AR_TTHP2B,
		MY_LOGIC_GATE_E => MY_LOGIC_GATE_E,
		MY_1401_MODE_1 => MY_1401_MODE_1,
		MY_MEM_AR_TO_ADDR_MOD_1_BIT => MY_MEM_AR_TO_ADDR_MOD_1_BIT,
		MY_MEM_AR_TO_ADDR_MOD_4_BIT => MY_MEM_AR_TO_ADDR_MOD_4_BIT,
		MY_MEM_AR_TO_ADDR_MOD_2_BIT => MY_MEM_AR_TO_ADDR_MOD_2_BIT,
		MY_MODIFY_BY_MINUS_ONE => MY_MODIFY_BY_MINUS_ONE,
		MY_MODIFY_BY_PLUS_ONE => MY_MODIFY_BY_PLUS_ONE,
		MY_MEM_AR_TO_ADDR_MOD_0_BIT => MY_MEM_AR_TO_ADDR_MOD_0_BIT,
		MY_MEM_AR_TO_ADDR_MOD_8_BIT => MY_MEM_AR_TO_ADDR_MOD_8_BIT,
		MS_ADDR_MOD_04_BIT => MS_ADDR_MOD_04_BIT,
		PY_1401_INSERT_14_BIT => PY_1401_INSERT_14_BIT,
		PY_1401_INSERT_48_BIT => PY_1401_INSERT_48_BIT,
		PY_BLOCK_TTHP => PY_BLOCK_TTHP,
		MS_ADDR_MOD_14_BIT => MS_ADDR_MOD_14_BIT,
		MS_ADDR_MOD_24_BIT => MS_ADDR_MOD_24_BIT,
		MS_ADDR_MOD_48_BIT => MS_ADDR_MOD_48_BIT);

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
   variable marToAddrMod: std_logic_vector(4 downto 0);
   variable controls: std_logic_vector(7 downto 0);
   variable b0, b1, b2, b4, b8: std_logic;
   variable p1, m1, w, f: std_logic; -- +1, -1, Wrap and Logic Gate F
   variable gate: std_logic_vector(1 to 11);

   begin

   -- Your test bench code
   
   testName := "14.18.05.1        ";
   
   for i in 0 to 31 loop

      marToAddrMod := std_logic_vector(to_unsigned(i,marToAddrMod'length));
      -- Assign bits to some brief names to use in tests later
      b0 := marToAddrMod(0);
      b1 := marToAddrMod(1);
      b2 := marToAddrMod(2);
      b4 := marToAddrMod(3);
      b8 := marToAddrMod(4);
      MY_MEM_AR_TO_ADDR_MOD_0_BIT <= NOT b0;
      MY_MEM_AR_TO_ADDR_MOD_1_BIT <= NOT b1;        
      MY_MEM_AR_TO_ADDR_MOD_2_BIT <= NOT b2;        
      MY_MEM_AR_TO_ADDR_MOD_4_BIT <= NOT b4;        
      MY_MEM_AR_TO_ADDR_MOD_8_BIT <= NOT b8;        
      
      -- Loop through MOD BY +1, -1, Wrap and LGF      
      
      for j in 0 to 255 loop
      
         controls := std_logic_vector(to_unsigned(j,controls'length));
         p1 := controls(0);
         m1 := controls(1);
         w := controls(2);
         f := controls(3);                  
         MY_LOGIC_GATE_F_1 <= not f;
         MY_WRAP_AROUND_MODE <= not w;
         MY_MODIFY_BY_PLUS_ONE <= not p1;
         MY_MODIFY_BY_MINUS_ONE <= not m1;
         MY_1401_MODE_1 <= not controls(4);
         MY_MEM_AR_TTHP2B <= not controls(5);
         MY_MEM_AR_TTHP8B <= not controls(6);
         MY_LOGIC_GATE_E <= not controls(7);         
         
         -- Now down to business
         
         gate(1) := not(w and f) and p1 and b2 and b1; -- 40K
         gate(2) := m1 and b4 and b1;
         gate(3) := p1 and b4 and b0;
         gate(4) := m1 and b4 and b2;
         gate(5) := not(w and f) and p1 and b4 and b1; -- 60K
         gate(6) := m1 and b8 and b4;
         gate(7) := p1 and b4 and b2;
         gate(8) := m1 and b8 and b0;
         gate(9) := w and f;
         gate(10) := not MY_MEM_AR_TTHP2B and not MY_MEM_AR_TTHP8B and 
            not MY_1401_MODE_1 and not MY_LOGIC_GATE_E and m1 and b8 and b2;
         gate(11) := m1 and not MY_1401_MODE_1 and not MY_LOGIC_GATE_E and b8 and b2;
                  
         wait for 30 ns;
         
         check1(MS_ADDR_MOD_04_BIT,not(gate(1) or gate(2)),testName,"1A");
         check1(PY_1401_INSERT_14_BIT,gate(10),testName,"2A");
         check1(PY_1401_INSERT_48_BIT,gate(11),testName,"3A");
         check1(PY_BLOCK_TTHP,gate(9),testName,"4A");
         check1(MS_ADDR_MOD_14_BIT,not(gate(3) or gate(10) or gate(4)),testName,"5A");
         check1(MS_ADDR_MOD_24_BIT,not(gate(5) or gate(6)),testName,"6A");
         check1(MS_ADDR_MOD_48_BIT,not(gate(7) or gate(11) or gate(8)),testName,"7A");         
         
      end loop;
   
         
   end loop;

   wait;
   end process;

-- The following is needed for older VHDL simulations to
-- terminate the simulation process.  If your environment
-- does not need it, it may be deleted.

stop_simulation: process
   begin
   wait for 500 us;  -- Determines how long your simulation runs
   assert false report "Simulation Ended NORMALLY" severity failure;
   end process;

-- END USER TEST BENCH PROCESS

end;