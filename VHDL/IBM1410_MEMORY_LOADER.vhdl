----------------------------------------------------------------------------------
-- Company: The Computer Collection 
-- Engineer: Jay R. Jaeger   
-- 
-- Create Date: 05/02/2022 03:43:13 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_MEMORY_LOADER_RECEIVER - Behavioral
-- Project Name: IBM1410 
-- Target Devices: 
-- Tool Versions: 
-- Description: This module receives data from the PC console host via module
--   IBM1410_UART_INPUT_SUBSYSTEM.  It uses that data to load memory.
--   Obviously, a real IBM 1410 did NOT have such a feature.  ;)
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

entity IBM1410_MEMORY_LOADER_RECEIVER is
    Port ( FPGA_CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           LOADER_FIFO_WRITE_ENABLE : in STD_LOGIC;
           LOADER_FIFO_WRITE_DATA : in STD_LOGIC_VECTOR (7 downto 0);
           IBM1410_DIRECT_MEMORY_ADDRESS: out STD_LOGIC_VECTOR(13 downto 0);
           IBM1410_LOADER_DIRECT_MEMORY_ENABLE:  out STD_LOGIC_VECTOR(3 downto 0);
           IBM1410_LOADER_DIRECT_MEMORY_WRITE_ENABLE:  out STD_LOGIC_VECTOR(3 downto 0);
           IBM1410_DIRECT_MEMORY_WRITE_DATA: out STD_LOGIC_VECTOR(7 downto 0)
    );
end IBM1410_MEMORY_LOADER_RECEIVER;

architecture Behavioral of IBM1410_MEMORY_LOADER_RECEIVER is

   component ring_buffer is
      generic (
         RAM_WIDTH : natural;
         RAM_DEPTH : natural
      );
      port (
         clk : in std_logic;
         rst : in std_logic;

         -- Write port
         wr_en : in std_logic;
         wr_data : in std_logic_vector(RAM_WIDTH - 1 downto 0);

         -- Read port
         rd_en : in std_logic;
         rd_valid : out std_logic;
         rd_data : out std_logic_vector(RAM_WIDTH - 1 downto 0);

         -- Flags
         empty : out std_logic;
         empty_next : out std_logic;
         full : out std_logic;
         full_next : out std_logic;

         -- The number of elements in the FIFO
         fill_count : out integer range RAM_DEPTH - 1 downto 0
      );
   end component;
   
constant MEMORY_LOADER_FIFO_SIZE: INTEGER := 16;
constant MEMORY_LOADER_FIFO_WIDTH: INTEGER := 8;
constant MEMORY_LOADER_ADDRESS_MARK: STD_LOGIC_VECTOR(2 downto 0) := "100";
constant MEMORY_LOADER_END_MARK: STD_LOGIC_VECTOR(2 downto 0) := "111";
constant MEMORY_LOADER_DATA_0_MARK: STD_LOGIC_VECTOR(2 downto 0) := "010";
constant MEMORY_LOADER_DATA_1_MARK: STD_LOGIC_VECTOR(2 downto 0) := "001";


type loaderState_type is (
   loader_Reset, loader_WaitForChar, loader_Getchar, loader_Addr, loader_data,
	loader_Write, loader_WrDone);

signal loaderState: loaderState_type := loader_Reset;


signal FIFO_READ_ENABLE:     STD_LOGIC;
signal FIFO_READ_DATA_VALID: STD_LOGIC;
signal FIFO_READ_DATA:       STD_LOGIC_VECTOR(7 downto 0);
signal FIFO_EMPTY:           STD_LOGIC;
signal FIFO_EMPTY_NEXT:      STD_LOGIC;
signal FIFO_FULL: STD_LOGIC;        -- Not used - assumption for now is that 1410 will keep up.
signal FIFO_FULL_NEXT: STD_LOGIC;   -- Not used - assumption for now is that 1410 will keep up.

signal ADDR:                 STD_LOGIC_VECTOR(13 downto 0);
signal LOAD_DATA:            STD_LOGIC_VECTOR(7 downto 0);
signal DATA_LAST:            STD_LOGIC := '0';
signal IN_DATA       :       STD_LOGIC := '0';
signal MEMORY_WRITE_ENABLE:  STD_LOGIC_VECTOR(3 downto 0);

signal ADDR_COUNTER: INTEGER RANGE 0 to 3;

begin

loader_process: process(FPGA_CLK, RESET, DATA_LAST, ADDR_COUNTER, IN_DATA)

   begin

   if RESET = '1' then
      loaderState <= loader_RESET;
      IN_DATA <= '0';
      ADDR <= "00000000000000";
      LOAD_DATA <= "00000000";
      ADDR_COUNTER <= 0;
      DATA_LAST <= '0';

   elsif FPGA_CLK'event and FPGA_CLK = '1' then

      case loaderState is
      
         when loader_Reset => 
           DATA_LAST <= '0';
           ADDR_COUNTER <= 0;
           IN_DATA <= '0';
           ADDR <= "00000000000000";
           LOAD_DATA <= "00000000";
           loaderState <= loader_WaitForChar;
            
         when loader_WaitForChar =>
            if(FIFO_EMPTY = '0') then
               IN_DATA <= IN_DATA;
               loaderState <= loader_GetChar;
            else
               IN_DATA <= IN_DATA;
               loaderState <= loader_WaitForChar;
            end if;
         
         when loader_GetChar =>
            if(FIFO_READ_DATA_VALID = '1') then
               if(IN_DATA = '0') then
                  IN_DATA <= '0';
                  loaderState <= loader_Addr;
               else
                  IN_DATA <= '1';
                  loaderState <= loader_Data;
               end if;
            else
               -- Should never actually get here...
               IN_DATA <= '0';
               loaderState <= loader_Reset;
            end if;  


         when loader_Addr =>
            if(FIFO_READ_DATA(6 downto 4) = MEMORY_LOADER_ADDRESS_MARK) then
               -- Receiving address and see an address mark - OK
               ADDR <= ADDR(9 downto 0) & FIFO_READ_DATA(3 downto 0);
               if(ADDR_COUNTER = 3) then
                  IN_DATA <= '1';
                  DATA_LAST <= '0';
                  ADDR_COUNTER <= 0;
               else
                  ADDR_COUNTER <= ADDR_COUNTER + 1;   
                  IN_DATA <= '0';
               end if;
               loaderState <= loader_WaitForChar;
            else 
               -- Were not expecting an address mark...
               IN_DATA <= '0';
               loaderState <= loader_Reset;
            end if;

         when loader_Data =>
            if(FIFO_READ_DATA(6 downto 4) = MEMORY_LOADER_END_MARK) then
               -- All Done
               IN_DATA <= '0';
               loaderState <= loader_Reset;
            elsif((FIFO_READ_DATA(6 downto 4) = MEMORY_LOADER_DATA_0_MARK) AND 
               (DATA_LAST = '0')) then
               -- Received top bits of data...
               LOAD_DATA(7 downto 4) <= FIFO_READ_DATA(3 downto 0);
               DATA_LAST <= '1';
               IN_DATA <= '1';
               loaderState <= loader_WaitForChar;
            elsif((FIFO_READ_DATA(6 downto 4) = MEMORY_LOADER_DATA_1_MARK) AND
               (DATA_LAST = '1')) then
               -- Received bottom bits of data...
               LOAD_DATA(3 downto 0) <= FIFO_READ_DATA(3 downto 0);
               DATA_LAST <= '0';
               IN_DATA <= '0';
               loaderState <= loader_Write;
            else
               --- ERROR
               IN_DATA <= '0';
               loaderState <= loader_Reset;
            end if;
           
         when loader_Write =>
            IN_DATA <= '0';
            loaderState <= loader_WrDone;
                    
         when loader_WrDone =>
            IN_DATA <= '0';
            loaderState <= loader_Getchar;
            
      end case;
   
   end if;
   
   end process;

   -- Instantiate the FIFO ring buffer
   
   FIFO : ring_buffer
      generic map (
         RAM_WIDTH => MEMORY_LOADER_FIFO_WIDTH,
         RAM_DEPTH => MEMORY_LOADER_FIFO_SIZE
      )
      port map (
         clk => FPGA_CLK,
         rst => RESET,
         wr_en => LOADER_FIFO_WRITE_ENABLE,
         wr_data => LOADER_FIFO_WRITE_DATA,
         rd_en => FIFO_READ_ENABLE,
         rd_valid => FIFO_READ_DATA_VALID,
         rd_data => FIFO_READ_DATA,
         empty => FIFO_EMPTY,
         empty_next => FIFO_EMPTY_NEXT,
         full => FIFO_FULL,
         full_next => FIFO_FULL_NEXT,
         fill_count => OPEN
    );

   -- Combinatorial Assignments

   IBM1410_DIRECT_MEMORY_ADDRESS <= ADDR;
   IBM1410_DIRECT_MEMORY_WRITE_DATA <= LOAD_DATA;
   IBM1410_LOADER_DIRECT_MEMORY_ENABLE <= MEMORY_WRITE_ENABLE;
   IBM1410_LOADER_DIRECT_MEMORY_WRITE_ENABLE <= MEMORY_WRITE_ENABLE;

   -- Assign proper memory enable bit based on address (in DECIMAL)
   -- Note that enable and write enable are the same, as we are just
   -- writing.  Outside of this module, it would be possible to
   -- multiplex the enable bit (as opposed to the write enable bit)

   MEMORY_WRITE_ENABLE <= 
      "1000" when loaderState = loader_Write AND ADDR > "0111010100101111" else    -- 30000 and up
      "0100" when loaderState = loader_Write AND ADDR > "0100111000011111" else    -- 20000 to 29999
      "0010" when loaderState = loader_Write AND ADDR > "0010011100001111" else    -- 10000 to 19999
      "0001" when loaderState = loader_Write else                                  -- 00000 to 09999
      "0000";                                                                     -- NOT writing
      
   FIFO_READ_ENABLE <= '1' when (loaderState = loader_WaitForChar OR
      loaderState = loader_GetChar) AND FIFO_EMPTY = '0' else
      '0';


end Behavioral;
