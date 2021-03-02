------------------------------------------------------------------------
--
-- Implementation of 2bit multiplexer.
-- Xilinx XC2C256-TQ144 CPLD, ISE Design Suite 14.7
--
-- Copyright (c) 2019-2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------
-- Entity declaration for top level
------------------------------------------------------------------------
entity top is
    port (SW[0]:   in  std_logic;        
          SW[1]:   in  std_logic;
          SW[2]:   in  std_logic;
          SW[3]:   in  std_logic;
          SW[4]:   in  std_logic;
          SW[5]:   in  std_logic;
          SW[6]:   in  std_logic;
          SW[7]:   in  std_logic;
          SW[14]:  in  std_logic;
          SW[15]:  in  std_logic;
          LD[1],LD[0]    : out  std_logic;
end entity top;

------------------------------------------------------------------------
-- Architecture declaration for top level
------------------------------------------------------------------------
architecture Behavioral of top is
    signal s_a, s_b, s_c, s_d, s_sel: std_logic_vector(2-1 downto 0);
    signal s_o                      : std_logic_vector(2-1 downto 0);
begin

          s_a(0) <=SW[0];  
          s_a(1) <=SW[1];
           
          s_b(0) <=SW[2];  
          s_b(1) <=SW[3];  
          
          s_c(0) <=SW[4];  
          s_c(1) <=SW[5]; 
          
          s_d(0) <=SW[6];  
          s_d(1) <=SW[7];
            
          s_sel(0) <=SW[14]; 
          s_sel(1) <=SW[15]; 
          
          s_o(0) <=LD[0]; 
          s_o(1) <=LD[1];

    --------------------------------------------------------------------
    -- Sub-blocks
    MUX: entity work.mux_2bit_4to1
        port map (sel_i => ,
          a_i => s_a,
          b_i => s_b,
          c_i => s_c,
          d_i => s_d,
          f_o => s_o
                 );

end architecture Behavioral;