// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 27 23:39:21 2019
// Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_BTN_CONTROLLER_0_0/design_1_BTN_CONTROLLER_0_0_stub.v
// Design      : design_1_BTN_CONTROLLER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BTN_CONTROLLER,Vivado 2018.3" *)
module design_1_BTN_CONTROLLER_0_0(CLK, RESET, BTN_0, BTN_1, BTN_2, BTN_0_COUNTER, 
  BTN_1_COUNTER)
/* synthesis syn_black_box black_box_pad_pin="CLK,RESET,BTN_0,BTN_1,BTN_2,BTN_0_COUNTER[7:0],BTN_1_COUNTER[7:0]" */;
  input CLK;
  input RESET;
  input BTN_0;
  input BTN_1;
  input BTN_2;
  output [7:0]BTN_0_COUNTER;
  output [7:0]BTN_1_COUNTER;
endmodule
