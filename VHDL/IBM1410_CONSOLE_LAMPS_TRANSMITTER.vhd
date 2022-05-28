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
           UART_OUTPUT_REQUEST : out STD_LOGIC;
           UART_OUTPUT_REQUEST_DATA : out STD_LOGIC_VECTOR (7 downto 0));
end IBM1410_CONSOLE_LAMPS_TRANSMITTER;

-- REFRESH TIME is in ns
-- CLOCKPERIOD is in ns

architecture Behavioral of IBM1410_CONSOLE_LAMPS_TRANSMITTER is

constant LAMP_SECTIONS: INTEGER := LAMP_VECTOR_BITS / 7;  -- Each lamp section is 7 bits
constant COUNTER_MAX: INTEGER := REFRESH_TIME / CLOCKPERIOD;

type lampState_type is (lamp_reset, lamp_counting, lamp_check, lamp_start,
   lamp_wait, lamp_send, lamp_grant_wait, lamp_rotate, lamp_done);

signal LAMPS: STD_LOGIC_VECTOR(LAMP_VECTOR_BITS-1 downto 0) := (others => '0');
signal COUNT: INTEGER RANGE 0 to COUNTER_MAX;
signal SECTION: INTEGER RANGE 0 to LAMP_SECTIONS;

signal lampState: lampState_type := lamp_reset;

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
            
         -- Delay between sends of lamp data to support hose
            
         when lamp_counting =>
            if COUNT = 0 then
               lampState <= lamp_check;
            else
               COUNT <= COUNT - 1;
               lampState <= lamp_counting;
            end if;
            
         -- If lamps are the same as before, wait here
         
         when lamp_check =>
            if LAMPS = LAMP_VECTOR then
               lampState <= lamp_check;
            else
               lampState <= lamp_start;
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
   
UART_OUTPUT_REQUEST <= '1' when lampState = lamp_send else '0';
UART_OUTPUT_REQUEST_DATA <= "0" &  LAMPS(6 downto 0);   
   
end Behavioral;
