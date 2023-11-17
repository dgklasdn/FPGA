`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 21:12:38
// Design Name: 
// Module Name: frq_div1000
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


module frq_div1000(clk, rst, clk_out);

   input clk; 
   input rst; 
   output clk_out; 
   reg [8:0] cnt; 
   reg clk_out; 
    
   always @(posedge clk or negedge rst) begin 
       if (rst == 0) begin 
           cnt <= 0; 
           clk_out <= 0; 
        end else begin 
           if (cnt == 499) begin 
               cnt <= 0; 
               clk_out <= ~clk_out; 
           end else 
               cnt <= cnt + 1; 
       end 
   end 
endmodule