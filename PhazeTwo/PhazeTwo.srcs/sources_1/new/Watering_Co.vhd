----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/26/2017 03:37:16 PM
-- Design Name: 
-- Module Name: Watering_Co - Behavioral
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

entity Watering_Co is
    Port ( clk,rst : in std_logic;
           Command : in STD_LOGIC_VECTOR (31 downto 0);
           Tempreture : in STD_LOGIC;
           Watering_on_off : out STD_LOGIC_VECTOR (31 downto 0));
end Watering_Co;

architecture Behavioral of Watering_Co is

begin


end Behavioral;
