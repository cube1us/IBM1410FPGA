----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2022 07:16:42 PM
-- Design Name: IBM1410
-- Module Name: IBM1410_UART_OUTPUT_SUBSYSTEM - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: The IBM1410_UART_OUTPUT_SUBSYSTEM is the interface bewteen the IBM 1410 logic nad
--    output to the UART to the PC Support Program.
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

entity IBM1410_UART_OUTPUT_SUBSYSTEM is
    Generic (
       UART_OUTPUT_CLKS_PER_BIT: integer := 100000000 / 115200
    );
    Port ( FPGA_CLK : in STD_LOGIC;
           UART_RESET: in STD_LOGIC;
           UART_OUTPUT_REQUESTER_STROBES : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_0 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_1 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_2 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_3 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_4 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_5 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_6 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_REQUEST_DATA_7 : in STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_ARBITER_REQUESTS : out STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_ARBITER_GRANTS: out STD_LOGIC_VECTOR (7 downto 0);
           UART_OUTPUT_TX_DATA : out STD_LOGIC);
end IBM1410_UART_OUTPUT_SUBSYSTEM;

architecture Behavioral of IBM1410_UART_OUTPUT_SUBSYSTEM is

   component IBM1410_UART_OUTPUT_REQUESTER
      Port ( FPGA_CLK: in STD_LOGIC;
             UART_RESET: in STD_LOGIC;
             UART_OUTPUT_REQUESTER_STROBE : in STD_LOGIC;
             UART_OUTPUT_GRANT : in STD_LOGIC;
             UART_OUTPUT_DATA_IN : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_REQUEST : out STD_LOGIC;
             UART_OUTPUT_DATA_OUT: out STD_LOGIC_VECTOR (7 downto 0));
   end component;

   component IBM1410_UART_OUTPUT_ARBITER
      Port ( FPGA_CLK: in STD_LOGIC;
             UART_OUTPUT_ARBITER_REQUESTS : in STD_LOGIC_VECTOR (7 downto 0);
             UART_RESET: in STD_LOGIC;
             UART_OUTPUT_FIFO_FULL : in STD_LOGIC;
             UART_OUTPUT_FIFO_FULL_NEXT: in STD_LOGIC;
             UART_OUTPUT_CHAR_ACCEPTED: in STD_LOGIC;
             UART_OUTPUT_ARBITER_GRANTS : out STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_NEW_REQUESTER: out STD_LOGIC);
   end component;
     
   component IBM1410_UART_OUTPUT_MUX
      Port ( UART_OUTPUT_ARBITER_GRANTS : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_0 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_1 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_2 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_3 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_4 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_5 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_6 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_DATA_7 : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_MUX_OUT : out STD_LOGIC_VECTOR (7 downto 0));
   end component;
     
   component IBM1410_UART_OUTPUT_MUX_TO_FIFO
      Port ( FPGA_CLK : in STD_LOGIC;
             UART_RESET : in STD_LOGIC;
             UART_OUTPUT_MUX_IN : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_GRANTS : in STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_NEW_REQUESTER : in STD_LOGIC;
             UART_OUTPUT_FULL : in STD_LOGIC;
             UART_OUTPUT_FULL_NEXT : in STD_LOGIC;
             UART_OUTPUT_CHAR_ACCEPTED : out STD_LOGIC;
             UART_OUTPUT_FIFO_DATA : out STD_LOGIC_VECTOR (7 downto 0);
             UART_OUTPUT_WR_EN : out STD_LOGIC);
   end component;

   component IBM1410_UART_OUTPUT_FIFO_TO_UART
      Port ( FPGA_CLK : in STD_LOGIC;
            UART_RESET : in STD_LOGIC;
            UART_OUTPUT_FIFO_EMPTY : in STD_LOGIC;
            UART_OUTPUT_FIFO_DATA : in STD_LOGIC_VECTOR (7 downto 0);
            UART_TX_ACTIVE : in STD_LOGIC;
            UART_OUTPUT_FIFO_RD_EN : out STD_LOGIC;
            UART_TX_DATA_VALID : out STD_LOGIC;
            UART_TX_BYTE : out STD_LOGIC_VECTOR (7 downto 0));
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
   
   
   constant UART_OUTPUT_FIFO_DEPTH: natural := 2048;
   constant UART_OUTPUT_FIFO_WIDTH: natural := 8;
  
   signal uartOutputArbiterGrants: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputArbiterRequests: STD_LOGIC_VECTOR(7 downto 0);
   
   signal uartOutputData_0: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_1: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_2: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_3: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_4: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_5: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_6: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputData_7: STD_LOGIC_VECTOR(7 downto 0);

   signal uartOutputNewRequester: STD_LOGIC;
   signal uartOutputCharAccepted: STD_LOGIC;
   
   signal uartOutputFIFOFull: STD_LOGIC;
   signal uartOutputFIFOFullNext: STD_LOGIC;
   signal uartOutputFIFOEmpty: STD_LOGIC;
   signal uartOutputMUXOut: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputFIFOIn: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputFIFOOut: STD_LOGIC_VECTOR(7 downto 0);
   signal uartOutputFIFOWrEn: STD_LOGIC;
   signal uartOutputFIFORdEn: STD_LOGIC;
   signal uartOutputRdValid: STD_LOGIC;
   signal uartOutputFIFOEmptyNext: STD_LOGIC;
   
   signal uartTXActive: STD_LOGIC;
   signal uartTXByte: STD_LOGIC_VECTOR(7 downto 0);
   signal uartTXDataValid: STD_LOGIC;
   signal uartTXDone: STD_LOGIC;
                   
   begin
   
   -- Instantiate the subsystem components
   
   REQUESTER_0: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(0),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(0),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_0,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(0),
         UART_OUTPUT_DATA_OUT => uartOutputData_0);
         
   REQUESTER_1: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(1),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(1),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_1,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(1),
         UART_OUTPUT_DATA_OUT => uartOutputData_1);

   REQUESTER_2: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(2),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(2),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_2,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(2),
         UART_OUTPUT_DATA_OUT => uartOutputData_2);

   REQUESTER_3: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(3),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(3),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_3,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(3),
         UART_OUTPUT_DATA_OUT => uartOutputData_3);

   REQUESTER_4: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(4),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(4),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_4,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(4),
         UART_OUTPUT_DATA_OUT => uartOutputData_4);

   REQUESTER_5: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(5),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(5),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_5,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(5),
         UART_OUTPUT_DATA_OUT => uartOutputData_5);

   REQUESTER_6: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(6),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(6),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_6,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(6),
         UART_OUTPUT_DATA_OUT => uartOutputData_6);

   REQUESTER_7: IBM1410_UART_OUTPUT_REQUESTER 
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_REQUESTER_STROBE => UART_OUTPUT_REQUESTER_STROBES(7),
         UART_OUTPUT_GRANT => uartOutputArbiterGrants(7),
         UART_OUTPUT_DATA_IN => UART_OUTPUT_REQUEST_DATA_7,
         UART_OUTPUT_REQUEST => uartOutputArbiterRequests(7),
         UART_OUTPUT_DATA_OUT => uartOutputData_7);
         
   ARBITER: IBM1410_UART_OUTPUT_ARBITER
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_OUTPUT_ARBITER_REQUESTS => uartOutputArbiterRequests,
         UART_RESET => UART_RESET,
         UART_OUTPUT_FIFO_FULL => uartOutputFIFOFull,
         UART_OUTPUT_FIFO_FULL_NEXT => uartOutputFIFOFullNext,
         UART_OUTPUT_CHAR_ACCEPTED => uartOutputCharAccepted,
         UART_OUTPUT_ARBITER_GRANTS => uartOutputArbiterGrants,
         UART_OUTPUT_NEW_REQUESTER => uartOutputNewRequester);
         
   MUX: IBM1410_UART_OUTPUT_MUX
      port map (
         UART_OUTPUT_ARBITER_GRANTS => uartOutputArbiterGrants,
         UART_OUTPUT_DATA_0 => uartOutputData_0,
         UART_OUTPUT_DATA_1 => uartOutputData_1,
         UART_OUTPUT_DATA_2 => uartOutputData_2,
         UART_OUTPUT_DATA_3 => uartOutputData_3,
         UART_OUTPUT_DATA_4 => uartOutputData_4,
         UART_OUTPUT_DATA_5 => uartOutputData_5,
         UART_OUTPUT_DATA_6 => uartOutputData_6,
         UART_OUTPUT_DATA_7 => uartOutputData_7,
         UART_OUTPUT_MUX_OUT => uartOutputMUXOut);
         
   MUX_TO_FIFO: IBM1410_UART_OUTPUT_MUX_TO_FIFO
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_MUX_IN => uartOutputMUXOut,
         UART_OUTPUT_GRANTS => uartOutputArbiterGrants,
         UART_OUTPUT_NEW_REQUESTER => uartOutputNewRequester,
         UART_OUTPUT_FULL => uartOutputFIFOFull,
         UART_OUTPUT_FULL_NEXT => uartOutputFIFOFullNext,
         UART_OUTPUT_CHAR_ACCEPTED => uartOutputCharAccepted,
         UART_OUTPUT_FIFO_DATA => uartOutputFIFOIn,
         UART_OUTPUT_WR_EN => uartOutputFIFOWrEn);
         
   FIFO_TO_UART: IBM1410_UART_OUTPUT_FIFO_TO_UART
      port map (
         FPGA_CLK => FPGA_CLK,
         UART_RESET => UART_RESET,
         UART_OUTPUT_FIFO_EMPTY => uartOutputFIFOEmpty,
         UART_OUTPUT_FIFO_DATA => uartOutputFIFOOut,
         UART_TX_ACTIVE => uartTXActive,
         UART_OUTPUT_FIFO_RD_EN => uartOutputFIFORdEn,
         UART_TX_DATA_VALID => uartTXDataValid,
         UART_TX_BYTE => uartTXByte);
         
   -- Instantiate UART transmitter
   
   UART_TX_INST : uart_tx
      generic map (
         g_CLKS_PER_BIT => UART_OUTPUT_CLKS_PER_BIT
      )
      port map (
         i_clk       => FPGA_CLK,
         i_tx_dv     => uartTXDataValid,
         i_tx_byte   => uartTXByte,
         o_tx_active => uartTXActive,
         o_tx_serial => UART_OUTPUT_TX_DATA,
         o_tx_done   => uartTXDone
      );
      
   -- Instantiate the FIFO ring buffer
   
   FIFO : ring_buffer
      generic map (
         RAM_WIDTH => UART_OUTPUT_FIFO_WIDTH,
         RAM_DEPTH => UART_OUTPUT_FIFO_DEPTH
      )
      port map (
         clk => FPGA_CLK,
         rst => UART_RESET,
         wr_en => uartOutputFIFOWrEn,
         wr_data => uartOutputFIFOIn,
         rd_en => uartOutputFIFORdEn,
         rd_valid => uartOutputRdValid,
         rd_data => uartOutputFIFOOut,
         empty => uartOutputFIFOEmpty,
         empty_next => uartOutputFIFOEmptyNext,
         full => uartOutputFIFOFull,
         full_next => uartOutputFIFOFullNext,
         fill_count => OPEN
    );
   

-- Output signal "copies"

UART_OUTPUT_ARBITER_REQUESTS <= uartOutputArbiterRequests;
UART_OUTPUT_ARBITER_GRANTS <= uartOutputArbiterGrants;

end Behavioral;
