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
	
    reg [7:0]msg_bit;   //���b�Z�[�W�̉��r�b�g�ڂ�
    reg [7:0]df_l; //�f�[�^�t�B�[���h�̒���
    reg [7:0]msg_l; //���b�Z�[�W�̒��� SOF����CRCDelimiter
    reg [3:0]sf_counter;    //stuffbit�J�E���^�[
    reg [7:0]sf_num;       //sf�̌�
    reg [3:0]dlc;      //dlc�p
	
	initial begin
	   ACK_TRIGER = 0;
	   msg_bit = 0;
	   df_l = 0;
	   msg_l = 0;
	   sf_counter = 0;
	   sf_num = 0;
	   dlc = 0;
	end
	
//  ���b�Z�[�W�r�b�g�̃J�E���g
    always @(posedge CLK) begin
        if(~RESET) begin
            msg_bit <= 8'b0;
        end else if(~STATE) begin
            msg_bit <= 8'b0;
        end else if(SP_TRG) begin
            msg_bit <= msg_bit + 8'b1;
        end
    end

//    ACK��������
    always @(posedge CLK) begin
        if(~RESET) begin
            ACK_TRIGER <= 1'b0;
        end else if(~STATE) begin
            ACK_TRIGER <= 1'b0;
        end else if(msg_bit == msg_l + sf_num && msg_l != 8'b0) begin //ACK�̂܂��܂ŗ�����(CRC Delimiter)
            ACK_TRIGER <= 1'b1;
        end else if(SP_TRG && ACK_TRIGER) begin  //���b�Z�[�W�̎�M�J�n
            ACK_TRIGER <= 1'b0;
        end
    end
    
//    DLC�̓ǂݍ���
    always @(posedge CLK) begin
        if(~RESET) begin
            dlc <= 4'b0;
        end else if(~STATE) begin
            dlc <= 4'b0;
        end else if(SP_TRG) begin
            if(sf_counter == 4) begin   //�X�^�b�t�r�b�g�͓���Ȃ�
                dlc <= {dlc[3:1],CAN_SIGNAL_IN};
            end else begin
                dlc <= {dlc[3:0],CAN_SIGNAL_IN};
            end
        end
    end
    
//    DLC����DataFlame�̒������擾����
    always @(posedge CLK) begin
        if(~RESET) begin
            df_l <= 8'b0;
        end else if(~STATE) begin
            df_l <= 8'b0;
        end else if(msg_bit == (8'd19 + sf_num) && SP_TRG) begin  //Controlfield�܂Ŏ�M�ł��Ă���Ȃ�
            if({dlc[3],dlc[2],dlc[1],dlc[0]} <= 4'd8) begin
                df_l <= {4'b0,dlc[3],dlc[2],dlc[1],dlc[0]}; //dlc[3]�`Bdlc[0]��DLC
            end else begin
                df_l <= 8'd8;
            end
        end else if(df_l != 8'b0) begin
            df_l <= 8'b0;
        end
    end
    
//    ���b�Z�[�W�̒����̌v�Z
    always @(posedge CLK) begin
        if(~RESET) begin
            msg_l <= 8'b0;
        end else if(~STATE) begin
            msg_l <= 8'b0;
        end else if(df_l != 8'b0) begin
            msg_l <= 8'd35 + df_l * 8'd8;
        end
    end
    
 // �X�^�b�t�r�b�g�̃J�E���g   
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
