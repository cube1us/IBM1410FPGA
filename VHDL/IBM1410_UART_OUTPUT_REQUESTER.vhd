----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2022 09:11:53 AM
-- Design Name: IBM1410
-- Module Name: IBM1410_UART_OUTPUT_REQUESTER - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Accepts requests from CPU data sources (console, channel, lamps) to be sent out
--   the UART to the PC support program
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
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM1410_UART_OUTPUT_REQUESTER is
    Port ( FPGA_CLK: in STD_LOGIC;
           UART_RESET: in STD_LOGIC;
           UART_OUTPUT_REQUESTER_STROBE : in STD_LOGIC;
           UART_OUTPUT_GRANT : in STD_LOGIC;
           UART_OUTPUT_DATA_IN : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST : out STD_LOGIC;
           UART_OUTPUT_DATA_OUT: out STD_LOGIC_VECTOR (7 downto 0));
end IBM1410_UART_OUTPUT_REQUESTER;

architecture Behavioral of IBM1410_UART_OUTPUT_REQUESTER is

type requesterState_type is (
   requester_idle, requester_strobing, requester_waiting, requester_granted);

signal requesterState: requesterState_type := requester_idle;

begin

requester_process: process(FPGA_CLK, UART_RESET, requesterState, UART_OUTPUT_REQUESTER_STROBE, UART_OUTPUT_GRANT) 

   begin    
   
   -- Asychronous reset
   
   if UART_RESET = '1' then
      requesterState <= requester_idle;
      UART_OUTPUT_DATA_OUT <= "00000000";
      
   elsif FPGA_CLK'event and FPGA_CLK = '1' then
      case requesterState is
      
         -- Wait for my requester (e.g., console, tape, disk, unit record, light display
         -- to strobe data for the UART to send information to PC support program
         -- When we get the strobe, latch the data as well.
      
         when requester_idle =>
            if UART_OUTPUT_REQUESTER_STROBE = '1' then
               requesterState <= requester_strobing;
               UART_OUTPUT_DATA_OUT <= UART_OUTPUT_DATA_IN;
            else
               requesterState <= requester_idle;
            end if;
            
         -- Added the following state - but is it really necessary???   
            
         when requester_strobing =>
            if UART_OUTPUT_REQUESTER_STROBE = '0' then
               requesterState <= requester_waiting;
            else
               requesterState <= requester_strobing;
            end if;
            
         -- Request received.  UART_REQUEST will go high.  Wait for the corresponding grant   
            
         when requester_waiting =>
            if UART_OUTPUT_GRANT = '1' then
               requesterState <= requester_granted;
            else
               requesterState <= requester_waiting;
            end if;
         
         -- Once we have the grant, wait until it goes away before accepting a new
         -- request.
            
         when requester_granted =>
            if UART_OUTPUT_GRANT = '1' then
               requesterState <= requester_granted;
            else
               requesterState <= requester_idle;
            end if;            
      end case;
      
   end if;
   end process;
   
   UART_OUTPUT_REQUEST <= '1' when 
      requesterState = requester_waiting
      else '0';
      
end Behavioral;
