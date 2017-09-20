-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Sep 20 15:34:30 2017
-- Host        : DESKTOP-VK82MLB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX2/Second_Order_Filter_Test/second_order_filter_test.srcs/sources_1/ip/multiplier35x35/multiplier35x35_stub.vhdl
-- Design      : multiplier35x35
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier35x35 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 34 downto 0 );
    B : in STD_LOGIC_VECTOR ( 34 downto 0 );
    P : out STD_LOGIC_VECTOR ( 69 downto 0 )
  );

end multiplier35x35;

architecture stub of multiplier35x35 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[34:0],B[34:0],P[69:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_12,Vivado 2017.2";
begin
end;
