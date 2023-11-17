`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 18:40:20
// Design Name: 
// Module Name: fnd_tone
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

module fnd_tone(rst, sel, octave, fnd_octave, fnd_tone);

input rst, octave;  
input [6:0] sel; 

output [6:0] fnd_tone; 
output fnd_octave;

assign octave = fnd_octave;

reg [6:0] fnd_tone;  
 
    always @ (rst or sel or fnd_tone) begin  
          if(rst == 1) begin   
                   case (sel)  
                   7'b1000000 : fnd_tone = 7'b0111001; //C   
                   7'b0100000 : fnd_tone = 7'b0111111; //D   
                   7'b0010000 : fnd_tone = 7'b1111001; //E   
                   7'b0001000 : fnd_tone = 7'b1110001; //F 
                   7'b0000100 : fnd_tone = 7'b1111101; //G   
                   7'b0000010 : fnd_tone = 7'b1110111; //A 
                   7'b0000001 : fnd_tone = 7'b1111111; //B  
                   7'b0000000 : fnd_tone = 7'b1000000; //-  
                   endcase end      
            else begin
            fnd_tone = 0; //-   
        end
    end 
endmodule