-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 27 23:39:25 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ATTACK_SIGNAL_GENERA_0_0/design_1_ATTACK_SIGNAL_GENERA_0_0_stub.vhdl
-- Design      : design_1_ATTACK_SIGNAL_GENERA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ATTACK_SIGNAL_GENERA_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ATTACK_STATE : in STD_LOGIC;
    INC_LENGTH : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INC_LOC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TO_DOMINANT : inout STD_LOGIC;
    TO_RECESSIVE : inout STD_LOGIC;
    DEBUG : out STD_LOGIC
  );

end design_1_ATTACK_SIGNAL_GENERA_0_0;

architecture stub of design_1_ATTACK_SIGNAL_GENERA_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RESET,ATTACK_STATE,INC_LENGTH[7:0],INC_LOC[7:0],TO_DOMINANT,TO_RECESSIVE,DEBUG";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ATTACK_SIGNAL_GENERATOR,Vivado 2018.3";
begin
end;
