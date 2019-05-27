// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 27 23:39:21 2019
// Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_MODULE_CONTROLLER_0_0/design_1_MODULE_CONTROLLER_0_0_sim_netlist.v
// Design      : design_1_MODULE_CONTROLLER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_MODULE_CONTROLLER_0_0,MODULE_CONTROLLER,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "MODULE_CONTROLLER,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_MODULE_CONTROLLER_0_0
   (CLK,
    RESET,
    ATTACK_PERMIT,
    CAN_SIGNAL_IN,
    TRIGER,
    ATTACK_STATE,
    OPERATING_STATE,
    SUCCESS_RATE,
    DEBUG,
    DEBUG_1,
    DEBUG_2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input ATTACK_PERMIT;
  input CAN_SIGNAL_IN;
  output TRIGER;
  output ATTACK_STATE;
  output [7:0]OPERATING_STATE;
  output [31:0]SUCCESS_RATE;
  output DEBUG;
  output DEBUG_1;
  output DEBUG_2;

  wire \<const0> ;
  wire ATTACK_PERMIT;
  wire ATTACK_STATE;
  wire CAN_SIGNAL_IN;
  wire CLK;
  wire RESET;
  wire TRIGER;
  wire n_0_65;

  assign DEBUG = \<const0> ;
  assign DEBUG_1 = \<const0> ;
  assign DEBUG_2 = \<const0> ;
  assign OPERATING_STATE[7] = \<const0> ;
  assign OPERATING_STATE[6] = \<const0> ;
  assign OPERATING_STATE[5] = \<const0> ;
  assign OPERATING_STATE[4] = \<const0> ;
  assign OPERATING_STATE[3] = \<const0> ;
  assign OPERATING_STATE[2] = \<const0> ;
  assign OPERATING_STATE[1] = \<const0> ;
  assign OPERATING_STATE[0] = \<const0> ;
  assign SUCCESS_RATE[31] = \<const0> ;
  assign SUCCESS_RATE[30] = \<const0> ;
  assign SUCCESS_RATE[29] = \<const0> ;
  assign SUCCESS_RATE[28] = \<const0> ;
  assign SUCCESS_RATE[27] = \<const0> ;
  assign SUCCESS_RATE[26] = \<const0> ;
  assign SUCCESS_RATE[25] = \<const0> ;
  assign SUCCESS_RATE[24] = \<const0> ;
  assign SUCCESS_RATE[23] = \<const0> ;
  assign SUCCESS_RATE[22] = \<const0> ;
  assign SUCCESS_RATE[21] = \<const0> ;
  assign SUCCESS_RATE[20] = \<const0> ;
  assign SUCCESS_RATE[19] = \<const0> ;
  assign SUCCESS_RATE[18] = \<const0> ;
  assign SUCCESS_RATE[17] = \<const0> ;
  assign SUCCESS_RATE[16] = \<const0> ;
  assign SUCCESS_RATE[15] = \<const0> ;
  assign SUCCESS_RATE[14] = \<const0> ;
  assign SUCCESS_RATE[13] = \<const0> ;
  assign SUCCESS_RATE[12] = \<const0> ;
  assign SUCCESS_RATE[11] = \<const0> ;
  assign SUCCESS_RATE[10] = \<const0> ;
  assign SUCCESS_RATE[9] = \<const0> ;
  assign SUCCESS_RATE[8] = \<const0> ;
  assign SUCCESS_RATE[7] = \<const0> ;
  assign SUCCESS_RATE[6] = \<const0> ;
  assign SUCCESS_RATE[5] = \<const0> ;
  assign SUCCESS_RATE[4] = \<const0> ;
  assign SUCCESS_RATE[3] = \<const0> ;
  assign SUCCESS_RATE[2] = \<const0> ;
  assign SUCCESS_RATE[1] = \<const0> ;
  assign SUCCESS_RATE[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i_65
       (.I0(RESET),
        .O(n_0_65));
  design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER inst
       (.ATTACK_PERMIT(ATTACK_PERMIT),
        .ATTACK_STATE(ATTACK_STATE),
        .CAN_SIGNAL_IN(CAN_SIGNAL_IN),
        .CLK(CLK),
        .RESET(RESET),
        .TRIGER(TRIGER));
endmodule

(* ORIG_REF_NAME = "BUS_MSG_OBSERVER" *) 
module design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER
   (S,
    \BUS_MSG_reg[107]_0 ,
    \BUS_MSG_reg[95]_0 ,
    \BUS_MSG_reg[83]_0 ,
    \BUS_MSG_reg[71]_0 ,
    \BUS_MSG_reg[59]_0 ,
    \BUS_MSG_reg[47]_0 ,
    \BUS_MSG_reg[35]_0 ,
    \BUS_MSG_reg[23]_0 ,
    ATTACK_PERMIT_0,
    STATE_reg,
    ATTACK_PERMIT,
    CO,
    state,
    ATTACK_STATE,
    TRIGER,
    SR,
    E,
    CLK,
    CAN_SIGNAL_IN);
  output [3:0]S;
  output [3:0]\BUS_MSG_reg[107]_0 ;
  output [3:0]\BUS_MSG_reg[95]_0 ;
  output [3:0]\BUS_MSG_reg[83]_0 ;
  output [3:0]\BUS_MSG_reg[71]_0 ;
  output [3:0]\BUS_MSG_reg[59]_0 ;
  output [3:0]\BUS_MSG_reg[47]_0 ;
  output [3:0]\BUS_MSG_reg[35]_0 ;
  output [3:0]\BUS_MSG_reg[23]_0 ;
  output ATTACK_PERMIT_0;
  output STATE_reg;
  input ATTACK_PERMIT;
  input [0:0]CO;
  input state;
  input ATTACK_STATE;
  input TRIGER;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input CAN_SIGNAL_IN;

  wire ATTACK_PERMIT;
  wire ATTACK_PERMIT_0;
  wire ATTACK_STATE;
  wire [3:0]\BUS_MSG_reg[107]_0 ;
  wire [3:0]\BUS_MSG_reg[23]_0 ;
  wire [3:0]\BUS_MSG_reg[35]_0 ;
  wire [3:0]\BUS_MSG_reg[47]_0 ;
  wire [3:0]\BUS_MSG_reg[59]_0 ;
  wire [3:0]\BUS_MSG_reg[71]_0 ;
  wire [3:0]\BUS_MSG_reg[83]_0 ;
  wire [3:0]\BUS_MSG_reg[95]_0 ;
  wire \BUS_MSG_reg_n_0_[107] ;
  wire CAN_SIGNAL_IN;
  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire [3:0]S;
  wire [0:0]SR;
  wire STATE_reg;
  wire TRIGER;
  wire [107:1]p_1_in;
  wire state;

  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__0_i_1
       (.I0(p_1_in[24]),
        .I1(p_1_in[23]),
        .I2(p_1_in[22]),
        .O(\BUS_MSG_reg[23]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__0_i_2
       (.I0(p_1_in[21]),
        .I1(p_1_in[20]),
        .I2(p_1_in[19]),
        .O(\BUS_MSG_reg[23]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__0_i_3
       (.I0(p_1_in[18]),
        .I1(p_1_in[17]),
        .I2(p_1_in[16]),
        .O(\BUS_MSG_reg[23]_0 [1]));
  LUT3 #(
    .INIT(8'h02)) 
    ATTACK_STATE2_carry__0_i_4
       (.I0(p_1_in[13]),
        .I1(p_1_in[15]),
        .I2(p_1_in[14]),
        .O(\BUS_MSG_reg[23]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__1_i_1
       (.I0(p_1_in[36]),
        .I1(p_1_in[35]),
        .I2(p_1_in[34]),
        .O(\BUS_MSG_reg[35]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__1_i_2
       (.I0(p_1_in[33]),
        .I1(p_1_in[32]),
        .I2(p_1_in[31]),
        .O(\BUS_MSG_reg[35]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__1_i_3
       (.I0(p_1_in[30]),
        .I1(p_1_in[29]),
        .I2(p_1_in[28]),
        .O(\BUS_MSG_reg[35]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__1_i_4
       (.I0(p_1_in[27]),
        .I1(p_1_in[26]),
        .I2(p_1_in[25]),
        .O(\BUS_MSG_reg[35]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__2_i_1
       (.I0(p_1_in[48]),
        .I1(p_1_in[47]),
        .I2(p_1_in[46]),
        .O(\BUS_MSG_reg[47]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__2_i_2
       (.I0(p_1_in[45]),
        .I1(p_1_in[44]),
        .I2(p_1_in[43]),
        .O(\BUS_MSG_reg[47]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__2_i_3
       (.I0(p_1_in[42]),
        .I1(p_1_in[41]),
        .I2(p_1_in[40]),
        .O(\BUS_MSG_reg[47]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__2_i_4
       (.I0(p_1_in[39]),
        .I1(p_1_in[38]),
        .I2(p_1_in[37]),
        .O(\BUS_MSG_reg[47]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__3_i_1
       (.I0(p_1_in[60]),
        .I1(p_1_in[59]),
        .I2(p_1_in[58]),
        .O(\BUS_MSG_reg[59]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__3_i_2
       (.I0(p_1_in[57]),
        .I1(p_1_in[56]),
        .I2(p_1_in[55]),
        .O(\BUS_MSG_reg[59]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__3_i_3
       (.I0(p_1_in[54]),
        .I1(p_1_in[53]),
        .I2(p_1_in[52]),
        .O(\BUS_MSG_reg[59]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__3_i_4
       (.I0(p_1_in[51]),
        .I1(p_1_in[50]),
        .I2(p_1_in[49]),
        .O(\BUS_MSG_reg[59]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__4_i_1
       (.I0(p_1_in[72]),
        .I1(p_1_in[71]),
        .I2(p_1_in[70]),
        .O(\BUS_MSG_reg[71]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__4_i_2
       (.I0(p_1_in[69]),
        .I1(p_1_in[68]),
        .I2(p_1_in[67]),
        .O(\BUS_MSG_reg[71]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__4_i_3
       (.I0(p_1_in[66]),
        .I1(p_1_in[65]),
        .I2(p_1_in[64]),
        .O(\BUS_MSG_reg[71]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__4_i_4
       (.I0(p_1_in[63]),
        .I1(p_1_in[62]),
        .I2(p_1_in[61]),
        .O(\BUS_MSG_reg[71]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__5_i_1
       (.I0(p_1_in[84]),
        .I1(p_1_in[83]),
        .I2(p_1_in[82]),
        .O(\BUS_MSG_reg[83]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__5_i_2
       (.I0(p_1_in[81]),
        .I1(p_1_in[80]),
        .I2(p_1_in[79]),
        .O(\BUS_MSG_reg[83]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__5_i_3
       (.I0(p_1_in[78]),
        .I1(p_1_in[77]),
        .I2(p_1_in[76]),
        .O(\BUS_MSG_reg[83]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__5_i_4
       (.I0(p_1_in[75]),
        .I1(p_1_in[74]),
        .I2(p_1_in[73]),
        .O(\BUS_MSG_reg[83]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__6_i_1
       (.I0(p_1_in[96]),
        .I1(p_1_in[95]),
        .I2(p_1_in[94]),
        .O(\BUS_MSG_reg[95]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__6_i_2
       (.I0(p_1_in[93]),
        .I1(p_1_in[92]),
        .I2(p_1_in[91]),
        .O(\BUS_MSG_reg[95]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__6_i_3
       (.I0(p_1_in[90]),
        .I1(p_1_in[89]),
        .I2(p_1_in[88]),
        .O(\BUS_MSG_reg[95]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__6_i_4
       (.I0(p_1_in[87]),
        .I1(p_1_in[86]),
        .I2(p_1_in[85]),
        .O(\BUS_MSG_reg[95]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__7_i_1
       (.I0(\BUS_MSG_reg_n_0_[107] ),
        .I1(p_1_in[107]),
        .I2(p_1_in[106]),
        .O(\BUS_MSG_reg[107]_0 [3]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__7_i_2
       (.I0(p_1_in[105]),
        .I1(p_1_in[104]),
        .I2(p_1_in[103]),
        .O(\BUS_MSG_reg[107]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__7_i_3
       (.I0(p_1_in[102]),
        .I1(p_1_in[101]),
        .I2(p_1_in[100]),
        .O(\BUS_MSG_reg[107]_0 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry__7_i_4
       (.I0(p_1_in[99]),
        .I1(p_1_in[98]),
        .I2(p_1_in[97]),
        .O(\BUS_MSG_reg[107]_0 [0]));
  LUT3 #(
    .INIT(8'h01)) 
    ATTACK_STATE2_carry_i_1
       (.I0(p_1_in[12]),
        .I1(p_1_in[11]),
        .I2(p_1_in[10]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h08)) 
    ATTACK_STATE2_carry_i_2
       (.I0(p_1_in[9]),
        .I1(p_1_in[8]),
        .I2(p_1_in[7]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h20)) 
    ATTACK_STATE2_carry_i_3
       (.I0(p_1_in[4]),
        .I1(p_1_in[6]),
        .I2(p_1_in[5]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ATTACK_STATE2_carry_i_4
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(p_1_in[1]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    ATTACK_STATE_i_1
       (.I0(ATTACK_PERMIT),
        .I1(CO),
        .I2(state),
        .I3(ATTACK_STATE),
        .O(ATTACK_PERMIT_0));
  FDSE #(
    .INIT(1'b1)) 
    \BUS_MSG_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(CAN_SIGNAL_IN),
        .Q(p_1_in[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[100] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[100]),
        .Q(p_1_in[101]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[101] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[101]),
        .Q(p_1_in[102]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[102] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[102]),
        .Q(p_1_in[103]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[103] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[103]),
        .Q(p_1_in[104]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[104] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[104]),
        .Q(p_1_in[105]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[105] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[105]),
        .Q(p_1_in[106]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[106] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[106]),
        .Q(p_1_in[107]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[107] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[107]),
        .Q(\BUS_MSG_reg_n_0_[107] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[10]),
        .Q(p_1_in[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[11]),
        .Q(p_1_in[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[12]),
        .Q(p_1_in[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[13]),
        .Q(p_1_in[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[14]),
        .Q(p_1_in[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[15]),
        .Q(p_1_in[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[16]),
        .Q(p_1_in[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[17]),
        .Q(p_1_in[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[18]),
        .Q(p_1_in[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[19]),
        .Q(p_1_in[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[20]),
        .Q(p_1_in[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[21]),
        .Q(p_1_in[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[22]),
        .Q(p_1_in[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[23]),
        .Q(p_1_in[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[24]),
        .Q(p_1_in[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[25]),
        .Q(p_1_in[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[26]),
        .Q(p_1_in[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[27]),
        .Q(p_1_in[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[28]),
        .Q(p_1_in[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[29]),
        .Q(p_1_in[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[30]),
        .Q(p_1_in[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[31]),
        .Q(p_1_in[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[32] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[32]),
        .Q(p_1_in[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[33] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[33]),
        .Q(p_1_in[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[34] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[34]),
        .Q(p_1_in[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[35] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[35]),
        .Q(p_1_in[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[36] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[36]),
        .Q(p_1_in[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[37] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[37]),
        .Q(p_1_in[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[38] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[38]),
        .Q(p_1_in[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[39] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[39]),
        .Q(p_1_in[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[40] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[40]),
        .Q(p_1_in[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[41] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[41]),
        .Q(p_1_in[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[42] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[42]),
        .Q(p_1_in[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[43] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[43]),
        .Q(p_1_in[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[44] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[44]),
        .Q(p_1_in[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[45] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[45]),
        .Q(p_1_in[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[46] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[46]),
        .Q(p_1_in[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[47] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[47]),
        .Q(p_1_in[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[48] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[48]),
        .Q(p_1_in[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[49] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[49]),
        .Q(p_1_in[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[50] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[50]),
        .Q(p_1_in[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[51] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[51]),
        .Q(p_1_in[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[52] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[52]),
        .Q(p_1_in[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[53] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[53]),
        .Q(p_1_in[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[54] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[54]),
        .Q(p_1_in[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[55] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[55]),
        .Q(p_1_in[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[56] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[56]),
        .Q(p_1_in[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[57] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[57]),
        .Q(p_1_in[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[58] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[58]),
        .Q(p_1_in[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[59] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[59]),
        .Q(p_1_in[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[5]),
        .Q(p_1_in[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[60] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[60]),
        .Q(p_1_in[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[61] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[61]),
        .Q(p_1_in[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[62] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[62]),
        .Q(p_1_in[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[63] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[63]),
        .Q(p_1_in[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[64] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[64]),
        .Q(p_1_in[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[65] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[65]),
        .Q(p_1_in[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[66] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[66]),
        .Q(p_1_in[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[67] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[67]),
        .Q(p_1_in[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[68] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[68]),
        .Q(p_1_in[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[69] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[69]),
        .Q(p_1_in[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[6]),
        .Q(p_1_in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[70] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[70]),
        .Q(p_1_in[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[71] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[71]),
        .Q(p_1_in[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[72] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[72]),
        .Q(p_1_in[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[73] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[73]),
        .Q(p_1_in[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[74] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[74]),
        .Q(p_1_in[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[75] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[75]),
        .Q(p_1_in[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[76] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[76]),
        .Q(p_1_in[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[77] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[77]),
        .Q(p_1_in[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[78] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[78]),
        .Q(p_1_in[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[79] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[79]),
        .Q(p_1_in[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[7]),
        .Q(p_1_in[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[80] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[80]),
        .Q(p_1_in[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[81] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[81]),
        .Q(p_1_in[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[82] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[82]),
        .Q(p_1_in[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[83] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[83]),
        .Q(p_1_in[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[84] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[84]),
        .Q(p_1_in[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[85] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[85]),
        .Q(p_1_in[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[86] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[86]),
        .Q(p_1_in[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[87] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[87]),
        .Q(p_1_in[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[88] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[88]),
        .Q(p_1_in[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[89] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[89]),
        .Q(p_1_in[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[8]),
        .Q(p_1_in[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[90] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[90]),
        .Q(p_1_in[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[91] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[91]),
        .Q(p_1_in[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[92] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[92]),
        .Q(p_1_in[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[93] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[93]),
        .Q(p_1_in[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[94] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[94]),
        .Q(p_1_in[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[95] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[95]),
        .Q(p_1_in[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[96] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[96]),
        .Q(p_1_in[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[97] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[97]),
        .Q(p_1_in[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[98] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[98]),
        .Q(p_1_in[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[99] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[99]),
        .Q(p_1_in[100]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS_MSG_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[9]),
        .Q(p_1_in[10]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    TRIGER_i_2
       (.I0(CO),
        .I1(state),
        .I2(TRIGER),
        .O(STATE_reg));
endmodule

(* ORIG_REF_NAME = "MODULE_CONTROLLER" *) 
module design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER
   (ATTACK_STATE,
    TRIGER,
    RESET,
    CLK,
    CAN_SIGNAL_IN,
    ATTACK_PERMIT);
  output ATTACK_STATE;
  output TRIGER;
  input RESET;
  input CLK;
  input CAN_SIGNAL_IN;
  input ATTACK_PERMIT;

  wire ATTACK_PERMIT;
  wire ATTACK_STATE;
  wire CAN_SIGNAL_IN;
  wire CLK;
  wire RESET;
  wire TRIGER;
  wire bus_msg_observer_n_0;
  wire bus_msg_observer_n_1;
  wire bus_msg_observer_n_10;
  wire bus_msg_observer_n_11;
  wire bus_msg_observer_n_12;
  wire bus_msg_observer_n_13;
  wire bus_msg_observer_n_14;
  wire bus_msg_observer_n_15;
  wire bus_msg_observer_n_16;
  wire bus_msg_observer_n_17;
  wire bus_msg_observer_n_18;
  wire bus_msg_observer_n_19;
  wire bus_msg_observer_n_2;
  wire bus_msg_observer_n_20;
  wire bus_msg_observer_n_21;
  wire bus_msg_observer_n_22;
  wire bus_msg_observer_n_23;
  wire bus_msg_observer_n_24;
  wire bus_msg_observer_n_25;
  wire bus_msg_observer_n_26;
  wire bus_msg_observer_n_27;
  wire bus_msg_observer_n_28;
  wire bus_msg_observer_n_29;
  wire bus_msg_observer_n_3;
  wire bus_msg_observer_n_30;
  wire bus_msg_observer_n_31;
  wire bus_msg_observer_n_32;
  wire bus_msg_observer_n_33;
  wire bus_msg_observer_n_34;
  wire bus_msg_observer_n_35;
  wire bus_msg_observer_n_36;
  wire bus_msg_observer_n_37;
  wire bus_msg_observer_n_4;
  wire bus_msg_observer_n_5;
  wire bus_msg_observer_n_6;
  wire bus_msg_observer_n_7;
  wire bus_msg_observer_n_8;
  wire bus_msg_observer_n_9;
  wire msg_filter_n_0;
  wire p_0_in;
  wire sp_trg;
  wire state;
  wire state_detector_n_2;

  design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER bus_msg_observer
       (.ATTACK_PERMIT(ATTACK_PERMIT),
        .ATTACK_PERMIT_0(bus_msg_observer_n_36),
        .ATTACK_STATE(ATTACK_STATE),
        .\BUS_MSG_reg[107]_0 ({bus_msg_observer_n_4,bus_msg_observer_n_5,bus_msg_observer_n_6,bus_msg_observer_n_7}),
        .\BUS_MSG_reg[23]_0 ({bus_msg_observer_n_32,bus_msg_observer_n_33,bus_msg_observer_n_34,bus_msg_observer_n_35}),
        .\BUS_MSG_reg[35]_0 ({bus_msg_observer_n_28,bus_msg_observer_n_29,bus_msg_observer_n_30,bus_msg_observer_n_31}),
        .\BUS_MSG_reg[47]_0 ({bus_msg_observer_n_24,bus_msg_observer_n_25,bus_msg_observer_n_26,bus_msg_observer_n_27}),
        .\BUS_MSG_reg[59]_0 ({bus_msg_observer_n_20,bus_msg_observer_n_21,bus_msg_observer_n_22,bus_msg_observer_n_23}),
        .\BUS_MSG_reg[71]_0 ({bus_msg_observer_n_16,bus_msg_observer_n_17,bus_msg_observer_n_18,bus_msg_observer_n_19}),
        .\BUS_MSG_reg[83]_0 ({bus_msg_observer_n_12,bus_msg_observer_n_13,bus_msg_observer_n_14,bus_msg_observer_n_15}),
        .\BUS_MSG_reg[95]_0 ({bus_msg_observer_n_8,bus_msg_observer_n_9,bus_msg_observer_n_10,bus_msg_observer_n_11}),
        .CAN_SIGNAL_IN(CAN_SIGNAL_IN),
        .CLK(CLK),
        .CO(msg_filter_n_0),
        .E(sp_trg),
        .S({bus_msg_observer_n_0,bus_msg_observer_n_1,bus_msg_observer_n_2,bus_msg_observer_n_3}),
        .SR(state_detector_n_2),
        .STATE_reg(bus_msg_observer_n_37),
        .TRIGER(TRIGER),
        .state(state));
  design_1_MODULE_CONTROLLER_0_0_MSG_FILTER msg_filter
       (.ATTACK_STATE(ATTACK_STATE),
        .ATTACK_STATE2_carry__1_0({bus_msg_observer_n_32,bus_msg_observer_n_33,bus_msg_observer_n_34,bus_msg_observer_n_35}),
        .ATTACK_STATE2_carry__2_0({bus_msg_observer_n_28,bus_msg_observer_n_29,bus_msg_observer_n_30,bus_msg_observer_n_31}),
        .ATTACK_STATE2_carry__3_0({bus_msg_observer_n_24,bus_msg_observer_n_25,bus_msg_observer_n_26,bus_msg_observer_n_27}),
        .ATTACK_STATE2_carry__4_0({bus_msg_observer_n_20,bus_msg_observer_n_21,bus_msg_observer_n_22,bus_msg_observer_n_23}),
        .ATTACK_STATE2_carry__5_0({bus_msg_observer_n_16,bus_msg_observer_n_17,bus_msg_observer_n_18,bus_msg_observer_n_19}),
        .ATTACK_STATE2_carry__6_0({bus_msg_observer_n_12,bus_msg_observer_n_13,bus_msg_observer_n_14,bus_msg_observer_n_15}),
        .ATTACK_STATE2_carry__7_0({bus_msg_observer_n_8,bus_msg_observer_n_9,bus_msg_observer_n_10,bus_msg_observer_n_11}),
        .ATTACK_STATE_reg_0({bus_msg_observer_n_4,bus_msg_observer_n_5,bus_msg_observer_n_6,bus_msg_observer_n_7}),
        .ATTACK_STATE_reg_1(bus_msg_observer_n_36),
        .CLK(CLK),
        .CO(msg_filter_n_0),
        .S({bus_msg_observer_n_0,bus_msg_observer_n_1,bus_msg_observer_n_2,bus_msg_observer_n_3}),
        .TRIGER(TRIGER),
        .TRIGER_reg_0(bus_msg_observer_n_37),
        .p_0_in(p_0_in));
  design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER nolabel_line46
       (.CLK(CLK),
        .E(sp_trg),
        .SR(state_detector_n_2),
        .p_0_in(p_0_in));
  design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR state_detector
       (.CAN_SIGNAL_IN(CAN_SIGNAL_IN),
        .CLK(CLK),
        .E(sp_trg),
        .RESET(RESET),
        .SR(state_detector_n_2),
        .p_0_in(p_0_in),
        .state(state));
endmodule

(* ORIG_REF_NAME = "MSG_FILTER" *) 
module design_1_MODULE_CONTROLLER_0_0_MSG_FILTER
   (CO,
    ATTACK_STATE,
    TRIGER,
    S,
    ATTACK_STATE2_carry__1_0,
    ATTACK_STATE2_carry__2_0,
    ATTACK_STATE2_carry__3_0,
    ATTACK_STATE2_carry__4_0,
    ATTACK_STATE2_carry__5_0,
    ATTACK_STATE2_carry__6_0,
    ATTACK_STATE2_carry__7_0,
    ATTACK_STATE_reg_0,
    p_0_in,
    ATTACK_STATE_reg_1,
    CLK,
    TRIGER_reg_0);
  output [0:0]CO;
  output ATTACK_STATE;
  output TRIGER;
  input [3:0]S;
  input [3:0]ATTACK_STATE2_carry__1_0;
  input [3:0]ATTACK_STATE2_carry__2_0;
  input [3:0]ATTACK_STATE2_carry__3_0;
  input [3:0]ATTACK_STATE2_carry__4_0;
  input [3:0]ATTACK_STATE2_carry__5_0;
  input [3:0]ATTACK_STATE2_carry__6_0;
  input [3:0]ATTACK_STATE2_carry__7_0;
  input [3:0]ATTACK_STATE_reg_0;
  input p_0_in;
  input ATTACK_STATE_reg_1;
  input CLK;
  input TRIGER_reg_0;

  wire ATTACK_STATE;
  wire ATTACK_STATE2_carry__0_n_0;
  wire ATTACK_STATE2_carry__0_n_1;
  wire ATTACK_STATE2_carry__0_n_2;
  wire ATTACK_STATE2_carry__0_n_3;
  wire [3:0]ATTACK_STATE2_carry__1_0;
  wire ATTACK_STATE2_carry__1_n_0;
  wire ATTACK_STATE2_carry__1_n_1;
  wire ATTACK_STATE2_carry__1_n_2;
  wire ATTACK_STATE2_carry__1_n_3;
  wire [3:0]ATTACK_STATE2_carry__2_0;
  wire ATTACK_STATE2_carry__2_n_0;
  wire ATTACK_STATE2_carry__2_n_1;
  wire ATTACK_STATE2_carry__2_n_2;
  wire ATTACK_STATE2_carry__2_n_3;
  wire [3:0]ATTACK_STATE2_carry__3_0;
  wire ATTACK_STATE2_carry__3_n_0;
  wire ATTACK_STATE2_carry__3_n_1;
  wire ATTACK_STATE2_carry__3_n_2;
  wire ATTACK_STATE2_carry__3_n_3;
  wire [3:0]ATTACK_STATE2_carry__4_0;
  wire ATTACK_STATE2_carry__4_n_0;
  wire ATTACK_STATE2_carry__4_n_1;
  wire ATTACK_STATE2_carry__4_n_2;
  wire ATTACK_STATE2_carry__4_n_3;
  wire [3:0]ATTACK_STATE2_carry__5_0;
  wire ATTACK_STATE2_carry__5_n_0;
  wire ATTACK_STATE2_carry__5_n_1;
  wire ATTACK_STATE2_carry__5_n_2;
  wire ATTACK_STATE2_carry__5_n_3;
  wire [3:0]ATTACK_STATE2_carry__6_0;
  wire ATTACK_STATE2_carry__6_n_0;
  wire ATTACK_STATE2_carry__6_n_1;
  wire ATTACK_STATE2_carry__6_n_2;
  wire ATTACK_STATE2_carry__6_n_3;
  wire [3:0]ATTACK_STATE2_carry__7_0;
  wire ATTACK_STATE2_carry__7_n_1;
  wire ATTACK_STATE2_carry__7_n_2;
  wire ATTACK_STATE2_carry__7_n_3;
  wire ATTACK_STATE2_carry_n_0;
  wire ATTACK_STATE2_carry_n_1;
  wire ATTACK_STATE2_carry_n_2;
  wire ATTACK_STATE2_carry_n_3;
  wire [3:0]ATTACK_STATE_reg_0;
  wire ATTACK_STATE_reg_1;
  wire CLK;
  wire [0:0]CO;
  wire [3:0]S;
  wire TRIGER;
  wire TRIGER_reg_0;
  wire p_0_in;
  wire [3:0]NLW_ATTACK_STATE2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_ATTACK_STATE2_carry__7_O_UNCONNECTED;

  CARRY4 ATTACK_STATE2_carry
       (.CI(1'b0),
        .CO({ATTACK_STATE2_carry_n_0,ATTACK_STATE2_carry_n_1,ATTACK_STATE2_carry_n_2,ATTACK_STATE2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 ATTACK_STATE2_carry__0
       (.CI(ATTACK_STATE2_carry_n_0),
        .CO({ATTACK_STATE2_carry__0_n_0,ATTACK_STATE2_carry__0_n_1,ATTACK_STATE2_carry__0_n_2,ATTACK_STATE2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__0_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__1_0));
  CARRY4 ATTACK_STATE2_carry__1
       (.CI(ATTACK_STATE2_carry__0_n_0),
        .CO({ATTACK_STATE2_carry__1_n_0,ATTACK_STATE2_carry__1_n_1,ATTACK_STATE2_carry__1_n_2,ATTACK_STATE2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__1_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__2_0));
  CARRY4 ATTACK_STATE2_carry__2
       (.CI(ATTACK_STATE2_carry__1_n_0),
        .CO({ATTACK_STATE2_carry__2_n_0,ATTACK_STATE2_carry__2_n_1,ATTACK_STATE2_carry__2_n_2,ATTACK_STATE2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__2_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__3_0));
  CARRY4 ATTACK_STATE2_carry__3
       (.CI(ATTACK_STATE2_carry__2_n_0),
        .CO({ATTACK_STATE2_carry__3_n_0,ATTACK_STATE2_carry__3_n_1,ATTACK_STATE2_carry__3_n_2,ATTACK_STATE2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__3_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__4_0));
  CARRY4 ATTACK_STATE2_carry__4
       (.CI(ATTACK_STATE2_carry__3_n_0),
        .CO({ATTACK_STATE2_carry__4_n_0,ATTACK_STATE2_carry__4_n_1,ATTACK_STATE2_carry__4_n_2,ATTACK_STATE2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__4_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__5_0));
  CARRY4 ATTACK_STATE2_carry__5
       (.CI(ATTACK_STATE2_carry__4_n_0),
        .CO({ATTACK_STATE2_carry__5_n_0,ATTACK_STATE2_carry__5_n_1,ATTACK_STATE2_carry__5_n_2,ATTACK_STATE2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__5_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__6_0));
  CARRY4 ATTACK_STATE2_carry__6
       (.CI(ATTACK_STATE2_carry__5_n_0),
        .CO({ATTACK_STATE2_carry__6_n_0,ATTACK_STATE2_carry__6_n_1,ATTACK_STATE2_carry__6_n_2,ATTACK_STATE2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__6_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE2_carry__7_0));
  CARRY4 ATTACK_STATE2_carry__7
       (.CI(ATTACK_STATE2_carry__6_n_0),
        .CO({CO,ATTACK_STATE2_carry__7_n_1,ATTACK_STATE2_carry__7_n_2,ATTACK_STATE2_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ATTACK_STATE2_carry__7_O_UNCONNECTED[3:0]),
        .S(ATTACK_STATE_reg_0));
  FDRE ATTACK_STATE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ATTACK_STATE_reg_1),
        .Q(ATTACK_STATE),
        .R(p_0_in));
  FDRE TRIGER_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TRIGER_reg_0),
        .Q(TRIGER),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "STATE_DETECTOR" *) 
module design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR
   (state,
    p_0_in,
    SR,
    CLK,
    RESET,
    E,
    CAN_SIGNAL_IN);
  output state;
  output p_0_in;
  output [0:0]SR;
  input CLK;
  input RESET;
  input [0:0]E;
  input CAN_SIGNAL_IN;

  wire CAN_SIGNAL_IN;
  wire CLK;
  wire [0:0]E;
  wire RESET;
  wire [0:0]SR;
  wire STATE_i_1_n_0;
  wire \buffer[0]_i_1_n_0 ;
  wire \buffer[1]_i_1_n_0 ;
  wire \buffer[2]_i_1_n_0 ;
  wire \buffer[3]_i_1_n_0 ;
  wire \buffer[4]_i_1_n_0 ;
  wire \buffer[4]_i_2_n_0 ;
  wire \buffer[4]_i_3_n_0 ;
  wire \buffer[5]_i_1_n_0 ;
  wire \buffer_reg_n_0_[5] ;
  wire \can_signal_reg[0]_i_1_n_0 ;
  wire \can_signal_reg[1]_i_1_n_0 ;
  wire \can_signal_reg_reg_n_0_[1] ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [5:1]p_0_in__0;
  wire state;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    STATE_i_1
       (.I0(\buffer[4]_i_3_n_0 ),
        .I1(p_0_in_0),
        .I2(\can_signal_reg_reg_n_0_[1] ),
        .I3(state),
        .O(STATE_i_1_n_0));
  FDRE STATE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(STATE_i_1_n_0),
        .Q(state),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    TRIGER_i_1
       (.I0(RESET),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    \buffer[0]_i_1 
       (.I0(CAN_SIGNAL_IN),
        .I1(state),
        .O(\buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \buffer[1]_i_1 
       (.I0(p_0_in__0[1]),
        .I1(state),
        .O(\buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \buffer[2]_i_1 
       (.I0(p_0_in__0[2]),
        .I1(state),
        .O(\buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \buffer[3]_i_1 
       (.I0(p_0_in__0[3]),
        .I1(state),
        .O(\buffer[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \buffer[4]_i_1 
       (.I0(\buffer[4]_i_3_n_0 ),
        .I1(state),
        .I2(E),
        .I3(RESET),
        .O(\buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \buffer[4]_i_2 
       (.I0(p_0_in__0[4]),
        .I1(state),
        .O(\buffer[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000001)) 
    \buffer[4]_i_3 
       (.I0(p_0_in__0[3]),
        .I1(p_0_in__0[4]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[5]),
        .I5(\buffer_reg_n_0_[5] ),
        .O(\buffer[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD001D00C0000000)) 
    \buffer[5]_i_1 
       (.I0(\buffer[4]_i_3_n_0 ),
        .I1(state),
        .I2(E),
        .I3(RESET),
        .I4(p_0_in__0[5]),
        .I5(\buffer_reg_n_0_[5] ),
        .O(\buffer[5]_i_1_n_0 ));
  FDSE \buffer_reg[0] 
       (.C(CLK),
        .CE(\buffer[4]_i_1_n_0 ),
        .D(\buffer[0]_i_1_n_0 ),
        .Q(p_0_in__0[1]),
        .S(p_0_in));
  FDSE \buffer_reg[1] 
       (.C(CLK),
        .CE(\buffer[4]_i_1_n_0 ),
        .D(\buffer[1]_i_1_n_0 ),
        .Q(p_0_in__0[2]),
        .S(p_0_in));
  FDSE \buffer_reg[2] 
       (.C(CLK),
        .CE(\buffer[4]_i_1_n_0 ),
        .D(\buffer[2]_i_1_n_0 ),
        .Q(p_0_in__0[3]),
        .S(p_0_in));
  FDSE \buffer_reg[3] 
       (.C(CLK),
        .CE(\buffer[4]_i_1_n_0 ),
        .D(\buffer[3]_i_1_n_0 ),
        .Q(p_0_in__0[4]),
        .S(p_0_in));
  FDSE \buffer_reg[4] 
       (.C(CLK),
        .CE(\buffer[4]_i_1_n_0 ),
        .D(\buffer[4]_i_2_n_0 ),
        .Q(p_0_in__0[5]),
        .S(p_0_in));
  FDRE \buffer_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\buffer[5]_i_1_n_0 ),
        .Q(\buffer_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \can_signal_reg[0]_i_1 
       (.I0(RESET),
        .I1(state),
        .I2(CAN_SIGNAL_IN),
        .O(\can_signal_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \can_signal_reg[1]_i_1 
       (.I0(RESET),
        .I1(state),
        .I2(p_0_in_0),
        .O(\can_signal_reg[1]_i_1_n_0 ));
  FDRE \can_signal_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\can_signal_reg[0]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \can_signal_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\can_signal_reg[1]_i_1_n_0 ),
        .Q(\can_signal_reg_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \timing_reg[10]_i_1 
       (.I0(RESET),
        .I1(state),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "TIMING_CONTROLLER" *) 
module design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER
   (E,
    p_0_in,
    CLK,
    SR);
  output [0:0]E;
  input p_0_in;
  input CLK;
  input [0:0]SR;

  wire CLK;
  wire [0:0]E;
  wire SP_TRG_i_1_n_0;
  wire SP_TRG_i_2_n_0;
  wire [0:0]SR;
  wire p_0_in;
  wire [10:0]timing_reg;
  wire \timing_reg[10]_i_3_n_0 ;
  wire \timing_reg[3]_i_1_n_0 ;
  wire \timing_reg[6]_i_2_n_0 ;
  wire \timing_reg[6]_i_3_n_0 ;
  wire [10:0]timing_reg_0;

  LUT5 #(
    .INIT(32'h00000040)) 
    SP_TRG_i_1
       (.I0(timing_reg[0]),
        .I1(timing_reg[5]),
        .I2(timing_reg[1]),
        .I3(SP_TRG_i_2_n_0),
        .I4(\timing_reg[6]_i_3_n_0 ),
        .O(SP_TRG_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    SP_TRG_i_2
       (.I0(timing_reg[4]),
        .I1(timing_reg[3]),
        .I2(timing_reg[6]),
        .I3(timing_reg[2]),
        .O(SP_TRG_i_2_n_0));
  FDRE SP_TRG_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SP_TRG_i_1_n_0),
        .Q(E),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \timing_reg[0]_i_1 
       (.I0(timing_reg[0]),
        .O(timing_reg_0[0]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \timing_reg[10]_i_2 
       (.I0(timing_reg[10]),
        .I1(timing_reg[8]),
        .I2(timing_reg[6]),
        .I3(\timing_reg[10]_i_3_n_0 ),
        .I4(timing_reg[7]),
        .I5(timing_reg[9]),
        .O(timing_reg_0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \timing_reg[10]_i_3 
       (.I0(timing_reg[4]),
        .I1(timing_reg[2]),
        .I2(timing_reg[1]),
        .I3(timing_reg[0]),
        .I4(timing_reg[3]),
        .I5(timing_reg[5]),
        .O(\timing_reg[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \timing_reg[1]_i_1 
       (.I0(timing_reg[1]),
        .I1(timing_reg[0]),
        .O(timing_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \timing_reg[2]_i_1 
       (.I0(timing_reg[2]),
        .I1(timing_reg[1]),
        .I2(timing_reg[0]),
        .O(timing_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \timing_reg[3]_i_1 
       (.I0(timing_reg[3]),
        .I1(timing_reg[2]),
        .I2(timing_reg[1]),
        .I3(timing_reg[0]),
        .O(\timing_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF0000FB)) 
    \timing_reg[4]_i_1 
       (.I0(timing_reg[5]),
        .I1(timing_reg[6]),
        .I2(\timing_reg[6]_i_3_n_0 ),
        .I3(\timing_reg[6]_i_2_n_0 ),
        .I4(timing_reg[4]),
        .O(timing_reg_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \timing_reg[5]_i_1 
       (.I0(timing_reg[5]),
        .I1(timing_reg[3]),
        .I2(timing_reg[0]),
        .I3(timing_reg[1]),
        .I4(timing_reg[2]),
        .I5(timing_reg[4]),
        .O(timing_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAF50FE00)) 
    \timing_reg[6]_i_1 
       (.I0(\timing_reg[6]_i_2_n_0 ),
        .I1(\timing_reg[6]_i_3_n_0 ),
        .I2(timing_reg[4]),
        .I3(timing_reg[6]),
        .I4(timing_reg[5]),
        .O(timing_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timing_reg[6]_i_2 
       (.I0(timing_reg[2]),
        .I1(timing_reg[1]),
        .I2(timing_reg[0]),
        .I3(timing_reg[3]),
        .O(\timing_reg[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timing_reg[6]_i_3 
       (.I0(timing_reg[8]),
        .I1(timing_reg[7]),
        .I2(timing_reg[10]),
        .I3(timing_reg[9]),
        .O(\timing_reg[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \timing_reg[7]_i_1 
       (.I0(timing_reg[7]),
        .I1(\timing_reg[10]_i_3_n_0 ),
        .I2(timing_reg[6]),
        .O(timing_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \timing_reg[8]_i_1 
       (.I0(timing_reg[8]),
        .I1(timing_reg[6]),
        .I2(\timing_reg[10]_i_3_n_0 ),
        .I3(timing_reg[7]),
        .O(timing_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \timing_reg[9]_i_1 
       (.I0(timing_reg[9]),
        .I1(timing_reg[7]),
        .I2(\timing_reg[10]_i_3_n_0 ),
        .I3(timing_reg[6]),
        .I4(timing_reg[8]),
        .O(timing_reg_0[9]));
  FDRE \timing_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[0]),
        .Q(timing_reg[0]),
        .R(SR));
  FDRE \timing_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[10]),
        .Q(timing_reg[10]),
        .R(SR));
  FDRE \timing_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[1]),
        .Q(timing_reg[1]),
        .R(SR));
  FDRE \timing_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[2]),
        .Q(timing_reg[2]),
        .R(SR));
  FDRE \timing_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\timing_reg[3]_i_1_n_0 ),
        .Q(timing_reg[3]),
        .R(SR));
  FDRE \timing_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[4]),
        .Q(timing_reg[4]),
        .R(SR));
  FDRE \timing_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[5]),
        .Q(timing_reg[5]),
        .R(SR));
  FDRE \timing_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[6]),
        .Q(timing_reg[6]),
        .R(SR));
  FDRE \timing_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[7]),
        .Q(timing_reg[7]),
        .R(SR));
  FDRE \timing_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[8]),
        .Q(timing_reg[8]),
        .R(SR));
  FDRE \timing_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(timing_reg_0[9]),
        .Q(timing_reg[9]),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
