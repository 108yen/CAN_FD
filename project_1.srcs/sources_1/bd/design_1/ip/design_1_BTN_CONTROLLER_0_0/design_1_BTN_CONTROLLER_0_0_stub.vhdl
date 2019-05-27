-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 27 23:39:21 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_BTN_CONTROLLER_0_0/design_1_BTN_CONTROLLER_0_0_stub.vhdl
-- Design      : design_1_BTN_CONTROLLER_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_BTN_CONTROLLER_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    BTN_0 : in STD_LOGIC;
    BTN_1 : in STD_LOGIC;
    BTN_2 : in STD_LOGIC;
    BTN_0_COUNTER : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BTN_1_COUNTER : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_BTN_CONTROLLER_0_0;

architecture stub of design_1_BTN_CONTROLLER_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,BTN_0,BTN_1,BTN_2,BTN_0_COUNTER[7:0],BTN_1_COUNTER[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BTN_CONTROLLER,Vivado 2018.3";
begin
end;
