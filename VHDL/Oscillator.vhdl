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

entity Oscillator is
    Generic(FREQUENCY: INTEGER; CLOCKPERIOD: INTEGER);
    Port ( 
        FPGA_CLK:   IN STD_LOGIC;
        NONE:       IN STD_LOGIC := '0';
        ClkOut:     OUT STD_LOGIC );
end Oscillator;

architecture Behavioral of Oscillator is

Signal count: INTEGER := 0;
Signal tmp:   STD_LOGIC := '0';

-- FREQUENCY in KHZ
-- Counter in CLOCKPERIOD increments
-- Frequency * 2 as counter is for each half cycle
-- -1 (0 at start)
-- Result in ns

constant Counter_Max: INTEGER := (1000000 / (CLOCKPERIOD * FREQUENCY * 2)) - 1;

begin

process(FPGA_CLK, tmp)
begin
	if(FPGA_CLK'event and FPGA_CLK = '1') then
		count <= count + 1;
                if(count = Counter_Max) then
			tmp <= NOT tmp;
			count <= 0;
		end if;
	end if;
	ClkOut <= tmp;
end process;

end;