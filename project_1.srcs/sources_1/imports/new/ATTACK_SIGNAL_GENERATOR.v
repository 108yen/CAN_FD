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
//	tBIT(送信)|__Sync_|______＿____PropSeg____________|__________PS1__________________________|______________________________PS2______________|__
//			   _______ __________________________________________________________________________________________________________________________
//	tBIT(受信)|__Sync_|______＿____PropSeg____________|__________PS1__________________________________|______________________PS2______________|__
//			   ________________________________________________________________________________________________________________________________
//	tTQ		__|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|_______|
//			  |                                                                       |       |                                               |                 
//	CANBIT	->|<----------------------------------------------------------------------A-------A---------------------------------------------->|<----------------
//			                                               (Sample)                  送信    受信                   

module ATTACK_SIGNAL_GENERATOR(CLK, RESET, COUNTER, ATTACK_LEN, ATTACK_LOC, ATTACK_SIG, DEBUG);
    input CLK;  //40MHz 25ns
    input RESET;
    input [15:0]COUNTER;
    input [7:0]ATTACK_LEN;
    input [15:0]ATTACK_LOC;
    output ATTACK_SIG;
    output DEBUG;
    
    reg [7:0]attackCounter;
    reg condAttack;
    wire attack;
    
    assign ATTACK_SIG = ~condAttack;
    assign DEBUG = condAttack;
    assign attack = COUNTER==ATTACK_LOC;
       
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
        end else if(attackCounter == ATTACK_LEN) begin
            condAttack <= 0;
        end 
    end
        
endmodule
