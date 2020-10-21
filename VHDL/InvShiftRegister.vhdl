----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 10/21/2020
-- Design Name: IBM1410
-- Module Name: InvShiftRegister - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File copied and edited from ShiftRegister.vhdl
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

entity InvShiftRegister is

--  Delay is in nanoseconds
--  CLOCKTIMEUNIT in the FPGA Clock Time in nanoseconds
--  Inverted Output

    Generic(DELAY: INTEGER; CLOCKPERIOD: INTEGER);

    Port ( 
        FPGA_CLK:    IN STD_LOGIC;
        FIFO_IN:     IN STD_LOGIC := '0';
        FIFO_OUT:    OUT STD_LOGIC );

end InvShiftRegister;

architecture Behavioral of InvShiftRegister is

constant BUCKETS: INTEGER := (DELAY / CLOCKPERIOD);

signal FIFO: STD_LOGIC_VECTOR(BUCKETS-1 downto 0) := (others => '0');

begin

process(FPGA_CLK)
begin
	if(FPGA_CLK'event and FPGA_CLK = '1') then
		FIFO(BUCKETS-2 downto 0) <= FIFO(BUCKETS-1 downto 1);
		FIFO(BUCKETS-1) <= FIFO_IN;
	end if;
end process;

FIFO_OUT <= NOT FIFO(0);

end;