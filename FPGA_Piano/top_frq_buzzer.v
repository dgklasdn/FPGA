`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 14:40:04
// Design Name: 
// Module Name: top_frq_buzzer
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


module top_frq_buzzer(clk, rst, octave, flat, buzz_out,sel);

input clk, rst, octave, flat;
input [6:0] sel;
output buzz_out;

wire clk_1MHz;

frq_div125 DIV125 (.clk(clk), .rst(rst), .clk_out(clk_1MHz));
buzzer BUZZER (.clk_1MHz(clk_1MHz), .octave(octave), .flat(flat), .buzz_out(buzz_out), .sel(sel),.rst(rst));

endmodule
