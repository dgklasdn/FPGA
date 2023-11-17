`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 18:42:18
// Design Name: 
// Module Name: top_fnd
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


module top_fnd(rst, flat, sel, fnd_tone, fnd_flat, octave, fnd_octave);

    input rst, flat,  octave; 
    input [3:0] sel; 
    output [6:0] fnd_tone; 
    output [6:0] fnd_flat; 
    output fnd_octave;
    
    fnd_tone Fnd_tone (.rst(rst), .sel(sel), .octave(octave), .fnd_tone(fnd_tone), .fnd_octave(fnd_octave)); 
    fnd_flat Fnd_flat (.rst(rst), .flat(flat), .sel(sel), .fnd_flat(fnd_flat)); 
    
endmodule
