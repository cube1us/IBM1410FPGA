----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jay R. Jaeger
-- 
-- Create Date: 09/01/2020
-- Design Name: IBM1410
-- Module Name: SMS_TAM - Behavioral
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

entity SMS_TAM is
    Port ( 
        FPGA_CLK: IN STD_LOGIC;
        DCSET:    IN STD_LOGIC := '1';    -- Pulled to gnd if not connected (pin C)
        DCRESET:  IN STD_LOGIC := '1';    -- Pulled to gnd if not connected (pin H)
        GATEON1:  IN STD_LOGIC := '1';    -- Will likely be pulled to gnd outside gate (pin A)
        ACSET1:   IN STD_LOGIC := '0';    -- Inactive if not connected (pin D)
        GATEON2:  IN STD_LOGIC := '1';    -- Will likely be pulled to gnd outside gate (pin F)
        ACSET2:   IN STD_LOGIC := '0';    -- Inactive if not connected (pin E)
        GATEOFF1: IN STD_LOGIC := '1';    -- Will likely be pulled to gnd outside gate (pin R)
        ACRESET1: IN STD_LOGIC := '0';    -- Inactive if not connected (pin Q)
        GATEOFF2: IN STD_LOGIC := '1';    -- Will likely be pulled to gnd outside gate (pin K)
        ACRESET2: IN STD_LOGIC := '0';    -- Inactive if not connected (pin L)
        DCRFORCE: IN STD_LOGIC := '0';    -- Used for Wired OR output being forced (Virtual pin "T")
	    DCSFORCE: IN STD_LOGIC := '0';    -- used for Wired OR output being forced (Virtual pin "X")
        OUTOFF:  OUT STD_LOGIC;           -- Pin B
        OUTON:   OUT STD_LOGIC;           -- Pin P
	GROUND:  OUT STD_LOGIC );
end SMS_TAM;

architecture Behavioral of SMS_TAM is

    SIGNAL SSTAGE1A, SSTAGE2A, SSTAGE3A: STD_LOGIC;
    SIGNAL SSTAGE1B, SSTAGE2B, SSTAGE3B: STD_LOGIC;
    SIGNAL RSTAGE1A, RSTAGE2A, RSTAGE3A: STD_LOGIC;    
    SIGNAL RSTAGE1B, RSTAGE2B, RSTAGE3B: STD_LOGIC;    

begin

    GROUND <= '1';

    SMS_TAM_PROCESS: process(FPGA_CLK, ACSET1, GATEON1, ACSET2, GATEON2,
           ACRESET1, GATEOFF1, ACRESET2, GATEOFF2, DCSET, DCRESET, 
           DCRFORCE, DCSFORCE)
        begin
        if(DCRESET = '0' OR DCRFORCE = '1') then
            OUTOFF <= '1';
            OUTON <= '0';
            SSTAGE1A <= '0';
            SSTAGE2A <= '0';
            SSTAGE3A <= '0';
            SSTAGE1B <= '0';
            SSTAGE2B <= '0';
            SSTAGE3B <= '0';
            RSTAGE1A <= '0';
            RSTAGE2A <= '0';
            RSTAGE3A <= '0';
            RSTAGE1B <= '0';
            RSTAGE2B <= '0';
            RSTAGE3B <= '0';
        elsif(DCSET = '0' OR DCSFORCE = '1') then
            OUTON <= '1';
            OUTOFF <= '0';
            SSTAGE1A <= '0';
            SSTAGE2A <= '0';
            SSTAGE3A <= '0';
            SSTAGE1B <= '0';
            SSTAGE2B <= '0';
            SSTAGE3B <= '0';
            RSTAGE1A <= '0';
            RSTAGE2A <= '0';
            RSTAGE3A <= '0';
            RSTAGE1B <= '0';
            RSTAGE2B <= '0';
            RSTAGE3B <= '0';
        elsif(rising_edge(FPGA_CLK)) then
            SSTAGE1A <= ACSET1;
            SSTAGE2A <= SSTAGE1A;
            SSTAGE3A <= SSTAGE2A;
            SSTAGE1B <= ACSET2;
            SSTAGE2B <= SSTAGE1B;
            SSTAGE3B <= SSTAGE2B;
            RSTAGE1A <= ACRESET1;
            RSTAGE2A <= RSTAGE1A;
            RSTAGE3A <= RSTAGE2A;
            RSTAGE1B <= ACRESET2;
            RSTAGE2B <= RSTAGE1B;
            RSTAGE3B <= RSTAGE2B;
            if(GATEON1 = '1' AND SSTAGE2A = '1' AND 
               SSTAGE1A = '1' AND SSTAGE3A = '0') then
                OUTON <= '1';
                OUTOFF <= '0';
            elsif(GATEON2 = '1' AND SSTAGE2B = '1' AND 
               SSTAGE1B = '1' AND SSTAGE3B = '0') then
                OUTON <= '1';
                OUTOFF <= '0';
            elsif(GATEOFF1 = '1' AND RSTAGE2A = '1' AND
                RSTAGE1A = '1' AND RSTAGE3A = '0') then
                OUTOFF <= '1';
                OUTON <= '0';               
            elsif(GATEOFF2 = '1' AND RSTAGE2B = '1' AND
                RSTAGE1B = '1' AND RSTAGE3B = '0') then
                OUTOFF <= '1';
                OUTON <= '0';               
            end if;
        end if;
        end process;

end Behavioral;
