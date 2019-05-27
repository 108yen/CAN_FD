`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 16:09:23
// Design Name: 
// Module Name: TIMING_CONTROLLER
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


module TIMING_CONTROLLER(CLK, RESET, STATE, SP_TRG);
	input CLK;
	input RESET;
	input STATE;
	output reg SP_TRG;

	reg [10:0]timing_reg;
	
	always @(posedge CLK) begin
		if(~RESET) begin
			timing_reg <= 10'd0;
		end
		else if(STATE) begin
			if(timing_reg == 10'd79) begin
				timing_reg <= 10'd0;
			end
			else begin
				timing_reg <= timing_reg + 10'd1;
			end
		end
		else if(~STATE) begin
			timing_reg <= 10'd0;
		end
	end
	
	always @(posedge CLK) begin
		if(~RESET) begin
			SP_TRG <= 1'b0;
		end
		else if(timing_reg == 10'd50) begin
			SP_TRG <= 1'b1;
		end
		else if(SP_TRG) begin
			SP_TRG <= 1'b0;
		end
	end
endmodule
