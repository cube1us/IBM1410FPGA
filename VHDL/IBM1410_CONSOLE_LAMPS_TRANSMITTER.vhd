----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 04/22/2022 07:59:09 AM
-- Design Name: IBM 1410 FPGA
-- Module Name: IBM1410_CONSOLE_LAMPS_TRANSMITTER - Behavioral
-- Project Name: IBM 1410
-- Target Devices: 
-- Tool Versions: 
-- Description: This component arranges for the transmission of the IBM 1410 lamps
--    Contained in the incoming lamp vector to the UART subsystem.
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410_CONSOLE_LAMPS_TRANSMITTER is
    Generic(LAMP_VECTOR_BITS: INTEGER; 
            REFRESH_TIME: INTEGER;
            CLOCKPERIOD: INTEGER);
    Port ( FPGA_CLK: in STD_LOGIC;
           RESET : in STD_LOGIC;
           LAMP_SUPPRESSION: in STD_LOGIC;
           LAMP_VECTOR : in STD_LOGIC_VECTOR (LAMP_VECTOR_BITS-1 downto 0);
           UART_OUTPUT_GRANT: in STD_LOGIC;           
           UART_OUTPUT_REQUEST : inout STD_LOGIC;
           UDP_OUTPUT_FLUSH: out STD_LOGIC;
           UART_OUTPUT_REQUEST_DATA : out STD_LOGIC_VECTOR (7 downto 0));
end IBM1410_CONSOLE_LAMPS_TRANSMITTER;

-- REFRESH TIME is in ns
-- CLOCKPERIOD is in ns

architecture Behavioral of IBM1410_CONSOLE_LAMPS_TRANSMITTER is

constant LAMP_SECTIONS: INTEGER := LAMP_VECTOR_BITS / 7;  -- Each lamp section is 7 bits
constant COUNTER_MAX: INTEGER := REFRESH_TIME / CLOCKPERIOD;

-- Lamp sync vector - with OUR ID flag stuck on the front.
constant LAMP_SYNC_COUNT: INTEGER := 5;
constant LAMP_SYNC_INIT: std_logic_vector((LAMP_SYNC_COUNT * 8)-1 downto 0) := X"3F003F003F";

type lampState_type is (
   lamp_reset, 
   lamp_counting, 
   lamp_check, 
   lamp_sync_start,
   lamp_sync_wait,
   lamp_sync_send,
   lamp_sync_grant_wait,
   lamp_sync_rotate,
   lamp_start,
   lamp_wait, 
   lamp_send, 
   lamp_grant_wait, 
   lamp_rotate, 
   lamp_done);

signal LAMPS: STD_LOGIC_VECTOR(LAMP_VECTOR_BITS-1 downto 0) := (others => '0');
signal COUNT: INTEGER RANGE 0 to COUNTER_MAX;
signal SECTION: INTEGER RANGE 0 to LAMP_SECTIONS;
signal lampSyncCounter: integer RANGE 0 to LAMP_SYNC_COUNT;

signal lampState: lampState_type := lamp_reset;

signal lampSyncVector: std_logic_vector((LAMP_SYNC_COUNT * 8)-1 downto 0) := LAMP_SYNC_INIT;
signal lampSyncData: std_logic_vector(7 downto 0);

begin

lamp_process: process(FPGA_CLK, RESET, LAMP_VECTOR, UART_OUTPUT_GRANT, LAMP_VECTOR)

   begin
   
   -- Asynchronous Reset
   
   if RESET = '1' then
      lampState <= lamp_reset;
   
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
   
      case lampState is
      
         when lamp_reset =>
            COUNT <= COUNTER_MAX;
            if LAMP_SUPPRESSION = '1' then
               lampState <= lamp_reset;
            else
               lampState <= lamp_counting;
            end if;
            
         -- Delay between sends of lamp data to support host
            
         when lamp_counting =>
            if COUNT = 0 then
               lampState <= lamp_check;
            else
               COUNT <= COUNT - 1;
               lampState <= lamp_counting;
            end if;
            
         -- If lamps are the same as before, wait here, otherwise
         -- initialize the data we need to send the sync bytes and move on.
         
         when lamp_check =>
            if LAMPS = LAMP_VECTOR then
               lampState <= lamp_check;
            else
               lampSyncCounter <= LAMP_SYNC_COUNT;
               lampSyncVector <= LAMP_SYNC_INIT;
               lampState <= lamp_sync_start;
            end if;
            
         -- Send a sequence of sync bytes before the start of each set of lamp data
         
         -- Start by copying the low 7 bits from the sync vector in prep to send it.
         
         when lamp_sync_start =>
            lampSyncData <= lampSyncVector(7 downto 0);
            lampState <= lamp_sync_wait;
            
         -- Make sure any previous grant is gone...
         
         when lamp_sync_wait =>
            if UART_OUTPUT_GRANT = '0' then
               lampState <= lamp_sync_send;
            else
               lampState <= lamp_sync_wait;
            end if;
            
         -- send the current sync byte: just raises request
         
         when lamp_sync_send =>
            lampSyncCounter <= lampSyncCounter - 1;
            lampState <= lamp_sync_grant_wait;
            
         -- Wait for the grant before looping back..
            
         when lamp_sync_grant_wait =>
            if UART_OUTPUT_GRANT = '1' then
               lampState <= lamp_sync_rotate;
            else
               lampState <= lamp_sync_grant_wait;
            end if;
            
         -- Shift the sync vector and see if we are done with sync data
               
         when lamp_sync_rotate =>
            lampSyncVector <= X"00" & lampSyncVector((LAMP_SYNC_COUNT * 8)-1 downto 8);
            if lampSyncCounter = 0 then
               lampState <= lamp_start;
            else
               lampState <= lamp_sync_start;
            end if;            
            
         -- Copy the lamp vector in preparation for rotations
         
         when lamp_start =>
            LAMPS <= LAMP_VECTOR;
            SECTION <= LAMP_SECTIONS;
            lampState <= lamp_wait;
 
         when lamp_wait =>
            if UART_OUTPUT_GRANT = '0' then
               lampState <= lamp_send;
            else
               lampState <= lamp_wait;
            end if;
            
         when lamp_send =>
            lampState <= lamp_grant_wait;
            
         when lamp_grant_wait =>
            if UART_OUTPUT_GRANT = '1' then
               lampState <= lamp_rotate;
            else
               lampState <= lamp_grant_wait;
            end if;
               
          when lamp_rotate =>
             SECTION <= SECTION - 1;
             -- Rotate lamps right 7 bits
             -- We rotate so LAMPS ends up where it started for later compare for changes
             LAMPS <= LAMPS(6 downto 0) & LAMPS(LAMP_VECTOR_BITS-1 downto 7);
             lampState <= lamp_done;
           
          when lamp_done =>
             if SECTION = 0 then
                lampState <= lamp_reset;
             else
                lampState <= lamp_wait;
             end if;
            
      end case;
   
   end if;
   
   end process;
   
UART_OUTPUT_REQUEST <= 
   '1' when lampState = lamp_send or lampState = lamp_sync_send 
   else '0';
   
UDP_OUTPUT_FLUSH <= '1' when UART_OUTPUT_REQUEST = '1' and
   SECTION = 1
   else '0';
   
   
   
UART_OUTPUT_REQUEST_DATA <= 
   "0" &  LAMPS(6 downto 0) when lampState = lamp_send 
   else lampSyncData when lampstate = lamp_sync_send
   else X"00";   
   
end Behavioral;
