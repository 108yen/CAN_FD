`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/07 14:11:04
// Design Name: 
// Module Name: BTN_CONTROLLER
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


module BTN_CONTROLLER(CLK, RESET, BTN_0, BTN_1, BTN_2, BTN_0_COUNTER, BTN_1_COUNTER);
    input CLK;
    input RESET;
    input BTN_0;
    input BTN_1;
    input BTN_2;
    output reg [7:0]BTN_0_COUNTER;
    output reg [7:0]BTN_1_COUNTER;
    
    reg [1:0]BTN_0_reg;
    reg [1:0]BTN_1_reg;
    reg [1:0]BTN_2_reg;
    
    always @(posedge CLK) begin
        if(~RESET) begin
            BTN_0_reg <= 2'b00;
        end else begin
            BTN_0_reg <= {BTN_0_reg[0],BTN_0};
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            BTN_0_COUNTER <= 0;
        end else if(BTN_0_reg == 2'b01) begin
            BTN_0_COUNTER <= BTN_0_COUNTER + 1;
        end else if(BTN_2_reg == 2'b01) begin
            BTN_0_COUNTER <= 0;            
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            BTN_1_reg <= 2'b00;
        end else begin
            BTN_1_reg <= {BTN_1_reg[0],BTN_1};
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            BTN_1_COUNTER <= 1'b1;
        end else if(BTN_1_reg == 2'b01) begin
            BTN_1_COUNTER <= BTN_1_COUNTER + 1;
        end else if(BTN_2_reg == 2'b01) begin
            BTN_1_COUNTER <= 0;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            BTN_2_reg <= 2'b00;
        end else begin
            BTN_2_reg <= {BTN_2_reg[0],BTN_2};
        end
    end
    
endmodule
