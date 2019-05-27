`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/14 00:59:41
// Design Name: 
// Module Name: ATTACK_BIT_COUNTER
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


module ATTACK_BIT_COUNTER(CLK, RESET, ATTACK_STATE, ATTACK_BIT, ATTACK_NUM);
    
    input CLK;
    input RESET;
    input ATTACK_STATE;
    input ATTACK_BIT;
    output reg [7:0]ATTACK_NUM;
    
    reg [1:0]attack_reg;
    
//    ÇªÇÃbitÇÃçUåÇÇ™èIÇÌÇ¡ÇΩÇÁ+1
    always @(posedge CLK) begin
        if(~RESET) begin
            ATTACK_NUM <= 8'b0;
        end else if(~ATTACK_STATE) begin
            ATTACK_NUM <= 8'b0;
        end else if(attack_reg == 2'b10) begin
            ATTACK_NUM <= ATTACK_NUM + 8'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            attack_reg <= 2'b00;
        end else begin
            attack_reg <= {attack_reg[0],ATTACK_BIT};
        end
    end

endmodule
