-- VHDL for IBM SMS ALD page 15.41.10.1
-- Title: E CH FULL CONTROL-ACC
-- IBM Machine Name 1411
-- Generated by GenerateHDL at 8/11/2023 1:52:47 PM

-- Included from HDLTemplate.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- For use in test benches only
use WORK.ALL;

-- End of include from HDLTemplate.vhdl

entity ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC is
	    Port (
		FPGA_CLK:		 in STD_LOGIC;
		MS_SET_E1_REG:	 in STD_LOGIC;
		PS_E_CH_INPUT_MODE:	 in STD_LOGIC;
		PS_SET_E2_REG_DELAYED:	 in STD_LOGIC;
		MS_E_CH_RESET:	 in STD_LOGIC;
		MS_E1_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_SET_E2_REG:	 in STD_LOGIC;
		PS_E2_REG_WORD_SEPARATOR:	 in STD_LOGIC;
		PS_E_CH_OUTPUT_MODE:	 in STD_LOGIC;
		PS_E2_FULL_LATCH_STAR_SIF:	 in STD_LOGIC;
		MS_RESET_E2_FULL_LATCH:	 in STD_LOGIC;
		PS_E1_REG_FULL:	 out STD_LOGIC;
		MS_E1_REG_FULL:	 out STD_LOGIC;
		PS_E2_REG_FULL:	 out STD_LOGIC;
		MS_E2_REG_FULL:	 out STD_LOGIC);
end ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC;

architecture behavioral of ALD_15_41_10_1_E_CH_FULL_CONTROL_ACC is 

	signal OUT_5A_G: STD_LOGIC;
	signal OUT_4A_D: STD_LOGIC;
	signal OUT_4A_D_Latch: STD_LOGIC;
	signal OUT_3A_C: STD_LOGIC;
	signal OUT_3A_C_Latch: STD_LOGIC;
	signal OUT_2A_K: STD_LOGIC;
	signal OUT_5B_C: STD_LOGIC;
	signal OUT_4B_P: STD_LOGIC;
	signal OUT_2B_K: STD_LOGIC;
	signal OUT_5C_K: STD_LOGIC;
	signal OUT_5E_K: STD_LOGIC;
	signal OUT_3E_E: STD_LOGIC;
	signal OUT_1E_Q: STD_LOGIC;
	signal OUT_4F_D: STD_LOGIC;
	signal OUT_4F_D_Latch: STD_LOGIC;
	signal OUT_3F_P: STD_LOGIC;
	signal OUT_2G_C: STD_LOGIC;
	signal OUT_DOT_4A: STD_LOGIC;
	signal OUT_DOT_3E: STD_LOGIC;
	
	signal E1Full: STD_LOGIC := '0';
	
	signal E2Full: STD_LOGIC := '0';
	signal E2NotFull: STD_LOGIC := '0';
	signal E2FullSet2: STD_LOGIC := '0';

begin


   -- Stand in for problematic latch using collector pullover reset at 4A, 3A   

   E1FullReg: process(FPGA_CLK, OUT_5A_G, OUT_4B_P, MS_SET_E1_REG, MS_E_CH_RESET)
      begin
      
      if MS_E_CH_RESET = '0' then -- DC Reset
         E1Full <= '0';         
      elsif FPGA_CLK'EVENT and FPGA_CLK = '1' then
         if OUT_4B_P = '1' then   -- Reset priority (collector pullover)
            E1Full <= '0';
         elsif OUT_5A_G = '0' then
            E1Full <= '0';        -- Normal reset
         elsif MS_SET_E1_REG = '0' then
            E1Full <= '1';
         end if; 
      end if;
      
   end process; 

	OUT_5A_G <= NOT(PS_E_CH_INPUT_MODE AND PS_SET_E2_REG_DELAYED );
	OUT_4A_D_Latch <= NOT(OUT_5A_G AND OUT_3A_C AND MS_E_CH_RESET );
	OUT_3A_C_Latch <= NOT(OUT_DOT_4A AND MS_SET_E1_REG );
	
	-- OUT_2A_K <= OUT_3A_C;	
	OUT_2A_K <= E1Full;
	
	OUT_5B_C <= NOT(MS_E1_REG_WORD_SEPARATOR AND PS_SET_E2_REG );
	OUT_4B_P <= NOT(OUT_5B_C AND OUT_5C_K );
	
	-- OUT_2B_K <= OUT_DOT_4A;
	OUT_2B_K <= not E1Full;
	
	OUT_5C_K <= NOT(PS_E2_REG_WORD_SEPARATOR AND PS_SET_E2_REG );
	-- OUT_5E_K <= NOT(PS_E_CH_OUTPUT_MODE AND PS_SET_E2_REG );
   OUT_5E_K <= NOT(PS_E_CH_OUTPUT_MODE AND PS_SET_E2_REG_DELAYED );
	OUT_3E_E <= NOT(OUT_5C_K AND OUT_5E_K );	
	-- OUT_1E_Q <= OUT_DOT_3E;
	OUT_1E_Q <= E2Full;
	OUT_4F_D_Latch <= NOT(MS_RESET_E2_FULL_LATCH AND MS_E_CH_RESET AND OUT_DOT_3E );
	OUT_3F_P <= NOT(OUT_5B_C AND OUT_4F_D );
	-- OUT_2G_C <= OUT_4F_D;
	OUT_2G_C <= not E2Full;
	OUT_DOT_4A <= OUT_4A_D OR OUT_4B_P;
	OUT_DOT_3E <= OUT_3E_E OR OUT_3F_P OR PS_E2_FULL_LATCH_STAR_SIF;

	PS_E1_REG_FULL <= OUT_2A_K;
	MS_E1_REG_FULL <= OUT_2B_K;
	PS_E2_REG_FULL <= OUT_1E_Q;
	MS_E2_REG_FULL <= OUT_2G_C;

	Latch_4A: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4A_D_Latch,
		Q => OUT_4A_D,
		QBar => OPEN );

--	Latch_3A: entity DFlipFlop port map (
--		C => FPGA_CLK,
--		D => OUT_3A_C_Latch,
--		Q => OUT_3A_C,
--		QBar => OPEN );
   OUT_3A_C <= OUT_3A_C_LATCH;
   
	Latch_4F: entity DFlipFlop port map (
		C => FPGA_CLK,
		D => OUT_4F_D_Latch,
		Q => OUT_4F_D,
		QBar => OPEN );
		
   E2FullSet2 <= not OUT_3E_E;
		
   E2_FULL_LATCH: entity SMS_LATCH port map (
      FPGA_CLK => FPGA_CLK,
      RESET1 => MS_RESET_E2_FULL_LATCH,
      RESET2 => MS_E_CH_RESET,
      SET1 => OUT_5B_C,
      SET2 => E2FullSet2,
      SET3 => '1',
      OUTON => E2FUll,
      OUTOFF => OPEN);
   
end;
