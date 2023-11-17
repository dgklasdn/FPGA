`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 18:41:28
// Design Name: 
// Module Name: fnd_flat
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


module fnd_flat(rst, flat, sel, fnd_flat);

input rst, flat;  
input [3:0] sel; 
output [6:0] fnd_flat; 
 
reg [6:0] fnd_flat;  

    always @ (rst or sel or flat or fnd_flat) begin  
           if(rst == 1) begin  
               if(flat == 0) begin  
                   fnd_flat = 7'b1000000; //-  
                   end  
                else begin // rst = 1, flat = 1 
                    //rst = 1, flat = 1, tone = 0 
                        case (sel)  
                        7'b1000000 : fnd_flat = 7'b0111001; //C   
                        7'b0100000 : fnd_flat = 7'b0111111; //D   
                        7'b0010000 : fnd_flat = 7'b1111001; //E   
                        7'b0001000 : fnd_flat = 7'b1110001; //F 
                        7'b0000100 : fnd_flat = 7'b1111101; //G   
                        7'b0000010 : fnd_flat = 7'b1110111; //A 
                        7'b0000001 : fnd_flat = 7'b1111111; //B  
                        7'b0000000 : fnd_flat = 7'b1000000; //-  
                        endcase 
                    end  
                end      
             else begin 
                fnd_flat = 0; //- 
             end     
         end  
endmodule