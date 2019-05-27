`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/10 20:23:13
// Design Name: 
// Module Name: ACK_DETECTOR
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


module ACK_DETECTOR(CLK, RESET, STATE, CAN_SIGNAL_IN, SP_TRG, BUS_MSG, ACK_TRIGER);
	input	CLK;
	input   RESET;
	input	STATE;
	input	CAN_SIGNAL_IN;
	input	SP_TRG;
	input   [107:0] BUS_MSG;
	output reg ACK_TRIGER;
	
    reg [7:0]msg_bit;   //メッセージの何ビット目か
    reg [7:0]df_l; //データフィールドの長さ
    reg [7:0]msg_l; //メッセージの長さ SOFからCRCDelimiter
    reg [3:0]sf_counter;    //stuffbitカウンター
    reg [7:0]sf_num;       //sfの個数
    reg [3:0]dlc;      //dlc用
	
	initial begin
	   ACK_TRIGER = 0;
	   msg_bit = 0;
	   df_l = 0;
	   msg_l = 0;
	   sf_counter = 0;
	   sf_num = 0;
	   dlc = 0;
	end
	
//  メッセージビットのカウント
    always @(posedge CLK) begin
        if(~RESET) begin
            msg_bit <= 8'b0;
        end else if(~STATE) begin
            msg_bit <= 8'b0;
        end else if(SP_TRG) begin
            msg_bit <= msg_bit + 8'b1;
        end
    end

//    ACKを見つける
    always @(posedge CLK) begin
        if(~RESET) begin
            ACK_TRIGER <= 1'b0;
        end else if(~STATE) begin
            ACK_TRIGER <= 1'b0;
        end else if(msg_bit == msg_l + sf_num && msg_l != 8'b0) begin //ACKのまえまで来たら(CRC Delimiter)
            ACK_TRIGER <= 1'b1;
        end else if(SP_TRG && ACK_TRIGER) begin  //メッセージの受信開始
            ACK_TRIGER <= 1'b0;
        end
    end
    
//    DLCの読み込み
    always @(posedge CLK) begin
        if(~RESET) begin
            dlc <= 4'b0;
        end else if(~STATE) begin
            dlc <= 4'b0;
        end else if(SP_TRG) begin
            if(sf_counter == 4) begin   //スタッフビットは入れない
                dlc <= {dlc[3:1],CAN_SIGNAL_IN};
            end else begin
                dlc <= {dlc[3:0],CAN_SIGNAL_IN};
            end
        end
    end
    
//    DLCからDataFlameの長さを取得する
    always @(posedge CLK) begin
        if(~RESET) begin
            df_l <= 8'b0;
        end else if(~STATE) begin
            df_l <= 8'b0;
        end else if(msg_bit == (8'd19 + sf_num) && SP_TRG) begin  //Controlfieldまで受信できているなら
            if({dlc[3],dlc[2],dlc[1],dlc[0]} <= 4'd8) begin
                df_l <= {4'b0,dlc[3],dlc[2],dlc[1],dlc[0]}; //dlc[3]～Bdlc[0]がDLC
            end else begin
                df_l <= 8'd8;
            end
        end else if(df_l != 8'b0) begin
            df_l <= 8'b0;
        end
    end
    
//    メッセージの長さの計算
    always @(posedge CLK) begin
        if(~RESET) begin
            msg_l <= 8'b0;
        end else if(~STATE) begin
            msg_l <= 8'b0;
        end else if(df_l != 8'b0) begin
            msg_l <= 8'd35 + df_l * 8'd8;
        end
    end
    
 // スタッフビットのカウント   
    always @(posedge CLK) begin 
        if(~RESET) begin
            sf_counter <= 4'b0;
        end else if(~STATE) begin
            sf_counter <= 4'b0;
        end else if(sf_counter == 4'd4 && SP_TRG) begin
            sf_counter <= 4'b0;
        end else if(SP_TRG) begin
            if(BUS_MSG[0] == BUS_MSG[1]) begin
                sf_counter <= sf_counter + 4'b1;
            end else begin
                sf_counter <= 4'b0;
            end
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            sf_num <= 8'b0;
        end else if(~STATE) begin
            sf_num <= 8'b0;
        end else if(sf_counter == 4'd4 && SP_TRG) begin
            sf_num <= sf_num + 8'b1;
        end
    end
endmodule
