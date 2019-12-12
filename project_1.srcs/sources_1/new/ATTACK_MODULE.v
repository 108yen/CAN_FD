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

module ATTACK_MODULE(CLK, RESET, ATTACK_STATE, INC_LENGTH, INC_LOC, TO_DOMINANT, TO_RECESSIVE, INC, DEBUG);
    input CLK;  //40MHz 25ns
    input RESET;
    input ATTACK_STATE;
    input [7:0]INC_LENGTH;
    input [7:0]INC_LOC;
    inout TO_DOMINANT = 1'b1;    //1����0�ւ̓d�ʍ�����
    inout TO_RECESSIVE = 1'b1;    //0����1�ւ̓d�ʍ�����
    output [31:0]INC;
    output DEBUG;
    
/*    //�ē����p
    wire [7:0]rsynAttackLength = 8'd8;
    wire [15:0]rsynAttackLocation = 16'd620; //�U���J�n�ʒu
    wire rsynAttackSig;
    //�r�b�g������p
    wire [7:0]attackLength = 8'd1 + INC_LENGTH;  //�U���M���̕�
    wire [15:0]attackLocation = 16'd655 + 16'd17 + {8'b0,INC_LOC}; //�U���J�n�ʒu
    wire attackSig;*/
    
    reg [15:0]counter;
    reg dominant;
    reg recessive;
    
    assign TO_DOMINANT = dominant;
    assign TO_RECESSIVE = recessive;
    assign INC = {16'b0,INC_LENGTH,INC_LOC};
    
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
            dominant <= 1;
            recessive <= 1;
        end else begin
            case(counter)
                //�ē���
                16'd615: begin
                    recessive <= 0;
                end
                16'd625/* - {8'b0, INC_LOC}*/: begin
                    recessive <= 1;
                end
                //1bit��
                /*16'd660: begin
                    dominant <= 0;
                end
                16'd669: begin
                    dominant <= 1;
                end*/
                16'd673/* - {8'b0, INC_LOC}*/: begin
                    dominant <= 0;
                end
                16'd679/* - {8'b0, INC_LOC}*/: begin
                    dominant <= 1;
                end
                //2bit��
                16'd695: begin
                    recessive <= 0;
                end
                16'd700: begin
                    recessive <= 1;
                end
                //�ē���
                16'd765: begin
                    recessive <= 0;
                end
                16'd782/* - {8'b0, INC_LOC}*/: begin
                    recessive <= 1;
                end
                //�ē���
                16'd815: begin
                    recessive <= 0;
                end
                16'd825: begin
                    recessive <= 1;
                end
                //�ē�������
                16'd830: begin
                    dominant <= 0;
                end
                16'd847: begin
                    dominant <= 1;
                end
                //3bit��
                16'd853: begin
                    dominant <= 0;
                end
                16'd862: begin
                    dominant <= 1;
                end
                //4bit��
                16'd873: begin
                    recessive <= 0;
                end
                16'd882: begin
                    recessive <= 1;
                end
                //5bit��
                16'd894/* + {8'b0, INC_LOC}*/: begin
                    dominant <= 0;
                end
                16'd904/* + {8'b0, INC_LOC} + {8'b0, INC_LENGTH}*/: begin
                    dominant <= 1;
                end
                //�ē����P�A
                16'd915: begin
                    dominant <= 0;
                end
                16'd925: begin
                    dominant <= 1;
                end
                //�ē���
                16'd944: begin
                    dominant <= 0;
                end
                16'd949: begin
                    dominant <= 1;
                end
                //6bit��
                16'd953/* + {8'b0, INC_LOC}*/: begin
                    dominant <= 0;
                end
                16'd962 - 16'd1/* + {8'b0, INC_LOC}*/: begin
                    dominant <= 1;
                end
                //7bit��
                16'd974 - 16'd1/* - {8'b0, INC_LOC}*/: begin
                    dominant <= 0;
                end
                16'd986/* - 16'd3 - {8'b0, INC_LOC} + {8'b0, INC_LENGTH}*/: begin
                    dominant <= 1;
                end/*
                //�ē���
                16'd980 + {8'b0, INC_LOC}: begin
                    recessive <= 0;
                end
                16'd985 + {8'b0, INC_LOC} + {8'b0, INC_LENGTH}: begin
                    recessive <= 1;
                end*/
                //8bit��
                16'd992 + 16'd0/* + {8'b0, INC_LOC}*/: begin
                    recessive <= 0;
                end
                16'd1002 + 16'd2/* + {8'b0, INC_LOC} + {8'b0, INC_LENGTH}*/: begin
                    recessive <= 1;
                end
                //�ē���
                16'd1035: begin
                    recessive <= 0;
                end
                16'd1045: begin
                    recessive <= 1;
                end
                //�ē����P�A
                16'd1053: begin
                    dominant <= 0;
                end
                16'd1063/* + {8'b0, INC_LOC}*/: begin
                    dominant <= 1;
                end
                //�ē���
                16'd1075: begin
                    recessive <= 0;
                end
                16'd1085: begin
                    recessive <= 1;
                end
                //�ē����P�A
                16'd1115: begin
                    dominant <= 0;
                end
                16'd1125: begin
                    dominant <= 1;
                end
                //9bit��
                16'd1157/* - {8'b0, INC_LOC}*/: begin
                    dominant <= 0;
                end
                16'd1168/* - {8'b0, INC_LOC}*/: begin
                    dominant <= 1;
                end
                //�ē����P�A
                16'd1175: begin
                    recessive <= 0;
                end
                16'd1185: begin
                    recessive <= 1;
                end
                16'd1195: begin
                    dominant <= 0;
                end
                16'd1205: begin
                    dominant <= 1;
                end
                //ack
                /*16'd1281: begin
                    dominant <= 0;
                end
                16'd1371: begin
                    dominant <= 1;
                end*/
            endcase
        end
    end
        
endmodule
