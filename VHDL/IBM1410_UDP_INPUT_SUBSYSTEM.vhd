----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 05/01/2022 05:28:38 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_UDP_INPUT_SUBSYSTEM - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: This module accepts input from the IBM1410_UDP_INPUT_UART
--    comopnent (from the host computer) and distributes it to other \
--    subystems in the FPGA, such as switches, console input, auto memory load, 
--    card reader(s),  tape drives and disk drives.
--    Each such subsystem is required to have a FIFO.
--
-- Copied from IBM_1410_UART_INPUT_SUBSYSTEM
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


entity IBM1410_UDP_INPUT_SUBSYSTEM is

    GENERIC (
       UDP_INPUT_FIFO_COUNT: Integer := 8
       );
    Port ( 
       FPGA_CLK: in STD_LOGIC;
       RESET: in STD_LOGIC;
       -- Interface to UART-LIKE UDP INTERFACE
       UDP_UART_RX_DATA_READY: out STD_LOGIC;  -- Indicates this component ready for data
       UDP_UART_RX_DATA_VALID: in  STD_LOGIC;  -- Indicates a byte of UDP data available
       UDP_UART_RX_BYTE: in STD_LOGIC_VECTOR(7 downto 0); -- A byte of UDP data
       UDP_UART_RX_PACKET_END: in STD_LOGIC;   -- Indicates end of packet (not currently used)
       -- Interface to the IBM 1410 FPGA I/O components.  They are required to have FIFOs
       -- large enough that this component does NOT need to wait for them
       UDP_INPUT_FIFO_WRITE_ENABLE : out STD_LOGIC_VECTOR (UDP_INPUT_FIFO_COUNT-1 downto 0);
       UDP_INPUT_FIFO_WRITE_DATA: out STD_LOGIC_VECTOR(7 downto 0);
       UDP_INPUT_CURRENT_STREAM: out STD_LOGIC_VECTOR(7 downto 0) 
       );
end IBM1410_UDP_INPUT_SUBSYSTEM;

architecture Behavioral of IBM1410_UDP_INPUT_SUBSYSTEM is

   -- These need to move one level up!  (They are really just documentation at this point)

   constant SWITCH_FIFO_INDEX: INTEGER := 0;
   constant SWITCH_FIFO_FLAG:  STD_LOGIC_VECTOR(7 downto 0) := "10000000";
   
   constant CONSOLE_INPUT_FIFO_INDEX: INTEGER := 1;
   constant CONSOLE_INPUT_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000001";
   
   constant MEMORY_LOAD_FIFO_INDEX: INTEGER := 2;
   constant MEMORY_LOAD_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000010";
   
   constant TAPE_INPUT_CH2_FIFO_INDEX: INTEGER := 3;
   constant TAPE_INPUT_CH2_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000011";

   constant TAPE_INPUT_CH1_FIFO_INDEX: INTEGER := 4;
   constant TAPE_INPUT_CH1_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000100";

   constant CARD_READER_CH1_FIFO_INDEX: INTEGER := 5; 
   constant CARD_READER_CH1_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000101";
      
   constant DISK_INPUT_CH1_FIFO_INDEX: INTEGER := 6;
   constant DISK_INPUT_CH1_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000110";

   constant DISK_INPUT_CH2_FIFO_INDEX: INTEGER := 7;
   constant DISK_INPUT_CH2_FIFO_FLAG: STD_LOGIC_VECTOR(7 downto 0) := "10000111";

   type inputState_type is (
      input_Reset, input_WaitForChar, input_Strobe, input_CharDone);

   signal inputState: inputState_Type := input_Reset;
  
   signal INPUT_FIFO_ENABLES: STD_LOGIC_VECTOR(UDP_INPUT_FIFO_COUNT-1 downto 0) := (others => '0');
   signal INPUT_FIFO_DATA: STD_LOGIC_VECTOR(7 downto 0);
   signal INPUT_CURRENT_STREAM: STD_LOGIC_VECTOR(7 downto 0);
   
   -- In the Serial UART based version of this component, this module instantiated the 
   -- Serial port UART.  With this component, that would be unnecessarily complex, so it
   -- is done in the paretn module

begin

input_process: process(FPGA_CLK, RESET, inputState, UDP_UART_RX_DATA_VALID, 
   UDP_UART_RX_BYTE)

   begin

   if RESET = '1' then
      inputState <= input_Reset;
   elsif FPGA_CLK'event and FPGA_CLK = '1' then   
      case inputState is
   
      when input_Reset =>
         INPUT_CURRENT_STREAM <= "11111111";
         INPUT_FIFO_ENABLES <= (others => '0');
         inputState <= input_WaitForChar;
         UDP_UART_RX_DATA_READY <= '1';
      
      when input_WaitForChar =>
         if UDP_UART_RX_DATA_VALID = '1' then
            UDP_UART_RX_DATA_READY <= '0';
            if (UDP_UART_RX_BYTE and "10000000") = "10000000" then
               INPUT_CURRENT_STREAM <= UDP_UART_RX_BYTE and "01111111";
               inputState <= input_CharDone;            
            else
               INPUT_FIFO_DATA <= UDP_UART_RX_BYTE;
               inputState <= input_Strobe;
            end if;
         else
            UDP_UART_RX_DATA_READY <= '1';
            inputState <= input_WaitForChar;
         end if;
      
      when input_Strobe =>
         UDP_UART_RX_DATA_READY <= '0';
         case INPUT_CURRENT_STREAM is
         when "00000000" =>
            INPUT_FIFO_ENABLES <= (0 => '1', others => '0');
         when "00000001" =>
            INPUT_FIFO_ENABLES <= (1 => '1', others => '0');
         when "00000010" =>
            INPUT_FIFO_ENABLES <= (2 => '1', others => '0');
         when "00000011" =>
            INPUT_FIFO_ENABLES <= (3 => '1', others => '0');
         when "00000100" =>
            INPUT_FIFO_ENABLES <= (4 => '1', others => '0');
         when "00000101" =>
            INPUT_FIFO_ENABLES <= (5 => '1', others => '0');
         when "00000110" =>
            INPUT_FIFO_ENABLES <= (6 => '1', others => '0');
         when "00000111" =>
            INPUT_FIFO_ENABLES <= (7 => '1', others => '0');
         when others =>
            -- Invalid stream - ignore character
         end case;
         inputState <= input_CharDone;         
         
      when input_CharDone =>
         UDP_UART_RX_DATA_READY <= '1';     
         INPUT_FIFO_ENABLES <= (others => '0');  -- Need to drop FIFO write enables immediately
         inputState <= input_WaitForChar;            
      
   end case;
   
   end if;

   end process;
   
   -- The following did NOT work
   -- UDP_UART_RX_DATA_READY <= '1' when inputState = input_WaitForChar
   --    else '0';
    
   UDP_INPUT_FIFO_WRITE_ENABLE <= INPUT_FIFO_ENABLES;
   UDP_INPUT_FIFO_WRITE_DATA <= INPUT_FIFO_DATA;
   UDP_INPUT_CURRENT_STREAM <= INPUT_CURRENT_STREAM;

end Behavioral;
