`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:51 02/23/2015 
// Design Name: 
// Module Name:    BUS_MSG_OBSERVER 
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
module BUS_MSG_OBSERVER(CLK, RESET, STATE, CAN_SIGNAL_IN, SP_TRG, BUS_MSG);
	input	CLK;
	input   RESET;
	input	STATE;
	input	CAN_SIGNAL_IN;
	input	SP_TRG;
	output reg [107:0]BUS_MSG;
	
	initial begin
	   BUS_MSG = 1;
	end
	
//	メッセージ受信
	always @(posedge CLK) begin
	   if(~RESET) begin
	       BUS_MSG <= 108'b1;
	   end else if(~STATE) begin
	       BUS_MSG <= 108'b1;
	   end else if(SP_TRG) begin
	       BUS_MSG <= {BUS_MSG[106:0],CAN_SIGNAL_IN};
	   end
	end	
endmodule
