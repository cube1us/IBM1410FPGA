----------------------------------------------------------------------------------
-- Company: The Computer Collection
-- Engineer: Jay Jaeger
-- 
-- Create Date: 02/01/2026
-- Design Name: IBM1410
-- Module Name: IBM14101414AdapterUnit_tb - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: Test Bench for IBM 1414 Unit Record Adapter
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
use IEEE.NUMERIC_STD.ALL;
use WORK.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IBM14101414AdapterUnit_tb is
   PORT (
      CLK: in  STD_LOGIC;
      SW:  in  STD_LOGIC_VECTOR(15 downto 0);
      LED: out STD_LOGIC_VECTOR(15 downto 0) 
);

end IBM14101414AdapterUnit_tb;

architecture Behavioral of IBM14101414AdapterUnit_tb is

component IBM14101414AdapterUnit is

    GENERIC(
        CHANNEL_STROBE_LENGTH: integer := 100;      -- 1 us strobe
        CHANNEL_CYCLE_LENGTH:  integer := 1120;     -- 11.2 us per character
        IOSYNC_OUTPUT_FIFO_SIZE: integer := 140     -- Enough for printer, too
    );

    PORT (
        FPGA_CLK: in STD_LOGIC;

        -- 1414 Input Signals from CPU

        MC_CPU_TO_I_O_SYNC_BUS:           in std_logic_vector(7 downto 0);

        MC_UNIT_1_SELECT_TO_I_O:        in std_logic;  -- Card Reader
        MC_UNIT_2_SELECT_TO_I_O:        in std_logic;  -- Printer
        MC_UNIT_4_SELECT_TO_I_O:        in std_logic;  -- Card Punch
        MC_INPUT_MODE_TO_BUFFER:        in std_logic;
        MC_OUTPUT_MODE_TO_BUFFER:       in std_logic;
        MC_1401_MODE_TO_BUFFER:         in std_logic;
        MC_READY_TO_BUFFER:             in std_logic;
        MC_COMP_RESET_TO_BUFFER:        in std_logic;
        MC_RESET_SELECT_BUFFER_LATCHES: in std_logic;
        MC_CORRECT_TRANS_TO_BUFFER:     in std_logic;
        MC_STACK_SELECT_TO_BUFFER:      in std_logic;
        MC_FORMS_STACKER_GO:            in std_logic;

        -- 1414 Output Signals to CPU

        MC_I_O_SYNC_TO_CPU_BUS:         out std_logic_vector(7 downto 0);

        MC_BUFFER_READY:                out std_logic;
        MC_BUFFER_BUSY:                 out std_logic;
        MC_BUFFER_CONDITION:            out std_logic;
        MC_BUFFER_ERROR:                out std_logic;
        MC_BUFFER_END_OF_TRANSFER:      out std_logic;
        MC_BUFFER_NO_TRANS_COND:        out std_logic;
        MC_BUFFER_STROBE:               out std_logic;

        MC_READER_BUSY:                 out std_logic;
        MC_PUNCH_BUSY:                  out std_logic;
        MC_1403_PRINT_BUFFER_BUSY:      out std_logic;
        MC_PRINTER_CHANNEL_9:           out std_logic;
        MC_PRINTER_CHANNEL_12:          out std_logic;
        MC_I_O_PRINTER_READY:           out std_logic;
        MC_FORMS_BUSY_STATUS_TO_CPU:    out std_logic;

        -- Priority Feature Signals

        MC_I_O_CLOCK_080_090_TIME:      out std_logic;

        -- 1414 to PC Support System

        IBM1410_1414_XMT_UART_DATA:     out std_logic_vector(7 downto 0);
        IBM1410_1414_UART_REQUEST:      out std_logic;
        IBM1410_1414_UART_GRANT:        in std_logic;
        IBM1410_UART_XMT_UDP_FLUSH:     out std_logic;

        -- PC Support System to 1414

        IBM1410_1414_INPUT_FIFO_WRITE_ENABLE:   in std_logic;
        IBM1410_1414_INPUT_FIFO_WRITE_DATA:     in std_logic_vector(7 downto 0)

    );

end component;

constant BCD_1_BIT: integer := 0;
constant BCD_2_BIT: integer := 1;
constant BCD_4_BIT: integer := 2;
constant BCD_8_BIT: integer := 3;
constant BCD_A_BIT: integer := 4;
constant BCD_B_BIT: integer := 5;
constant HDL_WM_BIT: integer := 6;
constant HDL_C_BIT: integer := 7;

constant READER_CH1_DEVICE_NUMBER:  integer := 1;
constant PUNCH_CH1_DEVICE_NUMBER:   integer := 4;
constant PRINTER_CH1_DEVICE_NUMBER: integer := 2;
constant READER_CH2_DEVICE_NUMBER:  integer := 65;
constant PUNCH_CH2_DEVICE_NUMBER:   integer := 68;
constant PRINTER_CH2_DEVICE_NUMBER: integer := 66;

constant UNIT_RECEIVE_STATUS_OPERATION:   integer := 1;
constant UNIT_RECEIVE_DATA_OPERATION:     integer := 2;

constant UNIT_READY_BIT: integer       := 0;
constant UNIT_BUSY_BIT:  integer       := 1;
constant UNIT_DATA_CHECK_BIT: integer  := 2;
constant UNIT_WLR_BIT: integer         := 4;

constant READER_LAST_CARD_BIT: integer := 5;


-- 1414 Inputs

signal FPGA_CLK:    std_logic := '0';
signal UDP_RESET:   std_logic := '0';

signal MC_CPU_TO_I_O_SYNC_BUS:            std_logic_vector(7 downto 0) := "11111111";

signal MC_UNIT_1_SELECT_TO_I_O:         std_logic := '1';  -- Card Reader
signal MC_UNIT_2_SELECT_TO_I_O:         std_logic := '1';  -- Printer
signal MC_UNIT_4_SELECT_TO_I_O:         std_logic := '1';  -- Card Punch
signal MC_INPUT_MODE_TO_BUFFER:         std_logic := '1';
signal MC_OUTPUT_MODE_TO_BUFFER:        std_logic := '1';
signal MC_1401_MODE_TO_BUFFER:          std_logic := '1';
signal MC_READY_TO_BUFFER:              std_logic := '1';
signal MC_COMP_RESET_TO_BUFFER:         std_logic := '1';
signal MC_RESET_SELECT_BUFFER_LATCHES:  std_logic := '1';
signal MC_CORRECT_TRANS_TO_BUFFER:      std_logic := '1';
signal MC_STACK_SELECT_TO_BUFFER:       std_logic := '1';
signal MC_FORMS_STACKER_GO:             std_logic := '1';

-- 1414 Output Signals to CPU

signal MC_I_O_SYNC_TO_CPU_BUS:          std_logic_vector(7 downto 0) := "11111111";

signal MC_BUFFER_READY:                 std_logic := '1';
signal MC_BUFFER_BUSY:                  std_logic := '1';
signal MC_BUFFER_CONDITION:             std_logic := '1';
signal MC_BUFFER_ERROR:                 std_logic := '1';
signal MC_BUFFER_END_OF_TRANSFER:       std_logic := '1';
signal MC_BUFFER_NO_TRANS_COND:         std_logic := '1';
signal MC_BUFFER_STROBE:                std_logic := '1';

signal MC_READER_BUSY:                  std_logic := '1';
signal MC_PUNCH_BUSY:                   std_logic := '1';
signal MC_1403_PRINT_BUFFER_BUSY:       std_logic := '1';
signal MC_PRINTER_CHANNEL_9:            std_logic := '1';
signal MC_PRINTER_CHANNEL_12:           std_logic := '1';
signal MC_I_O_PRINTER_READY:            std_logic := '1';
signal MC_FORMS_BUSY_STATUS_TO_CPU:     std_logic := '1';

    -- Priority Feature Signals

signal MC_I_O_CLOCK_080_090_TIME:       std_logic := '1';

    -- 1414 to PC Support System

signal IBM1410_1414_XMT_UART_DATA:      std_logic_vector(7 downto 0) := "00000000";
signal IBM1410_1414_UART_REQUEST:       std_logic := '0';
signal IBM1410_1414_UART_GRANT:         std_logic := '0';
signal IBM1410_UART_XMT_UDP_FLUSH:       std_logic := '0';

    -- PC Support System to 1414

signal IBM1410_1414_INPUT_FIFO_WRITE_ENABLE:   std_logic := '0';
signal IBM1410_1414_INPUT_FIFO_WRITE_DATA:     std_logic_vector(7 downto 0) := "00000000";

-- Test bench signals

constant READER_BUFFER_LENGTH:   integer := 80;
type READER_BUFFER_TYPE is array (READER_BUFFER_LENGTH-1 downto 0) of std_logic_vector(7 downto 0);
signal readerTestBuffer:  READER_BUFFER_TYPE := (others => X"80");


signal LOCAL_i: integer := 99;

-- Functions and procedures used to make life easier

-- Function to calculate parity bit to use for odd parity

function calculate_odd_parity(input_data: std_logic_vector) return std_logic is
    variable parity_temp: std_logic := '0'; -- Initialize to 0 for even parity logic
    begin
    for i in input_data'range loop
        parity_temp := parity_temp xor input_data(i); -- XOR all bits
    end loop;
    -- For odd parity, the final bit is the inversion of the even parity result
    return (not parity_temp); 
end function calculate_odd_parity;    

-- Function to convert a standard logic vector into a string for displaying

function to_string ( a: std_logic_vector) return string is
    variable b : string (1 to a'length) := (others => NUL);
    variable stri : integer := 1; 
    begin
        for i in a'range loop
            b(stri) := std_logic'image(a((i)))(2);
        stri := stri+1;
        end loop;
    return b;
end function;

-- Procedure to send a device status update to the FPGA
-- Note that we do not have to send the leading 0x85 to the 1414 - that is handled
-- at a higher level in the implementation.


begin

UUT: IBM14101414AdapterUnit

    GENERIC MAP (
        CHANNEL_STROBE_LENGTH => 10,       -- SHORT value for testing separate from channel
        CHANNEL_CYCLE_LENGTH => 112,       -- 11.2 us per character, SHORTER for testing for now (1.12 us)
        IOSYNC_OUTPUT_FIFO_SIZE => 140     -- Enough for printer, too
    )

    PORT MAP (
        FPGA_CLK => FPGA_CLK,

        -- 1414 Input Signals from CPU

        MC_CPU_TO_I_O_SYNC_BUS => MC_CPU_TO_I_O_SYNC_BUS,

        MC_UNIT_1_SELECT_TO_I_O => MC_UNIT_1_SELECT_TO_I_O,
        MC_UNIT_2_SELECT_TO_I_O => MC_UNIT_2_SELECT_TO_I_O,
        MC_UNIT_4_SELECT_TO_I_O => MC_UNIT_4_SELECT_TO_I_O,
        MC_INPUT_MODE_TO_BUFFER => MC_INPUT_MODE_TO_BUFFER,
        MC_OUTPUT_MODE_TO_BUFFER => MC_OUTPUT_MODE_TO_BUFFER,
        MC_1401_MODE_TO_BUFFER => MC_1401_MODE_TO_BUFFER,
        MC_READY_TO_BUFFER => MC_READY_TO_BUFFER,
        MC_COMP_RESET_TO_BUFFER => MC_COMP_RESET_TO_BUFFER,
        MC_RESET_SELECT_BUFFER_LATCHES => MC_RESET_SELECT_BUFFER_LATCHES,
        MC_CORRECT_TRANS_TO_BUFFER => MC_CORRECT_TRANS_TO_BUFFER,
        MC_STACK_SELECT_TO_BUFFER => MC_STACK_SELECT_TO_BUFFER,
        MC_FORMS_STACKER_GO => MC_FORMS_STACKER_GO,

        -- 1414 Output Signals to CPU

        MC_I_O_SYNC_TO_CPU_BUS => MC_I_O_SYNC_TO_CPU_BUS,

        MC_BUFFER_READY => MC_BUFFER_READY,
        MC_BUFFER_BUSY => MC_BUFFER_BUSY,
        MC_BUFFER_CONDITION => MC_BUFFER_CONDITION,
        MC_BUFFER_ERROR => MC_BUFFER_ERROR,
        MC_BUFFER_END_OF_TRANSFER => MC_BUFFER_END_OF_TRANSFER,
        MC_BUFFER_NO_TRANS_COND => MC_BUFFER_NO_TRANS_COND,
        MC_BUFFER_STROBE => MC_BUFFER_STROBE,

        MC_READER_BUSY => MC_READER_BUSY,
        MC_PUNCH_BUSY => MC_PUNCH_BUSY,
        MC_1403_PRINT_BUFFER_BUSY => MC_1403_PRINT_BUFFER_BUSY,
        MC_PRINTER_CHANNEL_9 => MC_PRINTER_CHANNEL_9,
        MC_PRINTER_CHANNEL_12 => MC_PRINTER_CHANNEL_12,
        MC_I_O_PRINTER_READY => MC_I_O_PRINTER_READY,
        MC_FORMS_BUSY_STATUS_TO_CPU => MC_FORMS_BUSY_STATUS_TO_CPU,

        -- Priority Feature Signals

        MC_I_O_CLOCK_080_090_TIME => MC_I_O_CLOCK_080_090_TIME,

        -- 1414 to PC Support System

        IBM1410_1414_XMT_UART_DATA => IBM1410_1414_XMT_UART_DATA,
        IBM1410_1414_UART_REQUEST => IBM1410_1414_UART_REQUEST,
        IBM1410_1414_UART_GRANT => IBM1410_1414_UART_GRANT,
        IBM1410_UART_XMT_UDP_FLUSH => IBM1410_UART_XMT_UDP_FLUSH,

        -- PC Support System to 1414

        IBM1410_1414_INPUT_FIFO_WRITE_ENABLE => IBM1410_1414_INPUT_FIFO_WRITE_ENABLE,
        IBM1410_1414_INPUT_FIFO_WRITE_DATA => IBM1410_1414_INPUT_FIFO_WRITE_DATA

    );

fpga_clk_process: process

    constant clk_period : time := 10 ns;

    begin
        fpga_clk <= '0';
        wait for clk_period / 2;
        fpga_clk <= '1';
        wait for clk_period / 2;
    end process;
        

uut_process: process

    variable t: time;
    variable v: std_logic_vector(7 downto 0);

procedure sendStatusUpdate (
    statusDevice: in INTEGER; 
    statusVector: in std_logic_vector(7 downto 0)) is

    begin

    -- Send 1414 sub-device we are sending status for
    IBM1410_1414_INPUT_FIFO_WRITE_DATA <= std_logic_vector(
        to_unsigned(statusDevice, IBM1410_1414_INPUT_FIFO_WRITE_DATA'length ));
    wait for 100 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    wait for 10 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    wait for 100 ns;

    -- Indicate that this is a Status Update
    IBM1410_1414_INPUT_FIFO_WRITE_DATA <= std_logic_vector(
        to_unsigned(UNIT_RECEIVE_STATUS_OPERATION, IBM1410_1414_INPUT_FIFO_WRITE_DATA'length )); 
    wait for 100 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    wait for 10 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    wait for 100 ns;
    
    -- Put the status itself into the FIFO
    IBM1410_1414_INPUT_FIFO_WRITE_DATA <= statusVector;
    wait for 100 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    wait for 10 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    wait for 100 ns;
    
    end sendStatusUpdate;

    -- Procedure to send a card image to the 1414

procedure sendReaderBuffer(deviceNumber: in integer) is

    begin
    
    -- Send Device 1 (reader) to the FPGA
    IBM1410_1414_INPUT_FIFO_WRITE_DATA <= std_logic_vector(
        to_unsigned(deviceNumber, IBM1410_1414_INPUT_FIFO_WRITE_DATA'length ));   
    wait for 100 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    wait for 10 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    wait for 100 ns;
   
    -- Tell the 1414 to expect data (as opposed to status)
    IBM1410_1414_INPUT_FIFO_WRITE_DATA <= std_logic_vector(
        to_unsigned(UNIT_RECEIVE_DATA_OPERATION, IBM1410_1414_INPUT_FIFO_WRITE_DATA'length )); -- Receive Data
    wait for 100 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    wait for 10 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    wait for 100 ns;

    -- Give it 80 columns of data

    for i in 0 to 79 loop
        IBM1410_1414_INPUT_FIFO_WRITE_DATA <= readerTestBuffer(i);        
        wait for 100 ns;
        IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
        wait for 10 ns;
        IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
        wait for 100 ns;
    end loop;
    
    -- Send the end of card indicator.
    
    IBM1410_1414_INPUT_FIFO_WRITE_DATA <= "00000000";
    wait for 100 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    wait for 10 ns;
    IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    wait for 100 ns;

    end sendReaderBuffer;

    -- START OF THE ACTUAL TEST BENCH 

    begin

    -- Fill a buffer with test data

    for i in 0 to 79 loop
        v := std_logic_vector(to_unsigned(i, v'length));
        v(HDL_WM_BIT) := '0';  -- Turn off wordmark - just 6 bits of actual data from reader
        v(HDL_C_BIT) := calculate_odd_parity(v);
        readerTestBuffer(i) <= v;
    end loop;

    UDP_RESET <= '1';
    wait for 100 ns;
    UDP_RESET <= '0';
    wait for 100 ns;
    t := now;

    -- The following test wasn't valid.
    -- assert MC_BUFFER_READY = '0' report "Test 1, Ready NOT asserted" severity failure;

    -- Send a status update to the FPGA
    -- Note that we do not have to send the leading 0x85 to the 1414 - that is handled
    -- at a higher level in the implementation.

    -- IBM1410_1414_INPUT_FIFO_WRITE_DATA <= std_logic_vector(
    --     to_unsigned(READER_CH1_DEVICE_NUMBER, IBM1410_1414_INPUT_FIFO_WRITE_DATA'length ));    -- Device 1 (reader)
    -- wait for 100 ns;
    -- IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    -- wait for 10 ns;
    -- IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    -- wait for 100 ns;
   
    -- IBM1410_1414_INPUT_FIFO_WRITE_DATA <= std_logic_vector(
    --     to_unsigned(UNIT_RECEIVE_STATUS_OPERATION, IBM1410_1414_INPUT_FIFO_WRITE_DATA'length )); -- Status Update
    -- wait for 100 ns;
    -- IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    -- wait for 10 ns;
    -- IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    -- wait for 100 ns;

    -- Set up card reader is ready
    v := "00000000";
    v(UNIT_READY_BIT) := '1';
    -- Consider also setting busy during the data transmission.
    
    -- IBM1410_1414_INPUT_FIFO_WRITE_DATA <= v;    -- Status: reader ready.
    -- wait for 100 ns;
    -- IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '1';
    -- wait for 10 ns;
    -- IBM1410_1414_INPUT_FIFO_WRITE_ENABLE <= '0';
    -- wait for 100 ns;

    sendStatusUpdate(statusDevice => READER_CH1_DEVICE_NUMBER, statusVector => v);

    --   Next, send a card image.  Make sure everything is odd parity.  ;)

    wait for 1 us;

    sendReaderBuffer(deviceNumber => READER_CH1_DEVICE_NUMBER);
    
    -- Start up a request to the buffer, and check the status
    
    MC_CPU_TO_I_O_SYNC_BUS <= "11111110";  -- Stacker select character == 1    
    MC_UNIT_1_SELECT_TO_I_O <= '0';
    MC_INPUT_MODE_TO_BUFFER <= '0';
    wait for 100 ns;
    
    assert MC_BUFFER_READY = '0'     report "Buffer Ready not asserted" severity failure;
    assert MC_BUFFER_BUSY = '1'      report "Buffer Busy asserted" severity failure;
    assert MC_BUFFER_CONDITION = '1' report "Buffer Condition asserted" severity failure;
    
    -- Now, tell the 1414 that the CPU is ready to receive data
    
    MC_STACK_SELECT_TO_BUFFER <= '1';  -- Not a stacker opcode
    MC_FORMS_STACKER_GO <= '1';        -- Not a stacker opcode
    MC_READY_TO_BUFFER <= '0';
    wait for 100 ns;

    -- Receive the data from the 1414 (and compare to the card we sent from the test buffer)
    
    for i in 0 to 79 loop
       wait until MC_BUFFER_STROBE = '0' for 10 us; 
       assert MC_BUFFER_STROBE = '0'    report "Buffer Strobe not asserted" severity failure;
       assert MC_I_O_SYNC_TO_CPU_BUS = not readerTestBuffer(i) 
          report "Data mismatched" severity failure;
       wait until MC_BUFFER_STROBE = '1' for 1 us;
       assert MC_BUFFER_STROBE = '1'    report "Buffer Strobe not de-asserted." severity failure;
    end loop;

    wait until MC_BUFFER_END_OF_TRANSFER = '0' for 10 us;
    assert MC_BUFFER_END_OF_TRANSFER = '0'  report "Buffer End of Transfer not asserted." severity failure;
    
    MC_CORRECT_TRANS_TO_BUFFER <= '0';
    wait for 1 us; -- short for testing
    assert MC_BUFFER_END_OF_TRANSFER = '1';

    -- Check status
    
    assert MC_BUFFER_NO_TRANS_COND = '1'  report "Buffer No Transfer Asserted." severity failure;
    assert MC_BUFFER_ERROR = '1'          report "Buffer Error Asserted." severity failure;

    -- Deselect the connection to the 1414
    
    MC_CPU_TO_I_O_SYNC_BUS <= "11111111";         
    MC_UNIT_1_SELECT_TO_I_O <= '1';
    MC_INPUT_MODE_TO_BUFFER <= '1';
    MC_READY_TO_BUFFER <= '1';
    wait for 100 ns;

    wait until MC_BUFFER_END_OF_TRANSFER = '1' for 10 us;
    assert MC_BUFFER_END_OF_TRANSFER = '1'  report "Buffer End of Transfer not de-asserted." severity failure;

    
    assert false report "Normal end of 1414 Unit Record I/O Sync Test Bench" severity failure;

end process;

MC_COMP_RESET_TO_BUFFER <= not UDP_RESET;

end Behavioral;
