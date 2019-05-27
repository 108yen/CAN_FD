-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 27 23:39:21 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_MODULE_CONTROLLER_0_0/design_1_MODULE_CONTROLLER_0_0_stub.vhdl
-- Design      : design_1_MODULE_CONTROLLER_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_MODULE_CONTROLLER_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ATTACK_PERMIT : in STD_LOGIC;
    CAN_SIGNAL_IN : in STD_LOGIC;
    TRIGER : out STD_LOGIC;
    ATTACK_STATE : out STD_LOGIC;
    OPERATING_STATE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SUCCESS_RATE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DEBUG : out STD_LOGIC;
    DEBUG_1 : out STD_LOGIC;
    DEBUG_2 : out STD_LOGIC
  );

end design_1_MODULE_CONTROLLER_0_0;

architecture stub of design_1_MODULE_CONTROLLER_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,ATTACK_PERMIT,CAN_SIGNAL_IN,TRIGER,ATTACK_STATE,OPERATING_STATE[7:0],SUCCESS_RATE[31:0],DEBUG,DEBUG_1,DEBUG_2";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MODULE_CONTROLLER,Vivado 2018.3";
begin
end;
