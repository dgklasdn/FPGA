`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 21:13:23
// Design Name: 
// Module Name: frq_div2_4
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


module frq_div4_10(clk, rst, motor, clk_out);

    input clk; 
    input rst; 
    input motor; 
    output clk_out; 
    reg  [2:0] cnt; 
    reg clk_out; 


    always @(posedge clk or negedge rst) begin 
        if (rst == 0) begin 
            cnt <= 0; 
            clk_out <= 0; 
         end else begin // rst = 1 
             if (motor == 0) begin // 10분주기 
                if (cnt == 4) begin 
                    cnt <= 0; 
                    clk_out <= ~clk_out; 
                    end 
                else 
                     cnt <= cnt + 1; 
                     end 
             else 
                if (cnt == 1) begin //4분주기
                    cnt <= 0; 
                    clk_out <= ~clk_out; 
                    end 
                else 
                    cnt <= cnt + 1;  
                 end   
             end   
    endmodule