`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/19 20:27:28
// Design Name: 
// Module Name: test
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

//			   _0_     _1_     _2_     _3_     _4_     _5_     _6_     _7_     _8_     _9_     _10_    _11_    _12_    _13_    _14_    _15_
//	TBRPCLK	__|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___| 
//			   _______ __________________________________________________________________________________________________________________________        
//	tBIT(���M)|__Sync_|______�Q____PropSeg____________|__________PS1__________________________|______________________________PS2______________|__
//			   _______ __________________________________________________________________________________________________________________________
//	tBIT(��M)|__Sync_|______�Q____PropSeg____________|__________PS1__________________________________|______________________PS2______________|__
//			   ________________________________________________________________________________________________________________________________
//	tTQ		__|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
//			  |                                                                       |       |                                               |                 
//	CANBIT	->|<----------------------------------------------------------------------A-------A---------------------------------------------->|<----------------
//			                                               (Sample)                  ���M    ��M                   

module ATTACK_SIGNAL_GENERATOR(CLK, RESET, ATTACK_STATE, INC_LENGTH, INC_LOC, TO_DOMINANT, TO_RECESSIVE, DEBUG);
    input CLK;  //40MHz 25ns
    input RESET;
    input ATTACK_STATE;
    input [7:0]INC_LENGTH;
    input [7:0]INC_LOC;
    inout TO_DOMINANT = 1'b1;    //1����0�ւ̓d�ʍ�����
    inout TO_RECESSIVE = 1'b1;    //0����1�ւ̓d�ʍ�����
    output DEBUG;
    
    wire [7:0]attackLength = 8'd1 + INC_LENGTH;  //�U���M���̕�
    wire [15:0]attackLocation = 16'd655 + {8'b0,INC_LOC}; //�U���J�n�ʒu
    
    reg [15:0]counter;
    reg [7:0]attackCounter;
    reg condAttack;
    wire attack;
    
    assign attack = counter==attackLocation;
    assign TO_DOMINANT = ~condAttack;
//    assign TO_RECESSIVE = ~condAttack;
    assign DEBUG = condAttack;
    
    always @(posedge CLK) begin
        if(~RESET) begin
            counter <= 0;
        end else if(ATTACK_STATE) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end 
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            attackCounter <= 0;
        end else if(condAttack) begin
            attackCounter <= attackCounter + 1;
        end else begin
            attackCounter <= 0;
        end 
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            condAttack <= 0;
        end else if(attack) begin
            condAttack <= 1;
        end else if(attackCounter == attackLength) begin
            condAttack <= 0;
        end 
    end
        
endmodule
