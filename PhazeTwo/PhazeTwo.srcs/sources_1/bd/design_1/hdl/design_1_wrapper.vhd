--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
--Date        : Fri Dec 29 20:20:30 2017
--Host        : DESKTOP-9PKS9O4 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    reset : in STD_LOGIC;
    Sensor : in STD_LOGIC;
    Tempreture : in STD_LOGIC;
    Ready : in STD_LOGIC;
    MyReset : in STD_LOGIC;
    Plate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      MyReset => MyReset,
      Plate(31 downto 0) => Plate(31 downto 0),
      Ready => Ready,
      Sensor => Sensor,
      Tempreture => Tempreture,
      clk => clk,
      reset => reset,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
end STRUCTURE;
