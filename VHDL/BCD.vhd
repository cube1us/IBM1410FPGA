library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package BCD is
   type BCD is (
      BCD_BLANK,         -- (No bits)
      BCD_1,             --           1
      BCD_2,             --         2
      BCD_3,             --         2 1
      BCD_4,             --       4 2 1
      BCD_5,             --       4   1
      BCD_6,             --       4 2
      BCD_7,             --       4 2 1
      BCD_8,             --     8
      BCD_9,             --     8     1
      BCD_0,             --     8   2
      BCD_POUND,         --     8   2 1
      BCD_AT,            --     8 4
      BCD_COLON,         --     8 4   1
      BCD_GREATER_THAN,  --     8 4 2
      BCD_CHECK,         --     8 4 2 1
      BCD_ALT_BLANK,     --   A
      BCD_SLASH,         --   A       1
      BCD_S,             --   A     2
      BCD_T,             --   A     2 1
      BCD_U,             --   A   4
      BCD_V,             --   A   4   1
      BCD_W,             --   A   4 2
      BCD_X,             --   A   4 2 1
      BCD_Y,             --   A 8
      BCD_Z,             --   A 8     1
      BCD_RECORD_MARK,   --   A 8   2
      BCD_COMMA,         --   A 8   2 1
      BCD_PERCENT,       --   A 8 4      (AKA Left paren.)
      BCD_WORD_SEPARATOR,--   A 8 4   1
      BCD_BACKSLASH,     --   A 8 4 2
      BCD_SEGMENT_MARK,  --   A 8 4 2 1  
      BCD_MINUS,         -- B
      BCD_J,             -- B         1
      BCD_K,             -- B       2
      BCD_L,             -- B       2 1
      BCD_M,             -- B     4
      BCD_N,             -- B     4   1
      BCD_O,             -- B     4 2
      BCD_P,             -- B     4 2 1
      BCD_Q,             -- B   8
      BCD_R,             -- B   8     1
      BCD_EXCLAMATION,   -- B   8   2
      BCD_DOLLAR,        -- B   8   2 1
      BCD_ASTERISK,      -- B   8 4
      BCD_RIGHT_BRACKET, -- B   8 4   1  
      BCD_SEMICOLON,     -- B   8 4 2
      BCD_MODE_CHANGE,   -- B   8 4 2 1  (AKA Delta)
      BCD_AMPERSAND,     -- B A          (AKA +)
      BCD_A,             -- B A       1
      BCD_B,             -- B A     2
      BCD_C,             -- B A     2 1
      BCD_D,             -- B A   4
      BCD_E,             -- B A   4   1
      BCD_F,             -- B A   4 2
      BCD_G,             -- B A   4 2 1
      BCD_H,             -- B A 8
      BCD_I,             -- B A 8     1
      BCD_QUESTION_MARK, -- B A 8   2
      BCD_PERIOD,        -- B A 8   2 1
      BCD_LOZENGE,       -- B A 8 4      (AKA Right paren.)
      BCD_LEFT_BRACKET,  -- B A 8 4   1
      BCD_LESS_THAN,     -- B A 8 4 2
      BCD_GROUP_MARK     -- B A 8 4 2 1       
      );
   
   function bcd_to_slv6(bcd_char: in BCD)
      return std_logic_vector;
   
   function bcd_to_slv8(bcd_char: in BCD)
      return std_logic_vector;
      
   function bcd_to_slv8_odd_parity(bcd_char: in BCD)
         return std_logic_vector;
     
        
end package BCD;

package body BCD is

   function bcd_to_slv6(BCD_CHAR: in BCD)
      return std_logic_vector is
      begin
         return ( std_logic_vector( to_unsigned(BCD'POS(BCD_CHAR), 6)));
      end;

   function bcd_to_slv8(BCD_CHAR: in BCD)
      return std_logic_vector is
      begin
         return (std_logic_vector( to_unsigned(BCD'POS(BCD_CHAR), 8)));
      end;

   function bcd_to_slv8_odd_parity(BCD_CHAR: in BCD)
      return std_logic_vector is
      variable temp: std_logic_vector(7 downto 0);
      variable temp_parity: std_logic := '1';   -- Start with odd parity, no bits
      begin
         temp := std_logic_vector( to_unsigned(BCD'POS(BCD_CHAR), 8));         
         for i in temp'length-1 downto 0 loop   -- the top bit will be 0!
            temp_parity := temp_parity xor temp(i);
         end loop;
         temp(7) := temp_parity;
         return(temp);
      end;

end package body;
