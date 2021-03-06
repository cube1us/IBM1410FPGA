-- Test BenchVHDL for IBM SMS ALD group BinTo2Of5
-- Title: BinTo2Of5
-- IBM Machine Name 1411
-- Generated by GenerateHDL on 8/27/2020 2:36:41 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity BinTo2Of5_tb is
end BinTo2Of5_tb;

architecture behavioral of BinTo2Of5_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component BinTo2Of5
	    Port (
		FPGA_CLK: in STD_LOGIC;
		PS_TSLT_BINARY_TO_TH_POS_2: in STD_LOGIC;
		MS_AUX_BIN_ADDER_4_BIT: in STD_LOGIC;
		PS_AUX_BIN_ADDER_8_BIT: in STD_LOGIC;
		MS_AUX_BIN_ADDER_8_BIT: in STD_LOGIC;
		PS_AUX_BIN_ADDER_4_BIT: in STD_LOGIC;
		PS_TSLT_BINARY_TO_TH_POS_1: in STD_LOGIC;
		PS_TSLT_BINARY_TO_TTH_POS: in STD_LOGIC;
		PS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		MS_ASSEMBLY_CH_BUS: in STD_LOGIC_VECTOR (6 downTo 0);
		MS_COMPAT_TSLTR_THP_0_BIT_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_B: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_C: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_D: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_E: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_0_BIT_F: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_4_BIT_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_4_BIT_B: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_B: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_1_BIT_C: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_B: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_C: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_BIT_D: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_B: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_8_BIT_C: out STD_LOGIC;
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS: out STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B: out STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A: out STD_LOGIC;
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B: out STD_LOGIC);
	end component;

	-- Inputs

	signal FPGA_CLK: STD_LOGIC := '0';
	signal PS_TSLT_BINARY_TO_TH_POS_2: STD_LOGIC := '0';
	signal MS_AUX_BIN_ADDER_4_BIT: STD_LOGIC := '1';
	signal PS_AUX_BIN_ADDER_8_BIT: STD_LOGIC := '0';
	signal MS_AUX_BIN_ADDER_8_BIT: STD_LOGIC := '1';
	signal PS_AUX_BIN_ADDER_4_BIT: STD_LOGIC := '0';
	signal PS_TSLT_BINARY_TO_TH_POS_1: STD_LOGIC := '0';
	signal PS_TSLT_BINARY_TO_TTH_POS: STD_LOGIC := '0';
	signal PS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "0000000";
	signal MS_ASSEMBLY_CH_BUS: STD_LOGIC_VECTOR (6 downTo 0) := "1111111";

	-- Outputs

	signal MS_COMPAT_TSLTR_THP_0_BIT_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_0_BIT_B: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_0_BIT_C: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_0_BIT_D: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_0_BIT_E: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_0_BIT_F: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_4_BIT_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_4_BIT_B: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_1_BIT_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_1_BIT_B: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_1_BIT_C: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_2_BIT_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_2_BIT_B: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_2_BIT_C: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_2_BIT_D: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_8_BIT_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_8_BIT_B: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_8_BIT_C: STD_LOGIC;
	signal MS_COMPAT_TSLTR_THP_2_DOT_8_BITS: STD_LOGIC;
	signal MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B: STD_LOGIC;
	signal MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A: STD_LOGIC;
	signal MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B: STD_LOGIC;

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

	UUT: BinTo2Of5 port map(
		FPGA_CLK => FPGA_CLK,
		PS_TSLT_BINARY_TO_TH_POS_2 => PS_TSLT_BINARY_TO_TH_POS_2,
		MS_AUX_BIN_ADDER_4_BIT => MS_AUX_BIN_ADDER_4_BIT,
		PS_AUX_BIN_ADDER_8_BIT => PS_AUX_BIN_ADDER_8_BIT,
		MS_AUX_BIN_ADDER_8_BIT => MS_AUX_BIN_ADDER_8_BIT,
		PS_AUX_BIN_ADDER_4_BIT => PS_AUX_BIN_ADDER_4_BIT,
		PS_TSLT_BINARY_TO_TH_POS_1 => PS_TSLT_BINARY_TO_TH_POS_1,
		PS_TSLT_BINARY_TO_TTH_POS => PS_TSLT_BINARY_TO_TTH_POS,
		PS_ASSEMBLY_CH_BUS => PS_ASSEMBLY_CH_BUS,
		MS_ASSEMBLY_CH_BUS => MS_ASSEMBLY_CH_BUS,
		MS_COMPAT_TSLTR_THP_0_BIT_A => MS_COMPAT_TSLTR_THP_0_BIT_A,
		MS_COMPAT_TSLTR_THP_0_BIT_B => MS_COMPAT_TSLTR_THP_0_BIT_B,
		MS_COMPAT_TSLTR_THP_0_BIT_C => MS_COMPAT_TSLTR_THP_0_BIT_C,
		MS_COMPAT_TSLTR_THP_0_BIT_D => MS_COMPAT_TSLTR_THP_0_BIT_D,
		MS_COMPAT_TSLTR_THP_0_BIT_E => MS_COMPAT_TSLTR_THP_0_BIT_E,
		MS_COMPAT_TSLTR_THP_0_BIT_F => MS_COMPAT_TSLTR_THP_0_BIT_F,
		MS_COMPAT_TSLTR_THP_4_BIT_A => MS_COMPAT_TSLTR_THP_4_BIT_A,
		MS_COMPAT_TSLTR_THP_4_BIT_B => MS_COMPAT_TSLTR_THP_4_BIT_B,
		MS_COMPAT_TSLTR_THP_1_BIT_A => MS_COMPAT_TSLTR_THP_1_BIT_A,
		MS_COMPAT_TSLTR_THP_1_BIT_B => MS_COMPAT_TSLTR_THP_1_BIT_B,
		MS_COMPAT_TSLTR_THP_1_BIT_C => MS_COMPAT_TSLTR_THP_1_BIT_C,
		MS_COMPAT_TSLTR_THP_2_BIT_A => MS_COMPAT_TSLTR_THP_2_BIT_A,
		MS_COMPAT_TSLTR_THP_2_BIT_B => MS_COMPAT_TSLTR_THP_2_BIT_B,
		MS_COMPAT_TSLTR_THP_2_BIT_C => MS_COMPAT_TSLTR_THP_2_BIT_C,
		MS_COMPAT_TSLTR_THP_2_BIT_D => MS_COMPAT_TSLTR_THP_2_BIT_D,
		MS_COMPAT_TSLTR_THP_8_BIT_A => MS_COMPAT_TSLTR_THP_8_BIT_A,
		MS_COMPAT_TSLTR_THP_8_BIT_B => MS_COMPAT_TSLTR_THP_8_BIT_B,
		MS_COMPAT_TSLTR_THP_8_BIT_C => MS_COMPAT_TSLTR_THP_8_BIT_C,
		MS_COMPAT_TSLTR_THP_2_DOT_8_BITS => MS_COMPAT_TSLTR_THP_2_DOT_8_BITS,
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A => MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A,
		MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B => MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B,
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A => MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A,
		MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B => MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B);

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

   begin

   -- Your test bench code
   
   testName := "14.18.11.1, 12.1  ";

   for aBit in std_logic range '0' to '1' loop
      PS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= aBit;
      MS_ASSEMBLY_CH_BUS(HDL_A_BIT) <= NOT aBit;
      for bBit in std_logic range '0' to '1' loop
         PS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= bBit;
         MS_ASSEMBLY_CH_BUS(HDL_B_BIT) <= NOT bBit;
            for bit8 in std_logic range '0' to '1' loop
               PS_AUX_BIN_ADDER_8_BIT <= bit8;
               MS_AUX_BIN_ADDER_8_BIT <= NOT bit8;
               for bit4 in std_logic range '0' to '1' loop
                  PS_AUX_BIN_ADDER_4_BIT <= bit4;
                  MS_AUX_BIN_ADDER_4_BIT <= NOT bit4;
                  
                  PS_TSLT_BINARY_TO_TH_POS_1 <= '0';
                  PS_TSLT_BINARY_TO_TH_POS_2 <= '0';
                  PS_TSLT_BINARY_TO_TTH_POS <= '0';
                  
                  wait for 30 ns;
                  
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_A,'1',testName,"0A");
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_B,'1',testName,"0B");
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_C,'1',testName,"0C");
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_D,'1',testName,"0D");
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_E,'1',testName,"0E");
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_F,'1',testName,"0F");
                  check1(MS_COMPAT_TSLTR_THP_4_BIT_A,'1',testName,"4A");
                  check1(MS_COMPAT_TSLTR_THP_4_BIT_B,'1',testName,"4B");
                  check1(MS_COMPAT_TSLTR_THP_1_BIT_A,'1',testName,"1A");
                  check1(MS_COMPAT_TSLTR_THP_1_BIT_B,'1',testName,"1B");
                  check1(MS_COMPAT_TSLTR_THP_1_BIT_C,'1',testName,"1C");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_A,'1',testName,"2A");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_B,'1',testName,"2B");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_C,'1',testName,"2C");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_D,'1',testName,"2D");
                  check1(MS_COMPAT_TSLTR_THP_8_BIT_A,'1',testName,"8A");
                  check1(MS_COMPAT_TSLTR_THP_8_BIT_B,'1',testName,"8B");
                  check1(MS_COMPAT_TSLTR_THP_8_BIT_C,'1',testName,"8C");
                  
                  check1(MS_COMPAT_TSLTR_THP_2_DOT_8_BITS,'1',testName,"AA");
                                    
                  PS_TSLT_BINARY_TO_TH_POS_1 <= '1';
                  PS_TSLT_BINARY_TO_TH_POS_2 <= '1';                  
                  
                  wait for 30 ns;
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_A,
                     NOT(bBit and not bit8 and not bit4 and not aBit),testName,"0AA");                  
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_B,
                     NOT(abit and not bit8 and not bit4 and not bbit),testName,"0BA");                  
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_C,
                     NOT(abit and bit8 and bbit and not bit4),testName,"0CA");                  
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_D,
                     NOT(bit4 and bit8 and not abit),testName,"0DA");                  
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_E,
                     NOT(bit8 and not bbit and not abit),testName,"0EA");                  
                  check1(MS_COMPAT_TSLTR_THP_0_BIT_F,
                     NOT(bit4 and not bbit and not abit),testName,"0FA");
                     
                  check1(MS_COMPAT_TSLTR_THP_4_BIT_A,NOT(not bit8 and bit4),testName,"4AA");                  
                  check1(MS_COMPAT_TSLTR_THP_4_BIT_B,NOT(bit4 and bbit),testName,"4BA");
                  
                  check1(MS_COMPAT_TSLTR_THP_1_BIT_A,NOT(not bit4 and abit),testName,"1AA");
                  check1(MS_COMPAT_TSLTR_THP_1_BIT_B,NOT(abit and not bbit),testName,"1BA");
                  check1(MS_COMPAT_TSLTR_THP_1_BIT_C,NOT(abit and bit8),testName,"1CA");
                  
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_A,NOT(bit8 and bit4 and not bbit),testName,"2AA");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_B,
                    NOT(not bit8 and bbit and not abit),testName,"2BA");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_C,
                    NOT(not bit8 and not abit and not bit4),testName,"2CA");
                  check1(MS_COMPAT_TSLTR_THP_2_BIT_D,NOT(not bit8 and not bit4 and bbit),
                    testName,"2BD");

                  check1(MS_COMPAT_TSLTR_THP_8_BIT_A,
                     NOT(bit8 and not bit4 and not bbit),testName,"8AA");
                  check1(MS_COMPAT_TSLTR_THP_8_BIT_B,
                        NOT(not bbit and not bit4 and not abit),testName,"8BA");
                  check1(MS_COMPAT_TSLTR_THP_8_BIT_C,
                           NOT(bit4 and bbit and abit and not bit8),testName,"8CA");

                  check1(MS_COMPAT_TSLTR_THP_2_DOT_8_BITS,
                           NOT(bit8 and bbit and not bit4 and not abit),testName,"AAA");
                           
                  check1(MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A,'1',testName,"2.8A A");
                  check1(MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B,'1',testName,"2.8B A");
                  check1(MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A,'1',testName,"0.1A A");
                  check1(MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B,'1',testName,"0.1B A");

                  PS_TSLT_BINARY_TO_TTH_POS <= '1';
                  wait for 30 ns;
                  
                  check1(MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_A,
                     NOT(not bit4 and not bbit),testName,"2.8A B");
                  check1(MS_COMPAT_TSLTR_TTHP_2_DOT_8_BITS_B,
                     NOT(not bit8),testName,"2.8B B");
                  check1(MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_A,
                     NOT(bit4 and bit8),testName,"0.1A B");
                  check1(MS_COMPAT_TSLTR_TTHP_0_DOT_1_BITS_B,
                     NOT(bit8 and bbit),testName,"0.1B B");                                    
                                       
               end loop;               
            end loop;
      end loop;
   end loop;   

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
