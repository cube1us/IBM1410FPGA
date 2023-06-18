----------------------------------------------------------------------------------
-- Company: The Computer Collection 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/03/2022 08:26:09 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_MEMORY_LOADER_RECEIVER_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench for the IBM 1410 Console Switch Receiver Component
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410_MEMORY_LOADER_RECEIVER_tb is
--  Port ( );
end IBM1410_MEMORY_LOADER_RECEIVER_tb;

architecture Behavioral of IBM1410_MEMORY_LOADER_RECEIVER_tb is

   component IBM1410_MEMORY_LOADER_RECEIVER
      Port ( FPGA_CLK : in STD_LOGIC;
             RESET : in STD_LOGIC;
             LOADER_FIFO_WRITE_ENABLE : in STD_LOGIC;
             LOADER_FIFO_WRITE_DATA : in STD_LOGIC_VECTOR (7 downto 0);
             IBM1410_DIRECT_MEMORY_ADDRESS: out STD_LOGIC_VECTOR(13 downto 0);
             IBM1410_LOADER_DIRECT_MEMORY_ENABLE:  out STD_LOGIC_VECTOR(3 downto 0);
             IBM1410_LOADER_DIRECT_MEMORY_WRITE_ENABLE:  out STD_LOGIC_VECTOR(3 downto 0);
             IBM1410_DIRECT_MEMORY_WRITE_DATA: out STD_LOGIC_VECTOR(7 downto 0)
       );
    end component;

   component IBM1410Memory is
   Port (
      FPGA_CLK: in STD_LOGIC;
      MY_X_RD_1: in STD_LOGIC;
      MY_X_WR_1: in STD_LOGIC;
      MY_MEM_AR_NOT_UP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_TP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_HP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_THP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MY_MEM_AR_NOT_TTHP_BUS: in STD_LOGIC_VECTOR(4 downto 0);
      MV_INH_CHAR_0_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_0_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_1_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_1_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_2_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_2_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_3_B1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      MV_INH_CHAR_3_D1_BUS: in STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_0_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_1_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_2_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      PV_SENSE_CHAR_3_BUS: out STD_LOGIC_VECTOR(7 downto 0);
      
      IBM1410_DIRECT_MEMORY_ADDRESS:      in STD_LOGIC_VECTOR(13 downto 0);
      IBM1410_DIRECT_MEMORY_ENABLE:       in STD_LOGIC_VECTOR(3 downto 0);
      IBM1410_DIRECT_MEMORY_WRITE_ENABLE: in STD_LOGIC_VECTOR(3 downto 0);
      IBM1410_DIRECT_MEMORY_WRITE_DATA:   in STD_LOGIC_VECTOR(7 downto 0);
      IBM1410_DIRECT_MEMORY_READ_DATA_0:    out STD_LOGIC_VECTOR(7 downto 0);
      IBM1410_DIRECT_MEMORY_READ_DATA_1:    out STD_LOGIC_VECTOR(7 downto 0);
      IBM1410_DIRECT_MEMORY_READ_DATA_2:    out STD_LOGIC_VECTOR(7 downto 0);
      IBM1410_DIRECT_MEMORY_READ_DATA_3:    out STD_LOGIC_VECTOR(7 downto 0) );
      
   end component;


signal FPGA_CLK: STD_LOGIC := '0';
signal RESET: STD_LOGIC := '0';
signal FIFO_WRITE_ENABLE: STD_LOGIC := '0';
signal FIFO_WRITE_DATA: STD_LOGIC_VECTOR (7 downto 0) := "00000000";

-- signals for direct memory access from PC console support program
   
signal IBM1410_DIRECT_MEMORY_ADDRESS:      STD_LOGIC_VECTOR(13 downto 0);
signal IBM1410_DIRECT_MEMORY_ENABLE:       STD_LOGIC_VECTOR(3 downto 0);
signal IBM1410_DIRECT_MEMORY_WRITE_ENABLE: STD_LOGIC_VECTOR(3 downto 0);
signal IBM1410_DIRECT_MEMORY_WRITE_DATA:   STD_LOGIC_VECTOR(7 downto 0);
signal IBM1410_DIRECT_MEMORY_READ_DATA_0:  STD_LOGIC_VECTOR(7 downto 0);
signal IBM1410_DIRECT_MEMORY_READ_DATA_1:  STD_LOGIC_VECTOR(7 downto 0);
signal IBM1410_DIRECT_MEMORY_READ_DATA_2:  STD_LOGIC_VECTOR(7 downto 0);
signal IBM1410_DIRECT_MEMORY_READ_DATA_3:  STD_LOGIC_VECTOR(7 downto 0);

signal MY_X_RD_1: STD_LOGIC := '1'; -- Not using port a of memory here...
signal MY_X_WR_1: STD_LOGIC := '1'; -- Not using port a of memory here...

signal MY_MEM_AR_NOT_UP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "00000";
signal MY_MEM_AR_NOT_TP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "00000";
signal MY_MEM_AR_NOT_HP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "00000";
signal MY_MEM_AR_NOT_THP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "00000";
signal MY_MEM_AR_NOT_TTHP_BUS: STD_LOGIC_VECTOR (4 downTo 0) := "00000";
signal MV_INH_CHAR_0_D1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_0_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_1_D1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_1_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_2_D1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_2_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_3_D1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal MV_INH_CHAR_3_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

signal PV_SENSE_CHAR_0_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal PV_SENSE_CHAR_1_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal PV_SENSE_CHAR_2_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";
signal PV_SENSE_CHAR_3_B1_BUS: STD_LOGIC_VECTOR (7 downTo 0) := "00000000";

constant ADDRESS_MARK: STD_LOGIC_VECTOR(2 downto 0) := "100";
constant END_MARK:     STD_LOGIC_VECTOR(2 downto 0) := "111";
constant DATA_0_MARK:  STD_LOGIC_VECTOR(2 downto 0) := "010";
constant DATA_1_MARK:  STD_LOGIC_VECTOR(2 downto 0) := "001";
signal   ADDRESS:      STD_LOGIC_VECTOR(15 downto 0);  -- Makes doing a loop easier
signal   BANK:         STD_LOGIC_VECTOR(3 downto 0);
signal   DATA:         STD_LOGIC_VECTOR(7 downto 0);

-- Multiplex memory enable with OR so either the loader or TB can set it..;
signal   MY_DIRECT_MEMORY_ENABLE:     STD_LOGIC_VECTOR(3 downto 0);
signal   LOADER_DIRECT_MEMORY_ENABLE: STD_LOGIC_VECTOR(3 downto 0);

signal   MY_DIRECT_MEMORY_ADDRESS:     STD_LOGIC_VECTOR(13 downto 0);
signal   LOADER_DIRECT_MEMORY_ADDRESS: STD_LOGIC_VECTOR(13 downto 0);

signal addr: integer range 0 to 10000;
signal dat:  integer range 0 to 256;
signal bk:   integer range 0 to 3;
signal count: integer range 0 to 40000;
signal dataRead: STD_LOGIC_VECTOR(7 downto 0);
signal myreading: STD_LOGIC := '0';

procedure check1(
    checked: in STD_LOGIC;
    val: in STD_LOGIC;
    testname: in string;
    test: in string) is
    begin    
    assert checked = val report testname & " (" & test & ") failed." severity failure;
    end procedure;    
        
   
begin

UUT: IBM1410_MEMORY_LOADER_RECEIVER
    Port MAP ( 
       FPGA_CLK => FPGA_CLK,
       RESET => RESET,
       LOADER_FIFO_WRITE_ENABLE => FIFO_WRITE_ENABLE,
       LOADER_FIFO_WRITE_DATA => FIFO_WRITE_DATA,
       IBM1410_DIRECT_MEMORY_ADDRESS => LOADER_DIRECT_MEMORY_ADDRESS,
       IBM1410_LOADER_DIRECT_MEMORY_ENABLE => LOADER_DIRECT_MEMORY_ENABLE,
       IBM1410_LOADER_DIRECT_MEMORY_WRITE_ENABLE => IBM1410_DIRECT_MEMORY_WRITE_ENABLE,
       IBM1410_DIRECT_MEMORY_WRITE_DATA => IBM1410_DIRECT_MEMORY_WRITE_DATA
    );

-- Instantiate Memory

memory: IBM1410Memory 
   Port map(
      FPGA_CLK => FPGA_CLK,
      MY_X_RD_1 => MY_X_RD_1,
      MY_X_WR_1 => MY_X_WR_1, 
      -- MY_X_WR_1 => '1',  -- disable writes for now
      MY_MEM_AR_NOT_UP_BUS => MY_MEM_AR_NOT_UP_BUS,
      MY_MEM_AR_NOT_TP_BUS => MY_MEM_AR_NOT_TP_BUS,
      MY_MEM_AR_NOT_HP_BUS => MY_MEM_AR_NOT_HP_BUS,
      MY_MEM_AR_NOT_THP_BUS => MY_MEM_AR_NOT_THP_BUS,
      MY_MEM_AR_NOT_TTHP_BUS => MY_MEM_AR_NOT_TTHP_BUS,
      MV_INH_CHAR_0_B1_BUS => MV_INH_CHAR_0_B1_BUS,
      MV_INH_CHAR_0_D1_BUS => MV_INH_CHAR_0_D1_BUS,
      MV_INH_CHAR_1_B1_BUS => MV_INH_CHAR_1_B1_BUS,
      MV_INH_CHAR_1_D1_BUS => MV_INH_CHAR_1_D1_BUS,
      MV_INH_CHAR_2_B1_BUS => MV_INH_CHAR_2_B1_BUS,
      MV_INH_CHAR_2_D1_BUS => MV_INH_CHAR_2_D1_BUS,
      MV_INH_CHAR_3_B1_BUS => MV_INH_CHAR_3_B1_BUS,
      MV_INH_CHAR_3_D1_BUS => MV_INH_CHAR_3_D1_BUS,
      PV_SENSE_CHAR_0_BUS => PV_SENSE_CHAR_0_B1_BUS,
      PV_SENSE_CHAR_1_BUS => PV_SENSE_CHAR_1_B1_BUS,
      PV_SENSE_CHAR_2_BUS => PV_SENSE_CHAR_2_B1_BUS,
      PV_SENSE_CHAR_3_BUS => PV_SENSE_CHAR_3_B1_BUS,

      IBM1410_DIRECT_MEMORY_ADDRESS      => IBM1410_DIRECT_MEMORY_ADDRESS,
      IBM1410_DIRECT_MEMORY_ENABLE       => IBM1410_DIRECT_MEMORY_ENABLE,  
      IBM1410_DIRECT_MEMORY_WRITE_ENABLE => IBM1410_DIRECT_MEMORY_WRITE_ENABLE,
      IBM1410_DIRECT_MEMORY_WRITE_DATA   => IBM1410_DIRECT_MEMORY_WRITE_DATA,
      IBM1410_DIRECT_MEMORY_READ_DATA_0  => IBM1410_DIRECT_MEMORY_READ_DATA_0,
      IBM1410_DIRECT_MEMORY_READ_DATA_1  => IBM1410_DIRECT_MEMORY_READ_DATA_1,
      IBM1410_DIRECT_MEMORY_READ_DATA_2  => IBM1410_DIRECT_MEMORY_READ_DATA_2,
      IBM1410_DIRECT_MEMORY_READ_DATA_3  => IBM1410_DIRECT_MEMORY_READ_DATA_3 );


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

uut_prociess: process

   variable testName: string(1 to 18);
   
   begin
   
   testName := "1410 LOADER       ";
   
   -- Initial reaset
   RESET <= '1';
   wait for 30 ns;
   RESET <= '0';
   wait for 30 ns;
   MY_DIRECT_MEMORY_ENABLE <= "0000";
   
   wait for 10 ns;
   
   -- FIRST test - write 0, 1, 4, 8, ... to locations 0, 1, 2, 3...
   
   -- Send Address of 00000
   
   addr <= 0;
   bk <= 1;  -- 0 to 9999
   dat <= 0;
   count <= 8;
      
   wait for 20 ns;
     
   ADDRESS <= std_logic_vector(to_unsigned(addr,ADDRESS'length));
   BANK <= std_logic_vector(to_unsigned(bk,BANK'length));
   
   wait for 20 ns;

   -- Send address bank (which 10K bank)
     
   FIFO_WRITE_DATA <= "0" & ADDRESS_MARK & BANK;
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;      
     
   -- Send address within the bank
     
   for a in 3 downto 0 loop
      FIFO_WRITE_DATA <= "0" & ADDRESS_MARK & ADDRESS(a*4+3 downto a*4);
      FIFO_WRITE_ENABLE <= '1';
      wait for 20 ns;
      FIFO_WRITE_ENABLE <= '0';
      wait for 20 ns;      
   end loop;
   
   wait for 10us;  -- A bit longer than it would actually take to send one byte @ 115,000 bps

   
   for n in 0 to count loop
   
      -- Send next data
   
      DATA <= std_logic_vector(to_unsigned(dat,DATA'length));
      wait for 20 ns;
      FIFO_WRITE_DATA <= "0" & DATA_0_MARK & DATA(7 downto 4);
      FIFO_WRITE_ENABLE <= '1';
      wait for 20ns;
      FIFO_WRITE_ENABLE <= '0';
      wait for 20ns; 
      FIFO_WRITE_DATA <= "0" & DATA_1_MARK & DATA(3 downto 0);
      FIFO_WRITE_ENABLE <= '1';
      wait for 20ns;
      FIFO_WRITE_ENABLE <= '0';
      wait for 20ns; 
      
      wait for 10us; 
           
      if(dat = 0) then
         dat <= 1;
      else
         dat <= dat*2;
      end if;

      wait for 10 us;

   end loop;
   
   FIFO_WRITE_DATA <= "0" & END_MARK & "0000";   
   FIFO_WRITE_ENABLE <= '1';
   wait for 20ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20ns; 
   
   wait for 1 ms;
   
   -- Now, use the direct memory port to read it back (easier than the
   -- normal IBM 1410 port a...

   addr <= 0;
   bk <= 1;  -- 0 to 9999
   count <= 8;
   dat <= 0;
   myReading <= '1';
   
   wait for 20 ns;

   for n in 0 to count loop
      MY_DIRECT_MEMORY_ADDRESS <= 
         std_logic_vector(to_unsigned(addr,MY_DIRECT_MEMORY_ADDRESS'length));
      wait for 20 ns;
      MY_DIRECT_MEMORY_ENABLE(bk-1) <= '1';
      wait for 20 ns;
      -- This data should come out from bank 0 and should match...
      dataRead <= IBM1410_DIRECT_MEMORY_READ_DATA_0;
      wait for 20 ns;
      MY_DIRECT_MEMORY_ENABLE(bk-1) <= '0';
      assert dataRead = std_logic_vector(to_unsigned(dat,dataRead'length)) report
         "First test unequal Data compare" severity error;
         
      if(dat = 0) then
         dat <= 1;
      else
         dat <= dat*2;
      end if;
      
      addr <= addr + 1;
      wait for 20 ns;

   end loop;
      
      
   -- Second test, write the inverse of the first test to locations
   -- 10000, 10001, ...
   
   -- Send Address of 10000
   
   addr <= 0000;
   bk <= 2;  -- 10000 to 19999
   dat <= 0;
   count <= 8;
   myreading <= '0';
      
   wait for 20 ns;
     
   ADDRESS <= std_logic_vector(to_unsigned(addr,ADDRESS'length));
   BANK <= std_logic_vector(to_unsigned(bk,BANK'length));
   
   wait for 20 ns;

   -- Send address bank (which 10K bank)
     
   FIFO_WRITE_DATA <= "0" & ADDRESS_MARK & BANK;
   FIFO_WRITE_ENABLE <= '1';
   wait for 20 ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20 ns;      
     
   -- Send address within the bank
     
   for a in 3 downto 0 loop
      FIFO_WRITE_DATA <= "0" & ADDRESS_MARK & ADDRESS(a*4+3 downto a*4);
      FIFO_WRITE_ENABLE <= '1';
      wait for 20 ns;
      FIFO_WRITE_ENABLE <= '0';
      wait for 20 ns;      
   end loop;
   
   wait for 10us;  -- A bit longer than it would actually take to send one byte @ 115,000 bps

   
   for n in 0 to count loop
   
      -- Send next data
   
      DATA <= not std_logic_vector(to_unsigned(dat,DATA'length));
      wait for 20 ns;
      FIFO_WRITE_DATA <= "0" & DATA_0_MARK & DATA(7 downto 4);
      FIFO_WRITE_ENABLE <= '1';
      wait for 20ns;
      FIFO_WRITE_ENABLE <= '0';
      wait for 20ns; 
      FIFO_WRITE_DATA <= "0" & DATA_1_MARK & DATA(3 downto 0);
      FIFO_WRITE_ENABLE <= '1';
      wait for 20ns;
      FIFO_WRITE_ENABLE <= '0';
      wait for 20ns; 
      
      wait for 10us;  -- 
           
      if(dat = 0) then
         dat <= 1;
      else
         dat <= dat*2;
      end if;

      wait for 10 us;

   end loop;
   
   FIFO_WRITE_DATA <= "0" & END_MARK & "0000";   
   FIFO_WRITE_ENABLE <= '1';
   wait for 20ns;
   FIFO_WRITE_ENABLE <= '0';
   wait for 20ns; 
   
   wait for 1 ms;
   
   -- Now, use the direct memory port to read it back (easier than the
   -- normal IBM 1410 port a...
   
   -- First, read back the data from 00000 to make sure it did NOT change

   addr <= 0;
   bk <= 1;  -- 0 to 9999
   count <= 8;
   dat <= 0;
   myReading <= '1';
   
   wait for 20 ns;

   for n in 0 to count loop
      MY_DIRECT_MEMORY_ADDRESS <= 
         std_logic_vector(to_unsigned(addr,MY_DIRECT_MEMORY_ADDRESS'length));
      wait for 20 ns;
      MY_DIRECT_MEMORY_ENABLE(bk-1) <= '1';
      wait for 20 ns;
      -- This data should come out from bank 0 and should match...
      dataRead <= IBM1410_DIRECT_MEMORY_READ_DATA_0;
      wait for 20 ns;
      MY_DIRECT_MEMORY_ENABLE(bk-1) <= '0';
      assert dataRead = std_logic_vector(to_unsigned(dat,dataRead'length)) report
         "Second test Bank 0 unequal Data compare" severity error;
         
      if(dat = 0) then
         dat <= 1;
      else
         dat <= dat*2;
      end if;
      
      addr <= addr + 1;
      wait for 20 ns;

   end loop;
   
   -- Now compare the data in the second bank.

   addr <= 0;
   bk <= 2;  -- 10000 to 19999
   count <= 8;
   dat <= 0;
   myReading <= '1';
   
   wait for 20 ns;

   for n in 0 to count loop
      MY_DIRECT_MEMORY_ADDRESS <= 
         std_logic_vector(to_unsigned(addr,MY_DIRECT_MEMORY_ADDRESS'length));
      wait for 20 ns;
      MY_DIRECT_MEMORY_ENABLE(bk-1) <= '1';
      wait for 20 ns;
      -- This data should come out from bank 1 and should match...
      dataRead <= IBM1410_DIRECT_MEMORY_READ_DATA_1;
      wait for 20 ns;
      MY_DIRECT_MEMORY_ENABLE(bk-1) <= '0';
      assert dataRead = not std_logic_vector(to_unsigned(dat,dataRead'length)) report
         "Second test second bank unequal Data compare" severity error;
         
      if(dat = 0) then
         dat <= 1;
      else
         dat <= dat*2;
      end if;
      
      addr <= addr + 1;
      wait for 20 ns;

   end loop;
      

   assert false report "Simulation ended SUCCESSFULLY" severity failure;
   
   end process;
   
-- Set up multiplexed non-simulatneous memory reading...

IBM1410_DIRECT_MEMORY_ENABLE <= 
   LOADER_DIRECT_MEMORY_ENABLE OR MY_DIRECT_MEMORY_ENABLE;
   
IBM1410_DIRECT_MEMORY_ADDRESS <=
   MY_DIRECT_MEMORY_ADDRESS when myReading = '1' else
   LOADER_DIRECT_MEMORY_ADDRESS;

end Behavioral;
