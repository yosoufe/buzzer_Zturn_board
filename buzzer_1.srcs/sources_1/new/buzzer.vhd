----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2018 01:55:35 PM
-- Design Name: 
-- Module Name: buzzer - Behavioral
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
-- ----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity buzzer is
    Port ( bz_clk : in STD_LOGIC;
           bz_out : out STD_LOGIC);
end buzzer;

architecture Behavioral of buzzer is
signal count : integer := 0;
signal s_out : std_logic :='0';
begin
    process(bz_clk)
    begin
        if rising_edge(bz_clk) then
            if (count = 5000) then
             count <= 0;
             s_out <= (not s_out);
             bz_out <= s_out;
            else
             count <= count + 1;
            end if;
        end if;
    end process;
end Behavioral;
