----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2022 07:16:42 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_UDP_OUTPUT_SUBSYSTEM - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: The IBM1410_UDP_OUTPUT_SUBSYSTEM is the interface bewteen the 
-- IBM 1410 logic and the UDP output to the PC Support Program.
-- Copied from IBM1410_UDP_OUTPUT_SUBSYSTEM.vhd
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 1.00 - Copied from IBM1410_UDP_OUTPUT_SUBSYSTEM
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

entity IBM1410_UDP_OUTPUT_SUBSYSTEM is
    Port ( FPGA_CLK : in STD_LOGIC;
           UDP_RESET: in STD_LOGIC;
           UDP_OUTPUT_REQUESTER_STROBES : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUESTER_FLUSHES : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_0    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_1    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_2    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_3    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_4    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_5    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_6    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_REQUEST_DATA_7    : in STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_ARBITER_REQUESTS  : out STD_LOGIC_VECTOR (7 downto 0);
           UDP_OUTPUT_ARBITER_GRANTS    : out STD_LOGIC_VECTOR (7 downto 0);
           -- TODO - actual interface to UDP in place of the following
           UART_OUTPUT_TX_DATA : out STD_LOGIC);
end IBM1410_UDP_OUTPUT_SUBSYSTEM;

architecture Behavioral of IBM1410_UDP_OUTPUT_SUBSYSTEM is

   component IBM1410_UDP_OUTPUT_REQUESTER
      Port ( FPGA_CLK: in STD_LOGIC;
             UDP_RESET: in STD_LOGIC;
             UDP_OUTPUT_REQUESTER_STROBE    : in STD_LOGIC;
             UDP_OUTPUT_REQUESTER_FLUSH     : in STD_LOGIC;
             UDP_OUTPUT_GRANT               : in STD_LOGIC;
             UDP_OUTPUT_DATA_IN             : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_REQUEST             : out STD_LOGIC;
             UDP_OUTPUT_FLUSH_OUT           : out STD_LOGIC;
             UDP_OUTPUT_DATA_OUT            : out STD_LOGIC_VECTOR (7 downto 0));
   end component;

   component IBM1410_UDP_OUTPUT_ARBITER
      Port ( FPGA_CLK: in STD_LOGIC;
             UDP_OUTPUT_ARBITER_REQUESTS    : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_RESET                      : in STD_LOGIC;
             UDP_OUTPUT_FIFO_FULL           : in STD_LOGIC;
             UDP_OUTPUT_FIFO_FULL_NEXT      : in STD_LOGIC;
             UDP_OUTPUT_CHAR_ACCEPTED       : in STD_LOGIC;
             UDP_OUTPUT_ARBITER_GRANTS      : out STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_NEW_REQUESTER       : out STD_LOGIC);
   end component;
     
   component IBM1410_UDP_OUTPUT_MUX
      Port ( UDP_OUTPUT_ARBITER_GRANTS      : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_FLUSHES             : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_0              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_1              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_2              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_3              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_4              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_5              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_6              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_DATA_7              : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_MUX_OUT             : out STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_MUX_FLUSH           : out STD_LOGIC);
   end component;
     
   component IBM1410_UDP_OUTPUT_MUX_TO_FIFO
      Port ( FPGA_CLK                   : in STD_LOGIC;
             UDP_RESET                  : in STD_LOGIC;
             UDP_OUTPUT_MUX_IN          : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_MUX_FLUSH_IN    : in STD_LOGIC;
             UDP_OUTPUT_GRANTS          : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_NEW_REQUESTER   : in STD_LOGIC;
             UDP_OUTPUT_FULL            : in STD_LOGIC;
             UDP_OUTPUT_FULL_NEXT       : in STD_LOGIC;
             UDP_OUTPUT_CHAR_ACCEPTED   : out STD_LOGIC;
             UDP_OUTPUT_FIFO_DATA       : out STD_LOGIC_VECTOR (7 downto 0);
             UDP_OUTPUT_WR_EN           : out STD_LOGIC);
   end component;

   component IBM1410_UDP_OUTPUT_FIFO_TO_UDP
      Port ( FPGA_CLK               : in STD_LOGIC;
             UDP_RESET              : in STD_LOGIC;
             UDP_OUTPUT_FIFO_EMPTY  : in STD_LOGIC;
             UDP_OUTPUT_FIFO_DATA   : in STD_LOGIC_VECTOR (7 downto 0);
             UDP_TX_ACTIVE          : in STD_LOGIC;
             UDP_OUTPUT_FIFO_RD_EN  : out STD_LOGIC;
             UDP_TX_DATA_VALID      : out STD_LOGIC;
             UDP_TX_BYTE            : out STD_LOGIC_VECTOR (7 downto 0));
   end component;
   
   component uart_tx is
     generic (
        g_CLKS_PER_BIT : integer := 115   -- Needs to be set correctly
     );
     port (
        i_clk       : in  std_logic;
        i_tx_dv     : in  std_logic;
        i_tx_byte   : in  std_logic_vector(7 downto 0);
        o_tx_active : out std_logic;
        o_tx_serial : out std_logic;
        o_tx_done   : out std_logic
     );
   end component uart_tx;
   
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
   
   
   constant UDP_OUTPUT_FIFO_DEPTH: natural := 2048;
   constant UDP_OUTPUT_FIFO_WIDTH: natural := 9;        -- Includes FLUSH as Most Significant Bit
  
   signal UDPOutputArbiterGrants    : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputAribterRequests  : STD_LOGIC_VECTOR(7 downto 0);
   
   signal UDPOutputRequesterFlushes : STD_LOGIC_VECTOR(7 downto 0);

   signal UDPOutputData_0           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_1           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_2           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_3           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_4           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_5           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_6           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputData_7           : STD_LOGIC_VECTOR(7 downto 0);

   signal UDPOutputNewRequester     : STD_LOGIC;
   signal UDPOutputCharAccepted     : STD_LOGIC;
   
   signal UDPOutputFIFOFull         : STD_LOGIC;
   signal UDPOutputFIFOFullNext     : STD_LOGIC;
   signal UDPOutputFIFOEmpty        : STD_LOGIC;
   signal UDPOutputMUXOut           : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPOutputMUXFlush         : STD_LOGIC;
   signal UDPOutputFIFOIn           : STD_LOGIC_VECTOR(8 downto 0);  -- Includes Flush as MSB
   signal UDPOutputFIFOOut          : STD_LOGIC_VECTOR(8 downto 0);  -- Includes Flush as MSB
   signal UDPOutputFIFOWrEn         : STD_LOGIC;
   signal UDPOutputFIFORdEn         : STD_LOGIC;
   signal UDPOutputRdValid          : STD_LOGIC;
   signal UDPOutputFIFOEmptyNext    : STD_LOGIC;
   
   signal UDPTxActive               : STD_LOGIC;
   signal UDPTxByte                 : STD_LOGIC_VECTOR(7 downto 0);
   signal UDPTxDataValid            : STD_LOGIC;
   signal UDPTXDone                 : STD_LOGIC;
                   
   begin
   
   -- Instantiate the subsystem components
   
   REQUESTER_0: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(0),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(0),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(0), 
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_0,
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(0),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(0),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_0         );
         
   REQUESTER_1: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,         
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUETER_STROBES(1),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(1),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(1),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_1,
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(1),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(1),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_1         );

   REQUESTER_2: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(2),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(2),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(2),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_2,   
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(2),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(2),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_2         );

   REQUESTER_3: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(3),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(3),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(3),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_3,
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(3),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(3),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_3         );

   REQUESTER_4: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(4),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(4),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(4),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_4,
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(4),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(4),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_4         );

   REQUESTER_5: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(5),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(5),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(5),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_5,   
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(5),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(5),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_5         );

   REQUESTER_6: IBM1410_UDP_OUTPUT_REQUESTER 
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(6),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(6),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(6),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_6,
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(6),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(6),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_6         );

   REQUESTER_7: IBM1410_UDP_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_RESET => UDP_RESET,
         UDP_OUTPUT_REQUESTER_STROBE    => UDP_OUTPUT_REQUESTER_STROBES(7),
         UDP_OUTPUT_REQUESTER_FLUSH     => UDP_OUTPUT_REQUESTER_FLUSHES(7),
         UDP_OUTPUT_GRANT               => UDPOutputArbiterGrants(7),
         UDP_OUTPUT_DATA_IN             => UDP_OUTPUT_REQUEST_DATA_7   ,
         UDP_OUTPUT_REQUEST             => UDPOutputAribterRequests(7),
         UDP_OUTPUT_FLUSH_OUT           => UDPOutputRequesterFlushes(0),
         UDP_OUTPUT_DATA_OUT            => UDPOutputData_7         );
         
   ARBITER: IBM1410_UDP_OUTPUT_ARBITER
      port map (
         FPGA_CLK => FPGA_CLK,
         UDP_OUTPUT_ARBITER_REQUESTS    => UDPOutputAribterRequests,
         UDP_RESET                      => UDP_RESET,
         UDP_OUTPUT_FIFO_FULL           => UDPOutputFIFOFull,
         UDP_OUTPUT_FIFO_FULL_NEXT      => UDPOutputFIFOFullNext,
         UDP_OUTPUT_CHAR_ACCEPTED       => UDPOutputCharAccepted,
         UDP_OUTPUT_ARBITER_GRANTS      => UDPOutputArbiterGrants,
         UDP_OUTPUT_NEW_REQUESTER       => UDPOutputNewRequester       );
         
   MUX: IBM1410_UDP_OUTPUT_MUX
      port map (
         UDP_OUTPUT_ARBITER_GRANTS      => UDPOutputArbiterGrants,
         UDP_OUTPUT_FLUSHES             => UDPOutputRequesterFlushes,
         UDP_OUTPUT_DATA_0              => UDPOutputData_0,
         UDP_OUTPUT_DATA_1              => UDPOutputData_1,
         UDP_OUTPUT_DATA_2              => UDPOutputData_2,
         UDP_OUTPUT_DATA_3              => UDPOutputData_3,
         UDP_OUTPUT_DATA_4              => UDPOutputData_4,
         UDP_OUTPUT_DATA_5              => UDPOutputData_5,
         UDP_OUTPUT_DATA_6              => UDPOutputData_6,
         UDP_OUTPUT_DATA_7              => UDPOutputData_7,
         UDP_OUTPUT_MUX_OUT             => UDPOutputMUXOut,
         UDP_OUTPUT_MUX_FLUSH_OUT       => UDPOutputMUXFlushOut          );
         
   MUX_TO_FIFO: IBM1410_UDP_OUTPUT_MUX_TO_FIFO
      port map (
         FPGA_CLK                   => FPGA_CLK,
         UDP_RESET                  => UDP_RESET,
         UDP_OUTPUT_MUX_IN          => UDPOutputMUXOut,
         UDP_OUTPUT_MUX_FLUSH_IN    => UDPOutputMUXFlushOut,
         UDP_OUTPUT_GRANTS          => UDPOutputArbiterGrants,
         UDP_OUTPUT_NEW_REQUESTER   => UDPOutputNewRequester,
         UDP_OUTPUT_FULL            => UDPOutputFIFOFull,
         UDP_OUTPUT_FULL_NEXT       => UDPOutputFIFOFullNext,
         UDP_OUTPUT_CHAR_ACCEPTED   => UDPOutputCharAccepted,
         UDP_OUTPUT_FIFO_DATA       => UDPOutputFIFOIn,
         UDP_OUTPUT_WR_EN           => UDPOutputFIFOWrEn            );
         
   -- This will get rewritten for UDP

   FIFO_TO_UART: IBM1410_UDP_OUTPUT_FIFO_TO_UDP
      port map (
         FPGA_CLK               => FPGA_CLK,
         UDP_RESET              => UDP_RESET,
         UDP_OUTPUT_FIFO_EMPTY  => UDPOutputFIFOEmpty,
         UDP_OUTPUT_FIFO_DATA   => UDPOutputFIFOOut,  -- Includes Flush as MSB
         UDP_TX_ACTIVE          => UDPTxActive,
         UDP_OUTPUT_FIFO_RD_EN  => UDPOutputFIFORdEn,
         UDP_TX_DATA_VALID      => UDPTxDataValid,
         UDP_TX_BYTE            => UDPTxByte                    );
         
   -- Instantiate UART transmitter
   
   UART_TX_INST : uart_tx
      generic map (
         g_CLKS_PER_BIT => UART_OUTPUT_CLKS_PER_BIT
      )
      port map (
         i_clk       => FPGA_CLK,
         i_tx_dv     => UDPTxDataValid,
         i_tx_byte   => UDPTxByte,
         o_tx_active => UDPTxActive,
         o_tx_serial => UART_OUTPUT_TX_DATA,
         o_tx_done   => UDPTXDone                   
      );
      
   -- Instantiate the FIFO ring buffer
   
   FIFO : ring_buffer
      generic map (
         RAM_WIDTH => UDP_OUTPUT_FIFO_WIDTH,
         RAM_DEPTH => UDP_OUTPUT_FIFO_DEPTH
      )
      port map (
         clk => FPGA_CLK,
         rst => UDP_RESET,
         wr_en => UDPOutputFIFOWrEn,
         wr_data => UDPOutputFIFOIn,
         rd_en => UDPOutputFIFORdEn,
         rd_valid => UDPOutputRdValid,
         rd_data => UDPOutputFIFOOut,
         empty => UDPOutputFIFOEmpty,
         empty_next => UDPOutputFIFOEmptyNext,
         full => UDPOutputFIFOFull,
         full_next => UDPOutputFIFOFullNext,
         fill_count => OPEN
    );
   

-- Output signal "copies        "

UDP_OUTPUT_ARBITER_REQUESTS  <= UDPOutputAribterRequests;
UDP_OUTPUT_ARBITER_GRANTS    <= UDPOutputArbiterGrants;

end Behavioral;
