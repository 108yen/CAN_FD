`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/14 22:47:09
// Design Name: 
// Module Name: SUCCESS_PROBABILITY
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


module SUCCESS_PROBABILITY(CLK, RESET, ATTACK_STATE, ATTACK_SUCCESS, SEARCH, SUCCESS_RATE, FIN_COUNT);
    
    input CLK;
    input RESET;
    input ATTACK_STATE;
    input ATTACK_SUCCESS;
    input SEARCH;
    output [15:0]SUCCESS_RATE;
    output FIN_COUNT;
    
    parameter wave_num = 16'd1000;   //1000波形中の攻撃成功回数をカウント
    
    reg [15:0]attack_count;
    reg [1:0]attack_state_reg;
    reg [15:0]success_count;
    reg [1:0]attack_success_reg;
    
    assign FIN_COUNT = attack_count == wave_num;
//    assign SUCCESS_RATE = attack_count;
    assign SUCCESS_RATE = FIN_COUNT ? success_count:16'd9999;
    
    /*always @(posedge CLK) begin
        if(~RESET) begin
            SUCCESS_RATE <= 16'b0;
        end else if(FIN_COUNT) begin
            SUCCESS_RATE <= success_count;
        end
    end*/
    
    always @(posedge CLK) begin
        if(~RESET) begin
            attack_count <= 16'b0;
        end else if(SEARCH) begin
            attack_count <= 16'b0;
        end else if(FIN_COUNT) begin
            attack_count <= 16'b0;
        end else if(attack_state_reg == 2'b10) begin
            attack_count <= attack_count + 16'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            attack_state_reg <= 2'b00;
        end else begin
            attack_state_reg <= {attack_state_reg[0],ATTACK_STATE};
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            success_count <= 16'b0;
        end else if(SEARCH) begin
            success_count <=16'b0;
        end else if(FIN_COUNT) begin
            success_count <= 16'b0;
        end else if(attack_success_reg == 2'b01) begin
            success_count <= success_count + 16'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            attack_success_reg <= 2'b00;
        end else begin
            attack_success_reg <= {attack_success_reg[0],ATTACK_SUCCESS};
        end
    end
    
endmodule
