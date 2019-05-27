`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/23 17:50:37
// Design Name: 
// Module Name: bit_count
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


module BIT_COUNT(CLK, RESET, STATE, SENDER_TQ, RECEIVER_TQ, SENDER_BIT, RECEIVER_BIT);

    input CLK;  //40MHz 25ns
    input RESET;
    input STATE;
    input [7:0]SENDER_TQ;
    input [7:0]RECEIVER_TQ;
    output reg [7:0]SENDER_BIT;
    output reg [7:0]RECEIVER_BIT;
    
    reg s_bit_inc;
    reg r_bit_inc;
    reg [7:0]count;
    
//   sender_bit    送信側のbitを数える
    always @(posedge CLK) begin
        if(~RESET) begin
            SENDER_BIT <= 8'd0;
        end else if(~STATE) begin
            SENDER_BIT <= 8'd0;     //ATTACK_STATEが1になるのは12ビット目
        end else if(SENDER_TQ == 8'd0 && s_bit_inc) begin
            SENDER_BIT <= SENDER_BIT + 8'd1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            s_bit_inc <= 1'b0;
        end else if(~STATE) begin
            s_bit_inc <= 1'b0;
        end else if(count<=8'd10) begin
            s_bit_inc <= 1'b0;
        end else if(SENDER_TQ >= 8'd10) begin
            s_bit_inc <= 1'b1;
        end else if(SENDER_TQ == 8'd0) begin
            s_bit_inc <= 1'b0;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            count <= 8'b0;
        end else if(~STATE) begin
            count <= 8'b0;
        end else if(count == 8'd100) begin
            
        end else if(STATE) begin
            count <= count + 8'b1;
        end
    end
//    受信側のbitを数える
    always @(posedge CLK) begin
        if(~RESET) begin
            RECEIVER_BIT <= 8'd0;
        end else if(~STATE) begin
            RECEIVER_BIT <= 8'd0;
        end else if(RECEIVER_TQ == 8'd0 && r_bit_inc) begin
            RECEIVER_BIT <= RECEIVER_BIT + 8'd1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            r_bit_inc <= 1'b0;
        end else if(~STATE) begin
            r_bit_inc <= 1'b0;
        end else if(count<=8'd10) begin
            r_bit_inc <= 1'b0;
        end else if(RECEIVER_TQ >= 8'd10) begin
            r_bit_inc <= 1'b1;
        end else if(RECEIVER_TQ == 8'd0) begin
            r_bit_inc <= 1'b0;
        end
    end
    
    
endmodule
