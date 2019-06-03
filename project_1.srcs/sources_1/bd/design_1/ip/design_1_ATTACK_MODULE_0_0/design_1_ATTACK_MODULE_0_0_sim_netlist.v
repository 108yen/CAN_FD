// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun  3 15:14:12 2019
// Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ATTACK_MODULE_0_0/design_1_ATTACK_MODULE_0_0_sim_netlist.v
// Design      : design_1_ATTACK_MODULE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ATTACK_MODULE_0_0,ATTACK_MODULE,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ATTACK_MODULE,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ATTACK_MODULE_0_0
   (CLK,
    RESET,
    ATTACK_STATE,
    INC_LENGTH,
    INC_LOC,
    TO_DOMINANT,
    TO_RECESSIVE,
    DEBUG);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input ATTACK_STATE;
  input [7:0]INC_LENGTH;
  input [7:0]INC_LOC;
  inout TO_DOMINANT;
  inout TO_RECESSIVE;
  output DEBUG;

  wire ATTACK_STATE;
  wire CLK;
  wire DEBUG;
  wire [7:0]INC_LENGTH;
  wire [7:0]INC_LOC;
  wire RESET;
  wire TO_DOMINANT;
  wire TO_RECESSIVE;
  wire condAttack;

  LUT1 #(
    .INIT(2'h1)) 
    TO_DOMINANT_INST_0
       (.I0(condAttack),
        .O(TO_DOMINANT));
  LUT1 #(
    .INIT(2'h1)) 
    TO_RECESSIVE_INST_0
       (.I0(DEBUG),
        .O(TO_RECESSIVE));
  design_1_ATTACK_MODULE_0_0_ATTACK_MODULE inst
       (.ATTACK_STATE(ATTACK_STATE),
        .CLK(CLK),
        .DEBUG(DEBUG),
        .INC_LENGTH(INC_LENGTH),
        .INC_LOC(INC_LOC),
        .RESET(RESET),
        .TO_DOMINANT(TO_DOMINANT),
        .TO_RECESSIVE(TO_RECESSIVE),
        .condAttack(condAttack));
endmodule

(* ORIG_REF_NAME = "ATTACK_MODULE" *) 
module design_1_ATTACK_MODULE_0_0_ATTACK_MODULE
   (DEBUG,
    condAttack,
    CLK,
    INC_LENGTH,
    INC_LOC,
    RESET,
    ATTACK_STATE,
    TO_RECESSIVE,
    TO_DOMINANT);
  output DEBUG;
  output condAttack;
  input CLK;
  input [7:0]INC_LENGTH;
  input [7:0]INC_LOC;
  input RESET;
  input ATTACK_STATE;
  input TO_RECESSIVE;
  input TO_DOMINANT;

  wire ATTACK_STATE;
  wire CLK;
  wire DEBUG;
  wire [7:0]INC_LENGTH;
  wire [7:0]INC_LOC;
  wire RESET;
  wire TO_DOMINANT;
  wire TO_RECESSIVE;
  wire condAttack;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h7)) 
    \counter[0]_i_1 
       (.I0(RESET),
        .I1(ATTACK_STATE),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR forgery
       (.CLK(CLK),
        .INC_LENGTH(INC_LENGTH),
        .INC_LOC(INC_LOC),
        .RESET(RESET),
        .TO_DOMINANT(TO_DOMINANT),
        .condAttack(condAttack),
        .counter_reg(counter_reg));
  design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0 resyn
       (.CLK(CLK),
        .DEBUG(DEBUG),
        .RESET(RESET),
        .TO_RECESSIVE(TO_RECESSIVE),
        .counter_reg(counter_reg));
endmodule

(* ORIG_REF_NAME = "ATTACK_SIGNAL_GENERATOR" *) 
module design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR
   (condAttack,
    CLK,
    counter_reg,
    INC_LENGTH,
    INC_LOC,
    TO_DOMINANT,
    RESET);
  output condAttack;
  input CLK;
  input [15:0]counter_reg;
  input [7:0]INC_LENGTH;
  input [7:0]INC_LOC;
  input TO_DOMINANT;
  input RESET;

  wire CLK;
  wire [7:0]INC_LENGTH;
  wire [7:0]INC_LOC;
  wire RESET;
  wire TO_DOMINANT;
  wire attack;
  wire \attackCounter[5]_i_1__0_n_0 ;
  wire \attackCounter[7]_i_1__0_n_0 ;
  wire \attackCounter[7]_i_3__0_n_0 ;
  wire [7:0]attackCounter_reg__0;
  wire attack_carry__0_i_1_n_0;
  wire attack_carry__0_i_2_n_0;
  wire attack_carry__0_n_3;
  wire attack_carry_i_1_n_0;
  wire attack_carry_i_2_n_0;
  wire attack_carry_i_3_n_0;
  wire attack_carry_i_4_n_0;
  wire attack_carry_n_0;
  wire attack_carry_n_1;
  wire attack_carry_n_2;
  wire attack_carry_n_3;
  wire condAttack;
  wire condAttack_i_1__0_n_0;
  wire condAttack_i_2__0_n_0;
  wire condAttack_i_3__0_n_0;
  wire condAttack_i_4__0_n_0;
  wire condAttack_i_5__0_n_0;
  wire condAttack_i_6__0_n_0;
  wire condAttack_i_7__0_n_0;
  wire condAttack_i_8_n_0;
  wire [15:0]counter_reg;
  wire [7:0]p_0_in;
  wire [3:0]NLW_attack_carry_O_UNCONNECTED;
  wire [3:2]NLW_attack_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_attack_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \attackCounter[0]_i_1 
       (.I0(attackCounter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \attackCounter[1]_i_1__0 
       (.I0(attackCounter_reg__0[0]),
        .I1(attackCounter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \attackCounter[2]_i_1__0 
       (.I0(attackCounter_reg__0[2]),
        .I1(attackCounter_reg__0[0]),
        .I2(attackCounter_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \attackCounter[3]_i_1__0 
       (.I0(attackCounter_reg__0[3]),
        .I1(attackCounter_reg__0[1]),
        .I2(attackCounter_reg__0[0]),
        .I3(attackCounter_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \attackCounter[4]_i_1__0 
       (.I0(attackCounter_reg__0[4]),
        .I1(attackCounter_reg__0[2]),
        .I2(attackCounter_reg__0[0]),
        .I3(attackCounter_reg__0[1]),
        .I4(attackCounter_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \attackCounter[5]_i_1__0 
       (.I0(attackCounter_reg__0[5]),
        .I1(attackCounter_reg__0[4]),
        .I2(attackCounter_reg__0[2]),
        .I3(attackCounter_reg__0[0]),
        .I4(attackCounter_reg__0[1]),
        .I5(attackCounter_reg__0[3]),
        .O(\attackCounter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \attackCounter[6]_i_1__0 
       (.I0(attackCounter_reg__0[6]),
        .I1(\attackCounter[7]_i_3__0_n_0 ),
        .I2(attackCounter_reg__0[5]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \attackCounter[7]_i_1__0 
       (.I0(TO_DOMINANT),
        .I1(RESET),
        .O(\attackCounter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \attackCounter[7]_i_2__0 
       (.I0(attackCounter_reg__0[7]),
        .I1(attackCounter_reg__0[5]),
        .I2(\attackCounter[7]_i_3__0_n_0 ),
        .I3(attackCounter_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \attackCounter[7]_i_3__0 
       (.I0(attackCounter_reg__0[3]),
        .I1(attackCounter_reg__0[1]),
        .I2(attackCounter_reg__0[0]),
        .I3(attackCounter_reg__0[2]),
        .I4(attackCounter_reg__0[4]),
        .O(\attackCounter[7]_i_3__0_n_0 ));
  FDRE \attackCounter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(attackCounter_reg__0[0]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(attackCounter_reg__0[1]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(attackCounter_reg__0[2]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(attackCounter_reg__0[3]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(attackCounter_reg__0[4]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\attackCounter[5]_i_1__0_n_0 ),
        .Q(attackCounter_reg__0[5]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(attackCounter_reg__0[6]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  FDRE \attackCounter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(attackCounter_reg__0[7]),
        .R(\attackCounter[7]_i_1__0_n_0 ));
  CARRY4 attack_carry
       (.CI(1'b0),
        .CO({attack_carry_n_0,attack_carry_n_1,attack_carry_n_2,attack_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_attack_carry_O_UNCONNECTED[3:0]),
        .S({attack_carry_i_1_n_0,attack_carry_i_2_n_0,attack_carry_i_3_n_0,attack_carry_i_4_n_0}));
  CARRY4 attack_carry__0
       (.CI(attack_carry_n_0),
        .CO({NLW_attack_carry__0_CO_UNCONNECTED[3:2],attack,attack_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_attack_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,attack_carry__0_i_1_n_0,attack_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    attack_carry__0_i_1
       (.I0(counter_reg[15]),
        .O(attack_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    attack_carry__0_i_2
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .O(attack_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    attack_carry_i_1
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[11]),
        .O(attack_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0018180082000018)) 
    attack_carry_i_2
       (.I0(counter_reg[8]),
        .I1(INC_LOC[7]),
        .I2(counter_reg[7]),
        .I3(INC_LOC[5]),
        .I4(INC_LOC[6]),
        .I5(counter_reg[6]),
        .O(attack_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    attack_carry_i_3
       (.I0(counter_reg[3]),
        .I1(INC_LOC[3]),
        .I2(counter_reg[5]),
        .I3(INC_LOC[5]),
        .I4(INC_LOC[4]),
        .I5(counter_reg[4]),
        .O(attack_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    attack_carry_i_4
       (.I0(counter_reg[0]),
        .I1(INC_LOC[0]),
        .I2(counter_reg[1]),
        .I3(INC_LOC[1]),
        .I4(INC_LOC[2]),
        .I5(counter_reg[2]),
        .O(attack_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFAA8A00000000)) 
    condAttack_i_1__0
       (.I0(condAttack),
        .I1(condAttack_i_2__0_n_0),
        .I2(condAttack_i_3__0_n_0),
        .I3(condAttack_i_4__0_n_0),
        .I4(attack),
        .I5(RESET),
        .O(condAttack_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF96F6FF6)) 
    condAttack_i_2__0
       (.I0(INC_LENGTH[4]),
        .I1(attackCounter_reg__0[4]),
        .I2(attackCounter_reg__0[3]),
        .I3(condAttack_i_5__0_n_0),
        .I4(INC_LENGTH[3]),
        .I5(condAttack_i_6__0_n_0),
        .O(condAttack_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    condAttack_i_3__0
       (.I0(attackCounter_reg__0[5]),
        .I1(condAttack_i_7__0_n_0),
        .I2(INC_LENGTH[5]),
        .O(condAttack_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hF66F9FF6)) 
    condAttack_i_4__0
       (.I0(attackCounter_reg__0[7]),
        .I1(INC_LENGTH[7]),
        .I2(INC_LENGTH[6]),
        .I3(condAttack_i_8_n_0),
        .I4(attackCounter_reg__0[6]),
        .O(condAttack_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    condAttack_i_5__0
       (.I0(INC_LENGTH[2]),
        .I1(INC_LENGTH[1]),
        .I2(INC_LENGTH[0]),
        .O(condAttack_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6DBBDFFFF)) 
    condAttack_i_6__0
       (.I0(attackCounter_reg__0[1]),
        .I1(INC_LENGTH[1]),
        .I2(attackCounter_reg__0[2]),
        .I3(INC_LENGTH[2]),
        .I4(INC_LENGTH[0]),
        .I5(attackCounter_reg__0[0]),
        .O(condAttack_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    condAttack_i_7__0
       (.I0(INC_LENGTH[4]),
        .I1(INC_LENGTH[2]),
        .I2(INC_LENGTH[1]),
        .I3(INC_LENGTH[0]),
        .I4(INC_LENGTH[3]),
        .O(condAttack_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    condAttack_i_8
       (.I0(INC_LENGTH[5]),
        .I1(INC_LENGTH[3]),
        .I2(INC_LENGTH[0]),
        .I3(INC_LENGTH[1]),
        .I4(INC_LENGTH[2]),
        .I5(INC_LENGTH[4]),
        .O(condAttack_i_8_n_0));
  FDRE condAttack_reg
       (.C(CLK),
        .CE(1'b1),
        .D(condAttack_i_1__0_n_0),
        .Q(condAttack),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ATTACK_SIGNAL_GENERATOR" *) 
module design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0
   (DEBUG,
    CLK,
    counter_reg,
    TO_RECESSIVE,
    RESET);
  output DEBUG;
  input CLK;
  input [15:0]counter_reg;
  input TO_RECESSIVE;
  input RESET;

  wire CLK;
  wire DEBUG;
  wire RESET;
  wire TO_RECESSIVE;
  wire attack;
  wire \attackCounter[7]_i_1_n_0 ;
  wire \attackCounter[7]_i_3_n_0 ;
  wire [7:0]attackCounter_reg__0;
  wire condAttack_i_1_n_0;
  wire condAttack_i_2_n_0;
  wire condAttack_i_4_n_0;
  wire condAttack_i_5_n_0;
  wire condAttack_i_6_n_0;
  wire condAttack_i_7_n_0;
  wire [15:0]counter_reg;
  wire [7:0]p_0_in__0;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \attackCounter[0]_i_1__0 
       (.I0(attackCounter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \attackCounter[1]_i_1 
       (.I0(attackCounter_reg__0[0]),
        .I1(attackCounter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \attackCounter[2]_i_1 
       (.I0(attackCounter_reg__0[2]),
        .I1(attackCounter_reg__0[0]),
        .I2(attackCounter_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \attackCounter[3]_i_1 
       (.I0(attackCounter_reg__0[3]),
        .I1(attackCounter_reg__0[1]),
        .I2(attackCounter_reg__0[0]),
        .I3(attackCounter_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \attackCounter[4]_i_1 
       (.I0(attackCounter_reg__0[4]),
        .I1(attackCounter_reg__0[2]),
        .I2(attackCounter_reg__0[0]),
        .I3(attackCounter_reg__0[1]),
        .I4(attackCounter_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \attackCounter[5]_i_1 
       (.I0(attackCounter_reg__0[3]),
        .I1(attackCounter_reg__0[1]),
        .I2(attackCounter_reg__0[0]),
        .I3(attackCounter_reg__0[2]),
        .I4(attackCounter_reg__0[4]),
        .I5(attackCounter_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \attackCounter[6]_i_1 
       (.I0(attackCounter_reg__0[6]),
        .I1(\attackCounter[7]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \attackCounter[7]_i_1 
       (.I0(TO_RECESSIVE),
        .I1(RESET),
        .O(\attackCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \attackCounter[7]_i_2 
       (.I0(attackCounter_reg__0[7]),
        .I1(\attackCounter[7]_i_3_n_0 ),
        .I2(attackCounter_reg__0[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \attackCounter[7]_i_3 
       (.I0(attackCounter_reg__0[5]),
        .I1(attackCounter_reg__0[4]),
        .I2(attackCounter_reg__0[2]),
        .I3(attackCounter_reg__0[0]),
        .I4(attackCounter_reg__0[1]),
        .I5(attackCounter_reg__0[3]),
        .O(\attackCounter[7]_i_3_n_0 ));
  FDRE \attackCounter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(attackCounter_reg__0[0]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(attackCounter_reg__0[1]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(attackCounter_reg__0[2]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(attackCounter_reg__0[3]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(attackCounter_reg__0[4]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(attackCounter_reg__0[5]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(attackCounter_reg__0[6]),
        .R(\attackCounter[7]_i_1_n_0 ));
  FDRE \attackCounter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(attackCounter_reg__0[7]),
        .R(\attackCounter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF200)) 
    condAttack_i_1
       (.I0(DEBUG),
        .I1(condAttack_i_2_n_0),
        .I2(attack),
        .I3(RESET),
        .O(condAttack_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    condAttack_i_2
       (.I0(attackCounter_reg__0[4]),
        .I1(attackCounter_reg__0[6]),
        .I2(attackCounter_reg__0[3]),
        .I3(attackCounter_reg__0[2]),
        .I4(condAttack_i_4_n_0),
        .O(condAttack_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    condAttack_i_3
       (.I0(condAttack_i_5_n_0),
        .I1(condAttack_i_6_n_0),
        .I2(condAttack_i_7_n_0),
        .I3(counter_reg[12]),
        .I4(counter_reg[13]),
        .I5(counter_reg[14]),
        .O(attack));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    condAttack_i_4
       (.I0(attackCounter_reg__0[1]),
        .I1(attackCounter_reg__0[0]),
        .I2(attackCounter_reg__0[7]),
        .I3(attackCounter_reg__0[5]),
        .O(condAttack_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    condAttack_i_5
       (.I0(counter_reg[6]),
        .I1(counter_reg[3]),
        .I2(counter_reg[1]),
        .I3(counter_reg[4]),
        .I4(counter_reg[0]),
        .I5(counter_reg[5]),
        .O(condAttack_i_5_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    condAttack_i_6
       (.I0(counter_reg[11]),
        .I1(counter_reg[9]),
        .I2(counter_reg[10]),
        .O(condAttack_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    condAttack_i_7
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(counter_reg[2]),
        .I3(counter_reg[15]),
        .O(condAttack_i_7_n_0));
  FDRE condAttack_reg
       (.C(CLK),
        .CE(1'b1),
        .D(condAttack_i_1_n_0),
        .Q(DEBUG),
        .R(1'b0));
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