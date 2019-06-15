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

    reg [15:0]counter;

	always @(posedge CLK) begin
	    if(~RESET) begin
	        ATTACK_STATE <= 1'b0;
		end else if(BUS_MSG == TARGET && ATTACK_PERMIT) begin
			ATTACK_STATE <= 1'b1;
		end	else if(counter == 16'd3200) begin
			ATTACK_STATE <= 1'b0;
		end
	end
	
	always @(posedge CLK) begin
	    if(~RESET) begin
	        counter <= 0;
        end else if(counter == 16'd3200) begin
            counter <= 0;
        end else if(counter != 0 || ATTACK_STATE) begin
            counter <= counter + 1;
	    end
	end
	  
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
