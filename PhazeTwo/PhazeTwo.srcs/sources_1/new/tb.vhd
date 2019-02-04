----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2017 07:41:07 PM
-- Design Name: 
-- Module Name: Testbench - Behavioral
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

entity Testbench is
--  Port ( );
end Testbench;

architecture Behavioral of Testbench is

component design_1_wrapper is
  port (
    MyReset : in STD_LOGIC;
  Plate : in STD_LOGIC_VECTOR ( 31 downto 0 );
  Ready : in STD_LOGIC;
  Sensor : in STD_LOGIC;
  Tempreture : in STD_LOGIC;
      clk : in STD_LOGIC;
  reset : in STD_LOGIC;
  sys_diff_clock_clk_n : in STD_LOGIC;
  sys_diff_clock_clk_p : in STD_LOGIC
  );
end component;

    signal Plate : STD_LOGIC_VECTOR ( 31 downto 0 ):="00000000000000000000000000000000";
    signal Ready,
    Sensor,
    Tempreture,
    sys_diff_clock_clk_n,
    reset :  STD_LOGIC:='0';
    
    signal n,sys_diff_clock_clk_p,MyReset,clk :  STD_LOGIC:='1';

begin
MyReset <= '0' after 1100ns;
n <= '0' after 800ns;
sys_diff_clock_clk_p <= not (sys_diff_clock_clk_p) after 10ns;
sys_diff_clock_clk_n <= not (sys_diff_clock_clk_n) after 10ns;
--clk <= not (clk) after 320ns;
clock_process :process
begin
if (n='1') then 
wait for 1 ns;
    clk<='0';
    wait for 1 ns;
else    
clk <= '1';
wait for 320 ns;
clk <= '0';
wait for 320 ns;
end if;
end process;
Main : design_1_wrapper port map ( MyReset,
  Plate,
  Ready ,
  Sensor,
  Tempreture ,
  clk,
  reset ,
  sys_diff_clock_clk_n ,
  sys_diff_clock_clk_p ); 
end Behavioral;
