----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 6/4/2020
-- Design Name: IBM1410
-- Module Name: Oscillator - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.02 - Changed to only retrigger on falling edge of an input
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

entity SingleShot is
    Generic(PULSETIME: INTEGER; CLOCKPERIOD: INTEGER);
    Port ( 
        FPGA_CLK:   IN STD_LOGIC;
        IN1:        IN STD_LOGIC := '1';
        IN2:        IN STD_LOGIC := '1';
        IN3:        IN STD_LOGIC := '1';
        OUT1:      OUT STD_LOGIC );
end SingleShot;

-- PulseTime in ns
-- CLOCKPERIOD in ns

architecture Behavioral of SingleShot is

constant Counter_Max: INTEGER := PULSETIME / CLOCKPERIOD;

Signal count: INTEGER RANGE 0 to Counter_Max := 0;

signal SSTAGE1, SSTAGE2, SSTAGE3: STD_LOGIC;

begin

process(FPGA_CLK, IN1, IN2, IN3, count)
begin	
	if(FPGA_CLK'event and FPGA_CLK = '1') then
	   if(count /= 0) then
              count <= count - 1;
           else
              -- Look for falling edge of any trigger signal
              SSTAGE1 <= NOT (IN1 AND IN2 AND IN3);  -- Any 0 input will do
              SSTAGE2 <= SSTAGE1;
              SSTAGE3 <= SSTAGE2;
              if(SSTAGE1 = '1' AND SSTAGE2 = '1' AND SSTAGE3 = '0') then
	              count <= Counter_Max;
              end if;
           end if;
	end if;

	if(count /= 0) then
	   OUT1 <= '0';
	else
	   OUT1 <= '1';
	end if;

end process;

end;