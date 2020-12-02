----------------------------------------------------------------------------------
-- Company: University of Wiscosin EE554 Group III; 1972
-- Engineer: Jay Jaeger et. al.
-- 
-- Create Date:    2015/2/2
-- Design Name:    IBM1410
-- Module Name:    DFlipFlop
-- Project Name:   IBM1410
-- Target Devices: 
-- Tool versions: 
-- Description: Describes a D Flip Flop used to synchronize latch outputs
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFlipFlop is
	Port (C: in std_logic;
	      D: in std_logic;
	      Q: out std_logic;
	      QBar: out std_logic);
end DFlipFlop;


--	D Flip Flop - typically used after RS latches

architecture Behavioral of DFlipFlop is

	-- signal QTemp: std_logic;

begin

	-- Q <= QTemp;
	-- QBar <= not QTemp;

	DFlipFlop_process: process(C)
	begin
	if rising_edge(C) then
		-- QTemp <= D;
		Q <= D;
		QBar <= not D;
	end if;
	end process;

end Behavioral;
