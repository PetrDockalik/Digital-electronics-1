----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2021 02:32:40
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( CLK100MHZ : in STD_LOGIC;    --  Main clock
           BTNC : in STD_LOGIC;         --  Synchronous reset
           SW : in STD_LOGIC_VECTOR (1-1 downto 0);           --  Counter direction
           LED : out STD_LOGIC_VECTOR (4-1 downto 0);      --  Counter value LED indicators
           -- NOTE: For 16- bit counter, change LED on 16-1 downto 0 --
           CA : out STD_LOGIC;   --  Cathod A
           CB : out STD_LOGIC;   --  Cathod B
           CC : out STD_LOGIC;   --  Cathod C
           CD : out STD_LOGIC;   --  Cathod D
           CE : out STD_LOGIC;   --  Cathod E
           CF : out STD_LOGIC;   --  Cathod F
           CG : out STD_LOGIC;   --  Cathod G
           AN : out STD_LOGIC_VECTOR (8-1 downto 0));      --  Common anode signals to individual displays
end top;

------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of top is

    -- Internal clock enable
    signal s_en  : std_logic;
    -- Internal counter
    signal s_cnt : std_logic_vector(4 - 1 downto 0); -- 4-bit counter
    -- NOTE: For 16- bit counter, change signal s_cnt on 16-1 downto 0 --

begin

    --------------------------------------------------------------------
    -- Instance (copy) of clock_enable entity
    clk_en0 : entity work.clock_enable
        generic map(
            g_MAX => 10 -- 10 period to generate 1 enable signal
        )
        port map(
            clk   => CLK100MHZ,     -- Main clock
            reset => BTNC,          -- Synchronous reset
            ce_o  => s_en           -- Clock enable pulse signal
        );

    --------------------------------------------------------------------
    -- Instance (copy) of cnt_up_down entity
    bin_cnt0 : entity work.cnt_up_down
        generic map(
            g_CNT_WIDTH => 4      -- Number of bits for counter
            -- NOTE: For 16- bit counter, change g_CNT_WIDTH on 16
        )
        port map(
            clk      => CLK100MHZ,       -- Main clock
            reset    => BTNC,            -- Synchronous reset
            en_i     => s_en,            -- Enable input
            cnt_up_i => SW(0),              -- Direction of the counter
            cnt_o    => s_cnt
        );

    -- Display input value on LEDs
    LED(3 downto 0) <= s_cnt;
    
    --------------------------------------------------------------------
    -- Instance (copy) of hex_7seg entity
    hex2seg : entity work.hex_7seg
        port map(
            hex_i    => s_cnt,
            seg_o(6) => CA,
            seg_o(5) => CB,
            seg_o(4) => CC,
            seg_o(3) => CD,
            seg_o(2) => CE,
            seg_o(1) => CF,
            seg_o(0) => CG
        );

    -- Connect one common anode to 3.3V
    AN <= b"1111_1110";

end architecture Behavioral;