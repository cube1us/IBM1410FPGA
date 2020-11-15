----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 10/20/2020
-- Design Name: IBM1410
-- Module Name: SMS_DEM - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created (copied from SMS_DEY)
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

entity SMS_DEM is
    Port ( 
        FPGA_CLK: IN STD_LOGIC;
        GATEOFF: IN STD_LOGIC := '1';    -- Pulled to gnd if not connected
        ACRESET: IN STD_LOGIC := '1';    -- Pulled to gnd by GATEOFF if not connected
        DCRESET: IN STD_LOGIC := '1';
        GATEON:  IN STD_LOGIC;
        ACSET:   IN STD_LOGIC;
        DCSET:   IN STD_LOGIC := '1';
        DCRFORCE: IN STD_LOGIC := '0';   -- Used for Wired OR output being forced
	DCSFORCE: IN STD_LOGIC := '0';   -- used for Wired OR output being forced
        OUTOFF:  OUT STD_LOGIC;
        OUTON:   OUT STD_LOGIC;
	GROUND:  OUT STD_LOGIC );
end SMS_DEM;

architecture Behavioral of SMS_DEM is

    SIGNAL SSTAGE1, SSTAGE2, SSTAGE3: STD_LOGIC;
    SIGNAL RSTAGE1, RSTAGE2, RSTAGE3: STD_LOGIC;    

begin

    GROUND <= '1';

    SMS_DEM_PROCESS: process(FPGA_CLK, ACSET, ACRESET, DCSET, DCRESET, DCRFORCE, DCSFORCE)
        begin
        if(DCRESET = '0' OR DCRFORCE = '1') then
            OUTOFF <= '1';
            OUTON <= '0';
            SSTAGE1 <= '0';
            SSTAGE2 <= '0';
            SSTAGE3 <= '0';
            RSTAGE1 <= '0';
            RSTAGE2 <= '0';
            RSTAGE3 <= '0';            
        elsif(DCSET = '0' OR DCSFORCE = '1') then
            OUTON <= '1';
            OUTOFF <= '0';
            SSTAGE1 <= '0';
            SSTAGE2 <= '0';
            SSTAGE3 <= '0';
            RSTAGE1 <= '0';
            RSTAGE2 <= '0';
            RSTAGE3 <= '0';            
        elsif(rising_edge(FPGA_CLK)) then
            SSTAGE1 <= ACSET;
            SSTAGE2 <= SSTAGE1;
            SSTAGE3 <= SSTAGE2;
            RSTAGE1 <= ACRESET;
            RSTAGE2 <= RSTAGE1;
            RSTAGE3 <= RSTAGE2;
            if(GATEON = '1' AND SSTAGE2 = '1' AND 
               SSTAGE1 = '1' AND SSTAGE3 = '0') then
                OUTON <= '1';
                OUTOFF <= '0';
            elsif(GATEOFF = '1' AND RSTAGE2 = '1' AND
                RSTAGE1 = '1' AND RSTAGE3 = '0') then
                OUTOFF <= '1';
                OUTON <= '0';               
            end if;
        end if;
        end process;

end Behavioral;
