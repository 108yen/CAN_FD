//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Jun 15 17:26:50 2019
//Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (BTN_0,
    BTN_1,
    BTN_2,
    can_signal_in,
    debug,
    debug_1,
    debug_2,
    reset,
    switch_0,
    sys_clock,
    to_dominant,
    to_recessive,
    triger,
    usb_uart_rxd,
    usb_uart_txd);
  input BTN_0;
  input BTN_1;
  input BTN_2;
  input can_signal_in;
  output debug;
  output debug_1;
  output debug_2;
  input reset;
  input switch_0;
  input sys_clock;
  inout to_dominant;
  inout to_recessive;
  output triger;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire BTN_0;
  wire BTN_1;
  wire BTN_2;
  wire can_signal_in;
  wire debug;
  wire debug_1;
  wire debug_2;
  wire reset;
  wire switch_0;
  wire sys_clock;
  wire to_dominant;
  wire to_recessive;
  wire triger;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.BTN_0(BTN_0),
        .BTN_1(BTN_1),
        .BTN_2(BTN_2),
        .can_signal_in(can_signal_in),
        .debug(debug),
        .debug_1(debug_1),
        .debug_2(debug_2),
        .reset(reset),
        .switch_0(switch_0),
        .sys_clock(sys_clock),
        .to_dominant(to_dominant),
        .to_recessive(to_recessive),
        .triger(triger),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
