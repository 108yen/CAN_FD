`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/10 16:15:07
// Design Name: 
// Module Name: COMMUNICATION_OBSERVATION
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: メッセージの送受信がエラーなく行えたか判別するモジュール
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module COMMUNICATION_OBSERVATION(CLK, RESET, ATTACK_STATE, CAN_SIGNAL_IN, SP_TRG, ACK_TRIGER, FAILURE, ATTACK_SUCCESS);
    
    input CLK;
    input RESET;
    input ATTACK_STATE;
    input CAN_SIGNAL_IN;
    input SP_TRG;
    input ACK_TRIGER;
    output reg FAILURE;       //異常があると1
    output reg ATTACK_SUCCESS;  //攻撃が成功すると1
    
    reg error;
    reg [1:0]can_signal_reg;
    reg [5:0]buffer;
    reg can_frame;  //can_frameが送信されている間は1
    reg [1:0]can_frame_reg;
    reg eof;    //ACK~EOFの終わりまで1
    reg [7:0]bit_count;
    reg [8:0]eof_buffer;
    reg attack_frame;
    reg accept_frame;
//    reg [1:0]attack_frame_reg;

    wire ack;

    ACK_JUDGE ack_judge(
        .CLK(CLK), 
        .RESET(RESET), 
        .CAN_SIGNAL_IN(CAN_SIGNAL_IN), 
        .ACK_TRIGER(ACK_TRIGER), 
        .ACK(ack)
        );
        
    always @(posedge CLK) begin
        if(~RESET) begin
            accept_frame <= 1'b0;
        end else if(can_frame_reg == 2'b01) begin
            accept_frame <= 1'b0;
        end else if(attack_frame && ack) begin
            accept_frame <= 1'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            ATTACK_SUCCESS <= 1'b0;
        end else if(attack_frame == 1'b0) begin
            ATTACK_SUCCESS <= 1'b0;
        end else if(attack_frame && can_frame_reg == 2'b01 && !FAILURE/* && accept_frame*/) begin //attackしてerrorが出てないなら
            ATTACK_SUCCESS <= 1'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            attack_frame <= 1'b0;
        end else if(can_frame_reg == 2'b01) begin   //次のフレームの始まり
            attack_frame <= 1'b0;
        end else if(ATTACK_STATE) begin
            attack_frame <= 1'b1;
        end
    end
    
    /*always @(posedge CLK) begin
        if(~RESET) begin
            attack_frame_reg <= 1'b00;
        end else begin
            attack_frame_reg <= {attack_frame_reg[0],attack_frame};
        end
    end*/
    
    always @(posedge CLK) begin
        if(~RESET) begin
            FAILURE <= 1'b0;
        end else if(can_frame_reg == 2'b01) begin
            FAILURE <= 1'b0;
        end else if(error == 1'b1) begin
            FAILURE <= 1'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            error <= 1'b0;
        end else if(can_frame_reg == 2'b01) begin
            error <= 1'b0;
        end else if(buffer == 6'b000000 && can_frame) begin  //普通にエラー
            error <= 1'b1;
//        end else if(can_frame_reg == 2'b01 && !accept_frame && attack_frame) begin
//        end else if(bit_count == 8'd8 && eof_buffer != 9'b101111111) begin //ACKが出た後エラー or ACKもエラーも出ない
        end else if(bit_count > 8'd1 && SP_TRG && ~CAN_SIGNAL_IN) begin
            error <= 1'b1;
        /*end else begin  //上記の以外の場合は正常
            error <= 1'b0;*/
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            can_frame_reg <= 2'b00;
        end else begin
            can_frame_reg <= {can_frame_reg[0],can_frame};
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            can_frame <= 1'b0;
        end else if(can_signal_reg == 2'b10) begin
            can_frame <= 1'b1;
        end else if((buffer == 6'b111111 && !eof) || buffer == 6'b000000) begin   //エラー終了
            can_frame <= 1'b0;
        end else if(bit_count == 8'd9) begin    //EOFの最後
            can_frame <= 1'b0;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            eof_buffer <= 9'b1;
        end else if(SP_TRG) begin
            eof_buffer <= {eof_buffer[7:0],CAN_SIGNAL_IN};
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            eof <= 1'b0;
        end else if(bit_count == 8'd9) begin
            eof <= 1'b0;
        end else if(ACK_TRIGER) begin
            eof <= 1'b1;
        end 
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            bit_count <= 8'b0;
        end else if(bit_count == 8'd9) begin
            bit_count <= 8'b0;
        end else if(eof && SP_TRG) begin
            bit_count <= bit_count + 8'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            can_signal_reg <= 2'b0; 
        end else begin 
            can_signal_reg <= {can_signal_reg[0],CAN_SIGNAL_IN};
        end
    end
    
    always @(posedge CLK) begin
	    if(~RESET) begin
	       buffer <= 6'b011111;
		end else if(SP_TRG) begin
            buffer <= {buffer[4:0],CAN_SIGNAL_IN};
		end	else if(buffer == 6'b111111 || buffer == 6'b000000) begin
			buffer <= 6'b011111;
		end
	end
    
endmodule
