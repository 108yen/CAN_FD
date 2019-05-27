`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/20 19:05:03
// Design Name: 
// Module Name: TQ_OBSERVER
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//			   _0_     _1_     _2_     _3_     _4_     _5_     _6_     _7_     _8_     _9_     _10_    _11_    _12_    _13_    _14_    _15_
//	TBRPCLK	__|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___| 
//			   _______ __________________________________________________________________________________________________________________________        
//	tBIT(���M)|__Sync_|______�Q____PropSeg____________|__________PS1__________________|______________________________________PS2______________|__
//			   _______ __________________________________________________________________________________________________________________________
//	tBIT(��M)|__Sync_|______�Q____PropSeg____________|__________PS1__________________________|______________________________PS2______________|__
//			   ________________________________________________________________________________________________________________________________
//	tTQ		__|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
//			  |                                                                       |       |                                               |                 
//	CANBIT	->|<----------------------------------------------------------------------A-------A---------------------------------------------->|<----------------
//			                                               (Sample)                 ���M    ��M            


//���MECU�Ǝ�MECU��TQ�Ǘ�
module TQ_OBSERVER(CLK, RESET, STATE, ATTACK_STATE, CAN_SIGNAL_IN, BUS_MSG, DEBUG_COUNT, ACK_TRIGER, SENDER_BIT, RECEIVER_BIT, SP_TRG, SENDER_TQ, RECEIVER_TQ, S_COUNTER, R_COUNTER);

    input CLK;
    input RESET;
    input STATE;
    input ATTACK_STATE;
    input CAN_SIGNAL_IN;
    input [107:0]BUS_MSG;
    input [7:0]DEBUG_COUNT;
    input ACK_TRIGER;
    input [7:0]SENDER_BIT;
    input [7:0]RECEIVER_BIT;
    output reg SP_TRG;
    output reg [7:0]SENDER_TQ;
    output reg [7:0]RECEIVER_TQ;
    output reg [7:0]S_COUNTER;
    output reg [7:0]R_COUNTER;
    
    parameter CLK_WAVELENGTH = 8'd25;
    
//    parameter UNATTACKED_MSG = 44'b00011001101000001001000001001110000101010110;    //ID:19A,DATA:1�̃��b�Z�[�W
//    parameter ATTACKED_MSG =   44'b00011001101000001001000001000010010011001111;  //ID:19A,DATA:0�̃��b�Z�[�W
//    parameter UNATTACKED_MSG =  44'b00011001101000001001000001000010010011001111;   //ID:19A,DATA:0�̃��b�Z�[�W
//    parameter ATTACKED_MSG =   44'b00011001101000001001000001001110000101010110;  //ID:19A,DATA:1�̃��b�Z�[�W
    parameter UNATTACKED_MSG = 48'b000001111011100000101000001001101111101011000110;    //ID:077,DATA:01�̃��b�Z�[�W
    parameter ATTACKED_MSG =   48'b000001111011100000101000001010101010010000011110;  //ID:077,DATA:02�̃��b�Z�[�W
//    parameter ATTACKED_MSG =   48'b000001111011100000101000001101000011101111101010;  //ID:077,DATA:05�̃��b�Z�[�W
//    parameter UNATTACKED_MSG = 47'b00000111101110000010100000101100100010001101010;    //ID:077,DATA:03�̃��b�Z�[�W
//    parameter ATTACKED_MSG =   47'b00000111101110000010100000110010000101110011110;  //ID:077,DATA:04�̃��b�Z�[�W
    parameter MSG_L = 8'd48;
    parameter SJW = 8'd3;
    parameter SENDER_SP = 8'd9;   //��TQ�ォ
    parameter SENDER_PTS = 8'd4;
    parameter SENDER_PS1 = 8'd4;
    parameter SENDER_PS2 = 8'd7;
    parameter RECEIVER_SP = 8'd10;
    parameter RECEIVER_PTS = 8'd4;
    parameter RECEIVER_PS1 = 8'd5;
    parameter RECEIVER_PS2 = 8'd6;
    
    reg [1:0]syn;
    reg [7:0]pre_sender_bit;
    reg [7:0]pre_receiver_bit;
    reg [7:0]s_edge_count;
    reg [7:0]r_edge_count;
    
    parameter [7:0]SP_TIMING = 8'd9;   //��TQ��ɂƂ邩 ���MECU��sanplepoint�Ɠ���������
    
    wire signed [8:0]s_TQ_d;
    wire signed [8:0]r_TQ_d;
    wire signed [8:0]S_COUNTER_d;
    wire signed [8:0]R_COUNTER_d;
    wire [7:0]TQ_length;    //1TQ����COUNT��
    wire [7:0]r_timing1;
    wire [7:0]r_timing2;
    wire [7:0]s_timing1;
    wire [7:0]s_timing2;
    
    assign TQ_length = 8'd125 / CLK_WAVELENGTH - 8'd1;  //40MHz����4
    
//    �ē����p�̃G�b�W���o�Ɏg��
    always @(posedge CLK) begin
        if(~RESET) begin
            syn <= 2'b0; 
        end else begin 
            syn <= {syn[0],CAN_SIGNAL_IN};
        end
    end
    
//    SP�̃^�C�~���O
    always @(posedge CLK) begin
        if(~RESET) begin
            SP_TRG <= 1'b0;
        end else if(S_COUNTER == 8'd0 && SENDER_TQ == SP_TIMING) begin
            SP_TRG <= 1'b1;
        end else begin
            SP_TRG <= 1'b0;
        end
    end
    
//    1bit����10�̃G�b�W�����񗈂���
    always @(posedge CLK) begin
        if(~RESET) begin
            s_edge_count <= 8'b0;
        end else if(~ATTACK_STATE) begin
            s_edge_count <= 8'b0;
        end else if(pre_sender_bit != SENDER_BIT) begin
            s_edge_count <= 8'b0;
        end else if(syn == 2'b10 && (SENDER_TQ != 8'd0 || S_COUNTER != 8'd0)) begin
            s_edge_count <= s_edge_count + 8'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            r_edge_count <= 8'b0;
        end else if(~ATTACK_STATE) begin
            r_edge_count <= 8'b0;
        end else if(pre_receiver_bit != RECEIVER_BIT/* && RECEIVER_TQ > 8'd6*/) begin
            r_edge_count <= 8'b0;
        end else if(syn == 2'b10) begin
            r_edge_count <= r_edge_count + 8'b1;
        end
    end
    
//   bit�̕ω�    
    always @(posedge CLK) begin
        if(~RESET) begin
            pre_sender_bit <= 8'b0;
        end else if(~ATTACK_STATE) begin
            pre_sender_bit <= 8'b0;
        end else begin
            pre_sender_bit <= SENDER_BIT;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            pre_receiver_bit <= 8'b0;
        end else if(~ATTACK_STATE) begin
            pre_receiver_bit <= 8'b0;
        end else begin
            pre_receiver_bit <= RECEIVER_BIT;
        end
    end
    
    //���MECU�Ǝ�MECU�̐؂�ւ�  SOF��10�̃G�b�W�ł��
    //TQ�̂���
    /*assign s_TQ_d = abs($signed({1'b0, SENDER_TQ}), $signed(9'd7));
    assign r_TQ_d = abs($signed({1'b0, RECEIVER_TQ}), $signed(9'd7)); */    
    //    counter�̂���
    assign S_COUNTER_d = abs(($signed({1'b0, TQ_decrement(SENDER_TQ)}) * $signed({1'b0, TQ_length}) + $signed({1'b0, S_COUNTER})), ($signed(9'd7) * $signed({1'b0, TQ_length}) + $signed(9'd2)));
    assign R_COUNTER_d = abs(($signed({1'b0, TQ_decrement(RECEIVER_TQ)}) * $signed({1'b0, TQ_length}) + $signed({1'b0, R_COUNTER})), ($signed(9'd7) * $signed({1'b0, TQ_length}) + $signed(9'd2)));

//    counter�̏���
    always @(posedge CLK) begin  //���MTQ��counter
        if(~RESET) begin
            S_COUNTER <= 8'b0;
        end else if(syn == 2'b10 && STATE && ~ACK_TRIGER && ~ATTACK_STATE) begin    //�U��������Ȃ��Ƃ�ACK�ȊO��10�G�b�W�œ���
            S_COUNTER <= 8'd3;
        end else if(s_resyn_ps2) begin
            S_COUNTER <= 8'd2;
//            S_COUNTER <= 8'd1;
        /*end else if(syn == 2'b10 && ATTACK_STATE && SENDER_TQ >= s_timing1 && SENDER_TQ < s_timing2) begin  //�U�����̍ē���
            S_COUNTER <= 8'd0;*/
        end else begin
            if(S_COUNTER == TQ_length) begin
                S_COUNTER <= 8'b0;
            end else begin
                S_COUNTER <= S_COUNTER + 8'b1;
            end
        end
    end

    always @(posedge CLK) begin  //��MTQ��counter
        if(~RESET) begin
            R_COUNTER <= 8'b0;
        end else if(syn == 2'b10 && STATE && ~ACK_TRIGER && ~ATTACK_STATE) begin    //�U��������Ȃ��Ƃ�ACK�ȊO��10�G�b�W�œ���
            R_COUNTER <= 8'd3;
        end else if(r_resyn_pts) begin  //pts�Ȃ�
//            R_COUNTER <= DEBUG_COUNT;
            R_COUNTER <= 8'd4;
//            R_COUNTER <= 8'd2;
//            R_COUNTER <= 8'd0;
        end else if(r_resyn_ps2) begin    // PS2���Ȃ�
//            R_COUNTER <= DEBUG_COUNT;
            R_COUNTER <= 8'd1;
//            R_COUNTER <= 8'd4;
//            R_COUNTER <= 8'd3;
//            R_COUNTER <= 8'd2;
//            R_COUNTER <= 8'd0;
        end else begin
            if(R_COUNTER == TQ_length) begin
                R_COUNTER <= 8'b0;
            end else begin
                R_COUNTER <= R_COUNTER + 8'b1;
            end
        end
    end

//    TQ�̏���
    wire s_resyn_ps2;
    assign s_timing1 = 8'd1 + SENDER_PTS + SENDER_PS1 - 8'd1;
//    assign s_timing1 = 8'd1 + SENDER_PTS + SENDER_PS1;
    assign s_timing2 = 8'd1 + SENDER_PTS + SENDER_PS1 + SENDER_PS2 - 8'd1;
//    assign s_resyn_ps2 = syn == 2'b10 && ATTACK_STATE && (SENDER_TQ >= s_timing1 && SENDER_TQ <= s_timing2  && UNATTACKED_MSG[MSG_L - 8'd1 - SENDER_BIT] == 1'b1);
    assign s_resyn_ps2 = syn == 2'b10 && ATTACK_STATE && (SENDER_TQ >= s_timing1/* + 8'd1 */&& SENDER_TQ < s_timing2  && UNATTACKED_MSG[MSG_L - 8'd1 - SENDER_BIT] == 1'b1);

    always @(posedge CLK) begin //���MECU��TQ
        if(~RESET) begin
            SENDER_TQ <= 8'b0;
        end else if(syn == 2'b10 && /*STATE && */~ACK_TRIGER && ~ATTACK_STATE) begin    //�U��������Ȃ��Ƃ�ACK�ȊO��10�G�b�W�œ���
            SENDER_TQ <= 8'b0;
        end else if(s_resyn_ps2) begin    // PS2���Ȃ�
            if(8'd15 - SENDER_TQ < SJW + 8'd1) begin //SJW�͈͓̔��Ȃ�
                SENDER_TQ <= 8'd0;
            end else begin  //SJW�͈̔͊O�Ȃ�SJW�̕������ē���
                SENDER_TQ <= SENDER_TQ + SJW;
            end
        end else begin //����ւ�
            if(S_COUNTER == TQ_length && SENDER_TQ == 8'd15) begin
                SENDER_TQ <= 8'b0;
            end else if(S_COUNTER == TQ_length) begin
                SENDER_TQ <= SENDER_TQ + 8'b1;
            end
        end
    end
    
    wire r_resyn_ps2;
    wire r_resyn_pts;
    
    assign r_timing1 = 8'd1 + RECEIVER_PTS + RECEIVER_PS1 - 8'd1;   //9
//    assign r_timing1 = 8'd1 + RECEIVER_PTS + RECEIVER_PS1;   //10
    assign r_timing2 = 8'd1 + RECEIVER_PTS + RECEIVER_PS1 + RECEIVER_PS2 - 8'd1;    //15
//    assign r_resyn_ps2 = syn == 2'b10 && ATTACK_STATE && (RECEIVER_TQ >= r_timing1 && RECEIVER_TQ <= r_timing2 && ATTACKED_MSG[MSG_L - 8'd1 - RECEIVER_BIT] == 1'b1);
    assign r_resyn_ps2 = syn == 2'b10 && ATTACK_STATE && (RECEIVER_TQ > r_timing1/* + 8'd1 */&& RECEIVER_TQ < r_timing2 && ATTACKED_MSG[MSG_L - 8'd1 - RECEIVER_BIT] == 1'b1);
    assign r_resyn_pts = syn == 2'b10 && ATTACK_STATE && (RECEIVER_TQ >= 8'd1 && RECEIVER_TQ <= r_timing1);
//    assign r_resyn_pts = syn == 2'b10 && ATTACK_STATE && (RECEIVER_TQ >= 8'd1 && RECEIVER_TQ <= r_timing1 - 8'b1) && ATTACKED_MSG[MSG_L - 8'd1 - RECEIVER_BIT] == 1'b0 && ATTACKED_MSG[MSG_L - 8'd0 - RECEIVER_BIT] == 1'b1;
//    assign r_resyn_pts = syn == 2'b10 && ATTACK_STATE && (RECEIVER_TQ >= 8'd1 && RECEIVER_TQ <= r_timing1 - RECEIVER_PTS - 8'b1) && ATTACKED_MSG[MSG_L - 8'd1 - RECEIVER_BIT] == 1'b0 && ATTACKED_MSG[MSG_L - 8'd0 - RECEIVER_BIT] == 1'b1;
    
    always @(posedge CLK) begin //��MECU��TQ
        if(~RESET) begin
            RECEIVER_TQ <= 8'b0;
        end else if(syn == 2'b10 /*&& STATE */&& ~ACK_TRIGER && ~ATTACK_STATE) begin    //�U��������Ȃ��Ƃ�ACK�ȊO��10�G�b�W�œ���
            RECEIVER_TQ <= 8'b0;
        end else if(r_resyn_ps2) begin    // PS2���Ȃ�
            if(8'd15 - RECEIVER_TQ < SJW) begin //SJW�͈͓̔��Ȃ�
                RECEIVER_TQ <= 8'd0;
            end else begin  //SJW�͈̔͊O�Ȃ�SJW�̕������ē���
                RECEIVER_TQ <= RECEIVER_TQ + SJW;
            end
        end else if(r_resyn_pts) begin//�U���� 10�̃G�b�W��PTS���Ȃ�
//            if($signed({1'b0,(SJW - 8'd1)}) - $signed({1'b0,RECEIVER_TQ}) >= $signed(9'd0)) begin //SJW�͈͓̔��Ȃ�
            if(SJW - 1 >= RECEIVER_TQ) begin            
                RECEIVER_TQ <= 1'd0;
            end else begin  //SJW�͈̔͊O�Ȃ�SJW�̕������ē���
                RECEIVER_TQ <= RECEIVER_TQ - (SJW - 8'd1);
            end
        end else begin
            if(R_COUNTER == TQ_length && RECEIVER_TQ == 8'd15) begin
               RECEIVER_TQ <= 8'b0;
            end else if(R_COUNTER == TQ_length) begin
               RECEIVER_TQ <= RECEIVER_TQ + 8'b1;
            end
        end
    end

//    TQ��3�߂�
    function [7:0]TQ_decrement;
        input [7:0]TQ;
        TQ_decrement = TQ <= 8'd2 ? 8'd13 + TQ : TQ - 8'd3;
    endfunction;
    
    function signed [8:0]abs;   //a��b�̍����o��
        input signed [8:0]a;
        input signed [8:0]b;
        abs = (a - b) >= 9'd0 ? (a - b) : (b - a); 
    endfunction
    
endmodule
