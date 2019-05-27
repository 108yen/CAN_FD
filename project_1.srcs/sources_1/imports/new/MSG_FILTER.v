`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:13:15 02/24/2015 
// Design Name: 
// Module Name:    MSG_FILTER 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MSG_FILTER(CLK, RESET, STATE, BUS_MSG, ATTACK_PERMIT, ATTACK_STATE, TRIGER);

	input CLK;
	input RESET;
	input STATE;
	input [107:0] BUS_MSG;
	input ATTACK_PERMIT;
	output reg ATTACK_STATE;
	output reg TRIGER;
	
	parameter TARGET = {96'b1,1'b0,11'h19a}; //id:0x19A
//    parameter TARGET = {96'b1,1'b0,11'h1b8}; //id:0x1b8
//    parameter TARGET = {96'b1,1'b0,12'b000011101101}; //id:0x06d id’†‚Éstaffbit‚ª‚ ‚é
//    parameter TARGET = {96'b1,1'b0,12'b000011110111}; //id:0x077	
	always @(posedge CLK) begin
	    if(~RESET) begin
	        ATTACK_STATE <= 1'b0;
		end else if(BUS_MSG == TARGET && ATTACK_PERMIT) begin
			ATTACK_STATE <= 1'b1;
		end	else if(~STATE) begin
			ATTACK_STATE <= 1'b0;
		end
	end
	
//	reg [1:0]BTN_reg;
	
//	always @(posedge CLK) begin
//        if(~RESET) begin
//            BTN_reg <= 2'b00;
//        end else begin
//            BTN_reg <= {BTN_reg[0],BTN};
//        end
//    end
    
//    reg per_attack;
    
//    always @(posedge CLK) begin
//        if(~RESET) begin
//            per_attack <= 1'b1;
//        end else if(BTN_reg == 2'b01) begin
//            per_attack <= ~per_attack;
//        end
//    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            TRIGER <= 1'b0;
        end else if(BUS_MSG == TARGET) begin
            TRIGER <= 1'b1;
        end else if(~STATE) begin
            TRIGER <= 1'b0;
        end
    end
	
endmodule
