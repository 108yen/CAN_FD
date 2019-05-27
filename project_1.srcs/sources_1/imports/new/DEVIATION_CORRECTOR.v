`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/10 23:35:05
// Design Name: 
// Module Name: DEVIATION_CORRECTOR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: Œë·C³
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DEVIATION_CORRECTOR(CLK, RESET, ATTACK_STATE, FAILURE, ATTACK_SUCCESS, DEVIATION, OUT_SUCCESS_RATE, SEARCH_NUM, OUT_STATE);

    input CLK;
    input RESET;
    input ATTACK_STATE;
    input FAILURE;
    input ATTACK_SUCCESS;
    output [479:0]DEVIATION;
    output [31:0]OUT_SUCCESS_RATE;
    output reg [31:0]SEARCH_NUM;
    output [2:0]OUT_STATE;
    
//    parameter TAMPER_NUM = 8'd8;
    parameter TAMPER_NUM = 8'd11;
    parameter PATTERN = 8'd8;
    parameter LIMIT = 16'd10;   //UŒ‚¬Œ÷Šm—¦‚Ì‰ºŒÀ@‚±‚ê‚ð‰º‰ñ‚é‚Æ’TõÄŠJi1000”gŒ`’†j
    parameter EXIT_CONDITION = 8'd2;
    
    reg [7:0] array[59:0];
    reg [1:0]failure_reg;
    reg search;
    reg fin_search;
    reg [7:0]num;
    reg [15:0]success_rate_reg;
    reg [15:0]count;
    integer i;
//    genvar j;

    wire fin_count;
    wire achieved;
    wire not_achieved;
    wire [15:0]success_rate;
    wire all_searched;

    assign achieved = success_rate > LIMIT && fin_count;
    assign not_achieved = success_rate <= LIMIT && fin_count;
    assign all_searched = array[0] == 8'd1;
    assign OUT_SUCCESS_RATE = {count,success_rate_reg};
//    assign OUT_SUCCESS_RATE = {success_probability.success_count,array[0],array[2]};
    assign OUT_STATE = {all_searched, search, fin_search};
    
    always @(posedge CLK) begin
        if(~RESET) begin
            success_rate_reg <= 0;
            count <= 0;
        end else if(fin_count) begin
//            success_rate_reg <= success_rate;
            success_rate_reg <= {success_rate[11:0],2'b0,achieved,not_achieved};
            count <= count + 1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            for(i = 0; i < 60; i = i + 1) begin
                array[i] <= 8'b0;
            end
            SEARCH_NUM <= 0;
        end else if(failure_reg == 2'b10 && search) begin  //’Tõ   ‰ü‚´‚ñ–ˆ
            inc_array(8'b0);
            SEARCH_NUM <= SEARCH_NUM + 1;
        end
    end
    
    task automatic inc_array(input [7:0]j);
        if(j == TAMPER_NUM - 1) begin
            array[TAMPER_NUM - 1 - j] <= array[TAMPER_NUM - 1 - j] + 1;
        end else if(array[TAMPER_NUM - 1 - j] == PATTERN) begin
            array[TAMPER_NUM - 1 - j] <= 0;
            inc_array((j + 1));
        end else begin
            array[TAMPER_NUM - 1 - j] <= array[TAMPER_NUM - 1 - j] + 1;
        end
    endtask
    
    always @(posedge CLK) begin
        if(~RESET) begin
            search <= 1'b1;
        end else if(fin_search) begin
            search <= 1'b0;
        end else if(all_searched) begin
            search <= 1'b0;
        end else if(not_achieved) begin
            search <= 1'b1;
        end else if(ATTACK_SUCCESS) begin
            search <= 1'b0;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            fin_search <= 1'b0;
        end else if(num == EXIT_CONDITION) begin
            fin_search <= 1'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            num <= 8'b0;
        end else if(not_achieved || fin_search) begin
            num <= 8'b0;
        end else if(achieved) begin
            num <= num + 8'b1;
        end
    end
    
    always @(posedge CLK) begin
        if(~RESET) begin
            failure_reg <= 2'b00;
        end else begin
            failure_reg <= {failure_reg[0],FAILURE};
        end
    end
    
    SUCCESS_PROBABILITY success_probability(
        .CLK(CLK), 
        .RESET(RESET), 
        .ATTACK_STATE(ATTACK_STATE), 
        .ATTACK_SUCCESS(ATTACK_SUCCESS), 
        .SEARCH(search),
        .SUCCESS_RATE(success_rate),
        .FIN_COUNT(fin_count)
        );
    
    /*for(j=0; j<60; j=j+1) begin
        assign DEVIATION[(((j+1)*8)-1):(j*8)] = array[59-j];
    end*/
    
    assign DEVIATION[479:0] = {
        array[0],
        array[1],
        array[2],
        array[3],
        array[4],
        array[5],
        array[6],
        array[7],
        array[8],
        array[9],
        array[10],
        array[11],
        array[12],
        array[13],
        array[14],
        array[15],
        array[16],
        array[17],
        array[18],
        array[19],
        array[20],
        array[21],
        array[22],
        array[23],
        array[24],
        array[25],
        array[26],
        array[27],
        array[28],
        array[29],
        array[30],
        array[31],
        array[32],
        array[33],
        array[34],
        array[35],
        array[36],
        array[37],
        array[38],
        array[39],
        array[40],
        array[41],
        array[42],
        array[43],
        array[44],
        array[45],
        array[46],
        array[47],
        array[48],
        array[49],
        array[50],
        array[51],
        array[52],
        array[53],
        array[54],
        array[55],
        array[56],
        array[57],
        array[58],
        array[59]
        };
    
endmodule
