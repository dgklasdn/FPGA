`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 21:14:27
// Design Name: 
// Module Name: top_motor
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


module top_motor(clk, rst, motor, OUT_A, OUT_B, OUT_nA, OUT_nB);
 
   input clk; 
   input rst; 
   input motor; 
   output OUT_A, OUT_B,OUT_nA, OUT_nB;
   
   wire clk_1MHz; 
   wire clk_1KHz; 
   wire clk_250_100Hz; 
 
   frq_div125 DIV125(.clk(clk), .rst(rst), .clk_out(clk_1MHz)); 
   frq_div1000 DIV_1000(.clk(clk_1MHz), .rst(rst), .clk_out(clk_1KHz)); 
   frq_div4_10 DIV2_4(.clk(clk_1KHz), .rst(rst), .motor(motor), .clk_out(clk_250_100Hz)); 
   motor MOTOR (.clk(clk_250_100Hz), .rst(rst), .motor(motor), .OUT_A(OUT_A), .OUT_B(OUT_B), .OUT_nA(OUT_nA), .OUT_nB(OUT_nB));
endmodule
