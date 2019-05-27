`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/14 18:26:46
// Design Name: 
// Module Name: ACK_JUDGE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: ACKが出力されたらack=1
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ACK_JUDGE(CLK, RESET, CAN_SIGNAL_IN, ACK_TRIGER, ACK);
    
    input CLK;
    input RESET;
    input CAN_SIGNAL_IN;
    input ACK_TRIGER;
    output reg ACK;
    
    reg ex_count;
    reg [7:0]counter;
    reg [1:0]can_signal_reg;
    
    wire ack_length;    //ackの長さとして許容するはんい　1カウント25ns 1bit=80カウント
    assign ack_length = counter >= 8'd70 && counter <= 8'd90;
    
    always @(posedge CLK) begin
        if(~RESET) begin
            ACK <= 1'b0;
        end else if(ACK) begin
            ACK <= 1'b0;
        end else if(can_signal_reg == 2'b01 && ack_length ) begin
            ACK <= 1'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            counter <= 8'b0;
        end else if(~ex_count) begin
            counter <= 8'b0;
        end else if(ex_count) begin
            counter <= counter + 8'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            ex_count <= 1'b0;
        end else if(can_signal_reg == 2'b01) begin
            ex_count <= 1'b0;
        end else if(ACK_TRIGER && can_signal_reg == 2'b10) begin
            ex_count <= 1'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            can_signal_reg <= 2'b11;
        end else begin
            can_signal_reg <= {can_signal_reg[0],CAN_SIGNAL_IN};
        end
    end
    
endmodule
