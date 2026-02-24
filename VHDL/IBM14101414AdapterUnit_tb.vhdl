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

signal unitDataSentToPC: std_logic_vector(7 downto 0) := "00000000";

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
        

-- Start of main testing process    


uut_process: process

    variable t: time;
    variable v: std_logic_vector(7 downto 0);

-- Procedure to send a device status update to the FPGA
-- Note that we do not have to send the leading 0x85 to the 1414 - that is handled
-- at a higher level in the implementation.

procedure sendStatusUpdate (
    testName: in STRING;
    statusDevice: in INTEGER;     
    statusVector: in std_logic_vector(7 downto 0)) is

    begin

    report testName & " Sending Status Update to 1414";
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



-- Procedure to send a card image to the 1414 (acting as PC Support Program)

procedure sendReaderToBuffer(
    testName: in String; deviceNumber: in integer) is

    begin

    report testName & " Sending Card Reader data to 1414";
    
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

    end sendReaderToBuffer;

-- Procedure to receive data from 1414 Card reader Buffer as though we are the CPU, and
-- compare it to the reader buffer we previously sent

procedure getReaderBufferToChannel(
    testName: in STRING;
    readerOpcode: in std_logic;
    stackerOpcode: in std_logic;
    stackerNumber: in integer;      -- As POSITIVE logic, 9 means no stacker
    expectNoTransfer: in std_logic;  -- As POSITIVE logic
    expectNotReady: in std_logic;
    expectBusy: in std_logic;
    expectCondition: in std_logic
    ) is

    begin

    if readerOpCode = '1' then
        report testName & " Requesting Card Reader buffer from 1414";
    elsif stackerOpCode = '1' then
        report testName & " Requesting Stacking Card (SSF Instruction)";
    end if;
    
    case stackerNumber is
        when 0 => MC_CPU_TO_I_O_SYNC_BUS <= not "10001010";
        when 1 => MC_CPU_TO_I_O_SYNC_BUS <= not "00000001";
        when 2 => MC_CPU_TO_I_O_SYNC_BUS <= not "00000010";
        when 9 => MC_CPU_TO_I_O_SYNC_BUS <= not "10001001";
        when others => MC_CPU_TO_I_O_SYNC_BUS <= "11111111";
    end case;
    wait for 10 ns;

    -- Enable getting status from the 1414
    MC_UNIT_1_SELECT_TO_I_O <= '0';  --For this prcedure, it is always the reader. 
    MC_INPUT_MODE_TO_BUFFER <= '0';
    wait for 100 ns;
    
    -- Check that the status is as expected.  (Not equal - because MC_* are active LOW)

    assert MC_BUFFER_READY = expectNotReady   -- Remembering that MC signals are active low
       report testName & " Buffer ready/not ready not as expected" severity failure;
    
    assert MC_BUFFER_BUSY /= expectBusy
       report testName & " Buffer busy/not busy not as expected" severity failure;
    
    assert MC_BUFFER_CONDITION /= expectCondition
       report testName & " Buffer condition not as expected" severity failure;
    
    -- If any of the not ready, busy or condition are set, the 1411 will stop here (Status Sample "A")

    if MC_BUFFER_READY = '1' or MC_BUFFER_BUSY = '0' or MC_BUFFER_CONDITION = '0' then
        report testName & " Status indicates that no actual read will take place.  returning (no error).";
        if MC_BUFFER_CONDITION = '0' then
           MC_RESET_SELECT_BUFFER_LATCHES <= '0';
           wait for 100 ns;
           MC_RESET_SELECT_BUFFER_LATCHES <= '1';
        end if;
        MC_CPU_TO_I_O_SYNC_BUS <= "11111111";         
        MC_UNIT_1_SELECT_TO_I_O <= '1';
        MC_INPUT_MODE_TO_BUFFER <= '1';
        MC_READY_TO_BUFFER <= '1';
        wait for 100 ns;
        return;
    end if;

    -- Now, if it is a read request, tell the 1414 that the CPU is ready to receive data
    
    MC_STACK_SELECT_TO_BUFFER <= not stackerOpcode; -- If a stacker op code, tell the the 1414 about it.
    wait for 100 ns;

    -- If this is a stacker request wait a check to see if there is a no transfer conddition now,
    -- before we well the 1414 to "go" and start the stack and feed.

    if stackerOpcode = '1' then
        assert MC_BUFFER_NO_TRANS_COND = (not expectNoTransfer)
           report testName & " No transfer condition not as expected (1). " severity failure;           
        if MC_BUFFER_NO_TRANS_COND = '1' then   -- Not no transfer, so proceed to start reader feed
            MC_FORMS_STACKER_GO <= '0';         -- Tell reader to engage clutch
            wait for 100 ns;                    -- In the real case, this will be q lot longer.
        end if;
        -- Otherwise, if no transfer, the CPU will (should) never issue the forms stacker go.
        -- Either way, the channel is now done.
        MC_CPU_TO_I_O_SYNC_BUS <= "11111111";         
        MC_FORMS_STACKER_GO <= '1';
        MC_STACK_SELECT_TO_BUFFER <= '1';
        MC_UNIT_1_SELECT_TO_I_O <= '1';
        MC_INPUT_MODE_TO_BUFFER <= '1';
        MC_READY_TO_BUFFER <= '1';
        wait for 100 ns;
        return;  --  All done in this case.
    end if;
            
    -- If this is a read instruction, tell the 1414 we are ready to receive data.
    MC_READY_TO_BUFFER <= not readerOpcode; -- '0';
    wait for 100 ns;

    -- Then, for a read instruction, receive the data from the 1414 
    -- (and compare to the card we sent from the test buffer)

    if stackerOpCode = '0' then
        for i in 0 to 79 loop
        wait until MC_BUFFER_STROBE = '0' for 10 us; 
        assert MC_BUFFER_STROBE = '0'
            report testName & " Buffer Strobe not asserted" severity failure;
        assert MC_I_O_SYNC_TO_CPU_BUS = not readerTestBuffer(i) 
            report testName & " Data mismatched" severity failure;
        wait until MC_BUFFER_STROBE = '1' for 1 us;
        assert MC_BUFFER_STROBE = '1' 
            report testName & " Buffer Strobe not de-asserted." severity failure;
        end loop;

        report "DEBUG: Waiting for Buffer end of transfer";

        -- Because MC_BUFFER_END_OF_TRANSFER is asserted right as MC_BUFFER_STROBE is de-asserted
        -- We cannot just use a wait until.  That is an annoying thing in VHDL.
        if MC_BUFFER_END_OF_TRANSFER /= '0' then
            wait until MC_BUFFER_END_OF_TRANSFER = '0' for 10 us;
        end if;
        assert MC_BUFFER_END_OF_TRANSFER = '0'
            report testName & " Buffer End of Transfer not asserted." severity failure;
        
        -- We are now at Status Sample "B" in the 1411 CPU - THIS is where no transfer, etc., are sampled.
        -- We have to do this now, becuase if we wait until we assert MC_CORRECT_TRANS_TO_BUFFER or
        -- MC_RESET_SELECT_BUFFER_LATCHES (which is used at the end for data check, Wrong Length Record and EOF)
        -- we will get an incorrect no transfer condition.

        wait for 100 ns;
        
        assert MC_BUFFER_NO_TRANS_COND = (not expectNoTransfer) 
            report testName & " Buffer No Transfer Did not match expected value. (2)" severity failure;
        assert MC_BUFFER_ERROR = '1' report testName & "Buffer Error Asserted." severity failure;

        wait for 100 ns;  -- Time between the status samples.

        -- Now we are in 2nd Status Sample B, which will set the Multi-Read latch.  Technically, if we get
        -- a read error then we should assert MC_RESET_SELECT_BUFFER_LATCHES instead.

        MC_CORRECT_TRANS_TO_BUFFER <= '0';
        if MC_BUFFER_END_OF_TRANSFER /= '1' then
            wait until MC_BUFFER_END_OF_TRANSFER = '1' for 10 us;
        end if;
        assert MC_BUFFER_END_OF_TRANSFER = '1'
            report testName & " Buffer End of Transfer did not de-assert." severity failure;
    end if;

    -- Check status
    
    -- assert MC_BUFFER_NO_TRANS_COND = (not expectNoTransfer) 
    --   report testName & " Buffer No Transfer Did not match expected value. (2)" severity failure;
    -- assert MC_BUFFER_ERROR = '1' report testName & "Buffer Error Asserted." severity failure;

    -- Deselect the connection to the 1414
    
    MC_CPU_TO_I_O_SYNC_BUS <= "11111111";         
    MC_UNIT_1_SELECT_TO_I_O <= '1';
    MC_INPUT_MODE_TO_BUFFER <= '1';
    MC_READY_TO_BUFFER <= '1';
    wait for 100 ns;

    wait until MC_BUFFER_END_OF_TRANSFER = '1' for 10 us;
    assert MC_BUFFER_END_OF_TRANSFER = '1'  
       report testName & " Buffer End of Transfer not de-asserted." severity failure;

    MC_CORRECT_TRANS_TO_BUFFER <= '1';
    MC_RESET_SELECT_BUFFER_LATCHES <= '1';
    wait for 100 ns;

    end getReaderBufferToChannel;

-- Procedure to wait for an expected read request going out from the 1414 to the
-- PC support program, and digest it.

procedure getExpectedReaderRequest(
    testName: in String;
    deviceCode: in integer;
    stackerNumber: in integer
    )  is

    begin

    -- The first byte is the reader device code: 00000001

    report testName & " Looking for expected Card Read Feed request from 1414";
    wait until IBM1410_1414_UART_REQUEST = '1' for 100 ns;   -- Request should already be there
    assert IBM1410_1414_UART_REQUEST = '1' report 
       testName & " No UART request for expected reader start device code." severity failure;
    wait for 10 ns;
    IBM1410_1414_UART_GRANT <= '1';  -- Grant the request.  Data should now appear
    wait for 10 ns;
    unitDataSentToPC <= IBM1410_1414_XMT_UART_DATA;
    IBM1410_1414_UART_GRANT <= '0'; -- Remove the grant
    wait for 10 ns;
    assert IBM1410_UART_XMT_UDP_FLUSH = '0' 
       report testName & " UDP Flush Flag set when not expected." severity failure;
    assert unitDataSentToPC = std_logic_vector(to_unsigned(deviceCode, unitDataSentToPC'length ))
       report testName & " Expected Device number not received." severity failure;
    
    -- The second byte is the operation.  For a normal read, that is 11 (reader
    -- device code & stacker).  The flush flag should also be set.

    wait until IBM1410_1414_UART_REQUEST = '1' for 1 us;   -- Request should already be there
    assert IBM1410_1414_UART_REQUEST = '1' report 
       testName & " No UART request for expected reader operation code." severity failure;
    wait for 10 ns;
    IBM1410_1414_UART_GRANT <= '1';  -- Grant the request.  Data should now appear
    wait for 10 ns;
    unitDataSentToPC <= IBM1410_1414_XMT_UART_DATA;
    IBM1410_1414_UART_GRANT <= '0'; -- Remove the grant
    wait for 10 ns;
    assert IBM1410_UART_XMT_UDP_FLUSH = '1' 
       report testName & " UDP Flush Flag NOT set when not expected." severity failure;

    report testName & " Debug: unitDataSentToPC is " & to_bstring(to_bitvector(unitDataSentToPC)) &
        ", deviceCode is " & integer'image(deviceCode) & ", stackerNumber is " & integer'image(stackerNumber);

    assert unitDataSentToPC = std_logic_vector(to_unsigned(deviceCode,4)) &
       std_logic_vector(to_unsigned(stackerNumber,4))
       report testName & " Expected Reader Support operation code not received." severity failure;

    -- There should NOT be an immediate request to send more data

    wait until IBM1410_1414_UART_REQUEST = '1' for 1 us;
    assert IBM1410_1414_UART_REQUEST = '0' report
       testName & " Unexpected request to send more UART data on read feed message to PC" 
       severity failure;

    end getExpectedReaderRequest;

-- Procedure to do a given reader command, calling the procedures above as required

procedure doReaderTest(
    testName: in String;
    testSequence: integer range 0 to 9;
    testStep: in String;
    testStepBCD: in std_logic_vector(7 downto 0);
    readInstruction: in std_logic;  -- If false, then this is an SSF instruction
    deviceNumber: in integer;
    sendImageToBuffer: in std_logic;       -- true if we should send the buffer image to the 1414
    expectFeed: in std_logic;       -- true if we expect a reader feed
    stackerNumber: in integer;      -- As POSITIVE logic, 9 means no stacker
    expectNoTransfer: in std_logic; -- As POSITIVE logic
    expectNotReady: in std_logic;
    expectBusy: in std_logic;
    expectCondition: in std_logic
) is
    
    begin

    report "*** Begin Reader test " & testName & integer'image(testSequence) & testStep;

    -- First send the buffer image to the 1414 if requested.

    if sendImageToBuffer = '1' then
        -- First, prepare the first 3 columns of the card with unique information for this test
        readerTestBuffer(0) <= std_logic_vector(to_unsigned(testSequence,8));
        readerTestBuffer(1) <= testStepBCD;   
        wait for 10 ns;     
        -- Next, send the reader to the 1414
        sendReaderToBuffer(testName => testName & integer'image(testSequence) & testStep & " sendReaderToBuffer",
            deviceNumber => deviceNumber);
    end if;

    -- Next, if this is a read instruction, fetch the card image from the 1414, pretending to be the 
    -- 1411 CPU.  Otherwise, for an SSF instruction, pretend to be the CPU issuing the SSF to the 1414.

    if readInstruction = '1' then
        getReaderBufferToChannel(
            testName => testName & integer'image(testSequence) & testStep & " getReaderBufferToChannel",
            readerOpCode => '1', stackerOpcode => '0', stackerNumber => stackerNumber, 
            expectNoTransfer => expectNoTransfer, expectNotReady => expectNotready, expectBusy => expectBusy, 
            expectCondition => expectCondition);
    else
        -- This is a stacker op code, so no actual transfer
        getReaderBufferToChannel(
            testName => testName & integer'image(testSequence) & testStep & " getReaderBufferToChannel (SSF)",
            readerOpCode => '0', stackerOpcode => '1', stackerNumber => stackerNumber,
            expectNoTransfer => expectNoTransfer, expectNotReady => expectNotReady, expectBusy => expectBusy, 
            expectCondition => expectCondition);
    end if;

    -- If the caller expected there to be a feed instruction check that it happened (or vice-versa)

    if expectFeed = '1' then
        getExpectedReaderRequest(
            testName => testName & integer'image(testSequence) & testStep & " getExpectedReaderRequest ",
            deviceCode => READER_CH1_DEVICE_NUMBER,
            stackerNumber => stackerNumber); 
    else
        -- NOT expected a reader feed request
        wait until IBM1410_1414_UART_REQUEST = '1' for 1us;
        assert IBM1410_1414_UART_REQUEST = '0' 
            report testname & integer'image(testSequence) & testStep & " Unexpected reader feed received." 
            severity failure;
    end if;

    end doReaderTest;


    -- START OF THE ACTUAL TEST BENCH 

    begin

    -- Fill a buffer with initial test data

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


    -- Start of test sequence 1 - normal read and SSF sequences with no No Transfer results.

    -- Send a statups update that the reader is ready.

    v := "00000000";
    v(UNIT_READY_BIT) := '1';

    sendStatusUpdate(testName => "Reader Status Update",statusDevice => READER_CH1_DEVICE_NUMBER, statusVector => v);
    
    -- M%10 read.  SendImageToBuffer is 1 here, presuming card reader was pre-loaded with cards, and the
    -- first one therefore sent to the 1414

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "a", testStepBCD => "00110001",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '1',
        stackerNumber => 0, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Now do it again for a second card  (Sequence 1, second instruction).  M%11 this time.

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "b", testStepBCD => "00110010",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '1',
        stackerNumber => 1, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Next, for the third line, send a M%19 (Read card but no feed)

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "c", testStepBCD => "10110011",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Then do a select stacker and feed, which should be OK given the pervious M%19
    -- SendImageToBuffer is 0 here, because there was no feed on the previuos M%19, but
    -- NOW we feed the NEXT card.

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "d", testStepBCD => "00110100",
        readInstruction => '0', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '1',
        stackerNumber => 2, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Now, do another read with no feed (M%19) after the preceeding SSF.  SendImageToBuffer is 1 because
    -- we fed a card in the previous SSF.

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "e", testStepBCD => "10110101",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- And, just like before, follow it with an SSF with no sendImageToBuffer, this time to stacker 0 just because

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "f", testStepBCD => "10110110",
        readInstruction => '0', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '1',
        stackerNumber => 0, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Now, do yet another read with no feed (M%19) after the preceeding SSF

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "g", testStepBCD => "00110111",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- And, yet again, just like before, follow it with an SSF, this time to stacker 1 just because

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "h", testStepBCD => "00111000",
        readInstruction => '0', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '1',
        stackerNumber => 1, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Finish off sequnece 1 with a plain old read t stacker 1 (M%11)

    doReaderTest(testName => "Sequence", testSequence => 1, testStep => "i", testStepBCD => "10111001",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '1',
        stackerNumber => 1, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');



    -- Start of test sequence 2, an M%19 followed by TWO SSF - the second of which should produce a No Transfer
    -- condition.  The end of sequence 1 would have left a card in station 2, so we can send an image to the 1414

    doReaderTest(testName => "Sequence", testSequence => 2, testStep => "a", testStepBCD => "00110001",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Follow that with an SSF, which should be OK.

    doReaderTest(testName => "Sequence", testSequence => 2, testStep => "b", testStepBCD => "00111010",
        readInstruction => '0', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '1',
        stackerNumber => 1, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Now do a SECOND SSF which should fail right out of the box with No Transfer, and NO subsequent feed, either,
    -- as this would fail during Status Sample A in the 1414.  SendImageToBuffer is 1 here, because the previous
    -- SSF would have read in a card and transmitted a new one from station 2.

    doReaderTest(testName => "Sequence", testSequence => 2, testStep => "c", testStepBCD => "10111011",
        readInstruction => '0', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '0',
        stackerNumber => 1, expectNoTransfer => '1', expectNotReady => '0', expectBusy => '0', expectCondition => '0');


    -- Start of test sequence 3 -- M%10 followed by SSF should result in no transfer.
    -- As these were the first tests I coded, they do not use "dorReaderTest".

    -- Next, send a card image to the 1414.  Set up beginng of buffer with test sequence info,
    -- to help make sure there isn't stale data that satisfies the test.

    readerTestBuffer(0) <= "10000011";  -- Test 3
    readerTestBuffer(1) <= "00110001";  -- a
    readerTestBuffer(2) <= "00000010";  -- 2
    wait for 1 us;

    sendReaderToBuffer(testName => "Sequence#3a2",deviceNumber => READER_CH1_DEVICE_NUMBER);
    
    -- Now, pretend to be the CPU, and ask for the card data, and compare it.

    getReaderBufferToChannel(
        testName => "Sequence#3a3", readerOpCode => '1', stackerOpcode => '0', stackerNumber => 1, 
        expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0'
    );

    -- There ought to be a read feed request outstanding at this point.

    getExpectedReaderRequest(testName => "Squence#3a4", deviceCode => READER_CH1_DEVICE_NUMBER,
        stackerNumber => 1); 

    -- Start of test sequence 3 SSF instruction - first No Transfer test

    wait for 1 us;

    v := "00000000";
    v(UNIT_READY_BIT) := '1';

    --   Next, send a card image to the 1414.

    wait for 1 us;

    sendReaderToBuffer(testName => "Sequence#3b2", deviceNumber => READER_CH1_DEVICE_NUMBER);
    
    wait for 1 us;

    -- Then do a select stacker and feed WITHOUT a buffer transfer to the channel.
    -- This should result in a no transfer condition.
   
    getReaderBufferToChannel(
        testName => "Sequence#3b3", readerOpCode => '0', stackerOpcode => '1', stackerNumber => 1, 
        expectNoTransfer => '1', expectNotReady => '0', expectBusy => '0', expectCondition => '0'

    );

    -- After a SSF with No Transfer, there should NOT be a feed request

    wait until IBM1410_1414_UART_REQUEST = '1' for 1us;
    assert IBM1410_1414_UART_REQUEST = '0' report "Sequence#3b4, Feed Request on SSF with No Transfer Unexpected"
        severity failure;


    -- Beginning of test sequence 4 - two M%19 requests in a row.  Sequence 3 would leave the reader with a
    -- card imaage in station 2, so no need to send a card image on these - it is already there.

    doReaderTest(testName => "Sequence", testSequence => 4, testStep => "a", testStepBCD => "00110001",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Now repeat the above M%19 - but without sending an image to the 1414 - it wouild still be there due to the
    -- preceeding M%19.  This second should result in a No Transfer condition, but still no feed.

    doReaderTest(testName => "Sequence", testSequence => 4, testStep => "b", testStepBCD => "00110010",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '1', expectNotReady => '0', expectBusy => '0', expectCondition => '0');


    -- Beginning of test sequence 5.  Because of how sequence 4 ended, we first need to do an SSF to get the
    -- next card into the 1414 buffer.  So, the first step is labelled as a space.

    doReaderTest(testName => "Sequence", testSequence => 5, testStep => " ", testStepBCD => "10110000",
        readInstruction => '0', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '1',
        stackerNumber => 1, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Follow that up with a read M%19 to transfer the image just fed into the CPU, but without a subsequent feed.

    doReaderTest(testName => "Sequence", testSequence => 5, testStep => "a", testStepBCD => "00110001",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '1', expectFeed => '0',
        stackerNumber => 9, expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    -- Then do a regular read.  Since there was no feed from the preceeding M%19, this results in no transfer.

    doReaderTest(testName => "Sequence", testSequence => 5, testStep => "b", testStepBCD => "10110010",
        readInstruction => '1', deviceNumber => READER_CH1_DEVICE_NUMBER, sendImageToBuffer => '0', expectFeed => '1',
        stackerNumber => 0, expectNoTransfer => '1', expectNotReady => '0', expectBusy => '0', expectCondition => '0');

    
    -- End of file test - do this stepwise instead of using doReaderTest

    
    readerTestBuffer(0) <= "10000110";  -- Test 6
    readerTestBuffer(1) <= "00110001";  -- a
    readerTestBuffer(2) <= "00000001";  -- 1
    wait for 100 ns;

    -- The last step in sequence 5 should have resulted in a feed (which it checked for), so now we can
    -- transfer that subsequent card image to the 1414

    wait for 1 us;

    sendReaderToBuffer(testName => "Sequence#6a1 - EOF Test",deviceNumber => READER_CH1_DEVICE_NUMBER);
    
    wait for 100 ns;

    -- We need to tell the 1414 that this will be the last card.  (Note that it has NOT yet been stacked)
    -- The ILD implies this happens during any of the encodes of columns (though it might not really be until
    -- the encode cycles to transfer the card to the CPU)

    v := "00000000";
    v(UNIT_READY_BIT) := '1';
    v(READER_LAST_CARD_BIT) := '1';

    sendStatusUpdate(testName => "Sequence#6a2 - EOF Test Reader Status Update",
        statusDevice => READER_CH1_DEVICE_NUMBER, statusVector => v);

    -- Now, pretend to be the CPU, and ask for the card data, and compare it.  This will send another feed request, too,
    -- causing the last card to be stacked.

    getReaderBufferToChannel(
        testName => "Sequence#6a3 - EOF Test", readerOpCode => '1', stackerOpcode => '0', stackerNumber => 2, 
        expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '0'
    );

    wait for 100 ns;

    -- The above will also generate a feed request (which causes the last card to be stacked)

    getExpectedReaderRequest(testName => "Sequence6a4 - EOF Test", deviceCode => READER_CH1_DEVICE_NUMBER,
        stackerNumber => 2); 

    wait for 100 ns;

    -- OK.  Now try another read request.  There is no new data, but it should not result in a NO Transfer.
    -- Instead, this should result in a condition status, and NOT generate a feed.

    getReaderBufferToChannel(
        testName => "Sequence#6a5 - EOF Test", readerOpCode => '1', stackerOpcode => '0', stackerNumber => 2, 
        expectNoTransfer => '0', expectNotReady => '0', expectBusy => '0', expectCondition => '1'
    );

    -- And there should NOT be a feed request, either.

    if IBM1410_1414_UART_REQUEST /= '1' then
        wait until IBM1410_1414_UART_REQUEST = '1' for 1us;
    end if;
           
    assert IBM1410_1414_UART_REQUEST = '0' 
        report "Sequence6a6 - EOF Test - Unexpected reader feed received." 
        severity failure;

    -- The CPU would now do a reset of select buffer latches => .

    MC_RESET_SELECT_BUFFER_LATCHES <= '0';
    wait for 100 ns;
    MC_RESET_SELECT_BUFFER_LATCHES <= '1';

    -- Now the PC Support program, with a suitable delay after sending the EOF (i.e., having stacked the
    -- card) will go not ready, to reset the EOF DELAY latch.

    v := "00000000";
    v(UNIT_READY_BIT) := '0';
    v(READER_LAST_CARD_BIT) := '0';

    sendStatusUpdate(testName => "Sequence#6a7 - EOF Test Reader STOP Status Update",
        statusDevice => READER_CH1_DEVICE_NUMBER, statusVector => v);

    wait for 100 ns;

    assert false report "Normal end of 1414 Unit Record I/O Sync Test Bench" severity failure;

end process;

MC_COMP_RESET_TO_BUFFER <= not UDP_RESET;

end Behavioral;
