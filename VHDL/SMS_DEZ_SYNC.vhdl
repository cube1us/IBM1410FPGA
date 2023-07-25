----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 7/21/2023
-- Design Name: IBM1410
-- Module Name: SMS_DEZ_SYNC - Behavioral
-- Project Name: IBM1410
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created based on SMS_DEY and SMS_DEZ
-- Additional Comments: Delays the input signals to match
--    the delays on ACSET designed to improve noise immunity will fix
--    some problems.
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

entity SMS_DEZ_SYNC is
    Port ( 
        FPGA_CLK: IN STD_LOGIC;
        GATEOFF:  IN STD_LOGIC;
        DCSET:    IN STD_LOGIC := '1';
        DCRESET:  IN STD_LOGIC := '1';
        GATEON:   IN STD_LOGIC;
        ACSET:    IN STD_LOGIC;
        DCRFORCE: IN STD_LOGIC := '0';   -- Used for Wired OR output being forced
	DCSFORCE: IN STD_LOGIC := '0';   -- used for Wired OR output being forced
        OUTOFF:   OUT STD_LOGIC;
        OUTON:    OUT STD_LOGIC;
	GROUND:   OUT STD_LOGIC );
end SMS_DEZ_SYNC;

architecture Behavioral of SMS_DEZ_SYNC is

    SIGNAL SSTAGE1, SSTAGE2, SSTAGE3: STD_LOGIC;
    SIGNAL GON1, GON2, GON3: STD_LOGIC;
    SIGNAL GOFF1, GOFF2, GOFF3: STD_LOGIC;

begin

    GROUND <= '1';

    SMS_DEZ_SYNC_PROCESS: process(FPGA_CLK, ACSET, DCSET, DCRESET, DCRFORCE, DCSFORCE)
        begin
        if(rising_edge(FPGA_CLK)) then
           if(DCRESET = '0' OR DCRFORCE = '1') then
              OUTOFF <= '1';
              OUTON <= '0';
              SSTAGE1 <= ACSET;
              SSTAGE2 <= ACSET;
              SSTAGE3 <= ACSET;
              GON1 <= GATEON;
              GON2 <= GATEON;
              GON3 <= GATEON;
              GOFF1 <= GATEOFF;
              GOFF2 <= GATEOFF;
              GOFF3 <= GATEOFF;
           elsif(DCSET = '0' OR DCSFORCE = '1') then
              OUTON <= '1';
              OUTOFF <= '0';
              SSTAGE1 <= ACSET;
              SSTAGE2 <= ACSET;
              SSTAGE3 <= ACSET;
              GON1 <= GATEON;
              GON2 <= GATEON;
              GON3 <= GATEON;
              GOFF1 <= GATEOFF;
              GOFF2 <= GATEOFF;
              GOFF3 <= GATEOFF;
           else
              SSTAGE1 <= ACSET;
              SSTAGE2 <= SSTAGE1;
              SSTAGE3 <= SSTAGE2;
              GON1 <= GATEON;
              GON2 <= GON1;
              GON3 <= GON2;
              GOFF1 <= GATEOFF;
              GOFF2 <= GOFF1;
              GOFF3 <= GOFF2;
              if(GON3 = '1' AND GON2 = '1' AND GON1 = '1' AND GATEON = '1' AND
                SSTAGE2 = '1' AND  SSTAGE1 = '1' AND SSTAGE3 = '0') then
                  OUTON <= '1';
                  OUTOFF <= '0';
                elsif(GOFF3 = '1' AND GOFF2 = '1' AND GOFF1 = '1' and GATEOFF = '1' AND 
                  SSTAGE2 = '1' AND SSTAGE1 = '1' AND SSTAGE3 = '0') then
                   OUTOFF <= '1';
                   OUTON <= '0';               
               end if;
            end if;
        end if;
        end process;

end Behavioral;
