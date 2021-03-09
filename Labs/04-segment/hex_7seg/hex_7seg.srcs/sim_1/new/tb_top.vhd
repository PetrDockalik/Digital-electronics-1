----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2021 12:31:24
-- Design Name: 
-- Module Name: tb_top - Behavioral
-- Project Name: 
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

entity tb_top is
--  Port ( );   
end tb_top;

architecture testbench of tb_top is
  -- Local signals

   signal s_SW : STD_LOGIC_VECTOR (4-1 downto 0); -- Input binary data

   signal s_CA : std_logic; -- Cathode A 
   signal s_CB : STD_LOGIC; -- Cathode B 
   signal s_CC : STD_LOGIC; -- Cathode C 
   signal s_CD : STD_LOGIC; -- Cathode D 
   signal s_CE : STD_LOGIC; -- Cathode E 
   signal s_CF : STD_LOGIC; -- Cathode F 
   signal s_CG : STD_LOGIC; -- Cathode G
   signal s_AN : std_logic_vector (8-1 downto 0); -- Common anode signals  
   signal s_LED : STD_LOGIC_VECTOR (8-1 downto 0); -- LED indicators
   
begin
    -- Connecting testbench signals with hex_7seg entity (Unit Under Test)
    uut_top : entity work.top
        port map(
            SW          => s_SW, -- Input binary data
            LED         => s_LED, -- LED indicators
            AN          => s_AN, -- Common anodes display
            CA          => s_CA, -- Cathode A 
            CB          => s_CB, -- Cathode B
            CC          => s_CC, -- Cathode C
            CD          => s_CD, -- Cathode D
            CE          => s_CE, -- Cathode E
            CF          => s_CF, -- Cathode F
            CG          => s_CG -- Cathode G
        );

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
    
        s_SW <= "0000"; 
        wait for 100 ns;
        s_SW <= "0001"; 
        wait for 100 ns;
        s_SW <= "0010"; 
        wait for 100 ns;
        s_SW <= "0011"; 
        wait for 100 ns;
        s_SW <= "0100"; 
        wait for 100 ns;
        s_SW <= "0101"; 
        wait for 100 ns;
        s_SW <= "0110"; 
        wait for 100 ns;
        s_SW <= "0111"; 
        wait for 100 ns;
        s_SW <= "1000"; 
        wait for 100 ns;
        s_SW <= "1001"; 
        wait for 100 ns;
        s_SW <= "1010"; 
        wait for 100 ns;
        s_SW <= "1011"; 
        wait for 100 ns;
        s_SW <= "1100"; 
        wait for 100 ns;
        s_SW <= "1101"; 
        wait for 100 ns;
        s_SW <= "1110"; 
        wait for 100 ns;
        s_SW <= "1111"; 
        wait for 100 ns;
        
    end process p_stimulus;
end testbench;
