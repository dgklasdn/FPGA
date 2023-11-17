`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 18:47:36
// Design Name: 
// Module Name: top_piano
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


module top_piano(rst, flat, sel, fnd_tone, fnd_flat, clk, octave, buzz_out, fnd_octave, motor, OUT_A, OUT_B,OUT_nA, OUT_nB);

input clk, rst, flat, octave, motor;
input [6:0] sel;

output [6:0] fnd_tone;
output [6:0] fnd_flat;
output buzz_out, fnd_octave, OUT_A, OUT_B,OUT_nA, OUT_nB;

wire clk_1MHz;

top_frq_buzzer (.clk(clk), .rst(rst), .octave(octave), .flat(flat), .buzz_out(buzz_out), .sel(sel));
top_fnd FND (.rst(rst), .flat(flat), .sel(sel), .octave(octave), .fnd_tone(fnd_tone), .fnd_flat(fnd_flat), .fnd_octave(fnd_octave));
top_motor TOP_MOTOR(.clk(clk), .rst(rst), .motor(motor), .OUT_A(OUT_A), .OUT_B(OUT_B), .OUT_nA(OUT_nA), .OUT_nB(OUT_nB));

endmodule
