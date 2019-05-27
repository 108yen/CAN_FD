`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/20 18:21:39
// Design Name: 
// Module Name: STATE_DECTATER
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

//メッセージの始まりでSTATE=1
module STATE_DETECTOR(CLK, RESET, CAN_SIGNAL_IN, SP_TRG, STATE);
	input CLK;
	input RESET;
	input CAN_SIGNAL_IN;
	input SP_TRG;
	output reg STATE;
	
	reg [1:0] can_signal_reg;
	reg [5:0] buffer;
	
	always @(posedge CLK) begin
	    if(~RESET) begin
            STATE <= 1'b0;
        end else if(can_signal_reg == 2'b10) begin
			STATE <= 1'b1;
		end	else if(buffer == 6'b111111 || buffer == 6'b000000) begin
			STATE <= 1'b0;
		end
 	end
	
	always @(posedge CLK) begin
        if(~RESET) begin
            can_signal_reg <= 2'b0;
		end else if(~STATE) begin
			can_signal_reg <= {can_signal_reg[0],CAN_SIGNAL_IN};
		end	else if(STATE) begin
			can_signal_reg <= 2'b0;
		end
	end
	
	always @(posedge CLK) begin
	    if(~RESET) begin
	       buffer <= 6'b011111;
		end else if(STATE) begin
            if(SP_TRG) begin
				buffer <= {buffer[4:0],CAN_SIGNAL_IN};
			end
		end	else if(buffer == 6'b111111 || buffer == 6'b000000) begin
			buffer <= 6'b011111;
		end
	end

endmodule
