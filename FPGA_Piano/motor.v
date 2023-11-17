`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 21:13:50
// Design Name: 
// Module Name: motor
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


module motor(clk, rst, motor, OUT_A, OUT_B, OUT_nA, OUT_nB);
   input clk; 
   input rst; 
   input motor; 
   
   output OUT_A; 
   output OUT_B; 
   output OUT_nA; 
   output OUT_nB; 
   
   reg [1:0] m_cnt; 
   reg [3:0] m_pulse; 
   
   always @(posedge clk  or negedge rst) begin 
       if (rst == 1'b0) begin 
           m_cnt <= 0; 
       end 
       else begin 
        if (motor == 0) begin
           m_cnt <= m_cnt + 1; 
       end 
       else begin
           m_cnt <= m_cnt + 1;
       end 
   end
end
    
   always @(m_cnt) begin 
       if(rst == 1'b0) begin 
           m_pulse <= 4'b1001; 
       end 
       else begin 
           case(m_cnt) 
               2'b00 : m_pulse <= 4'b0011; 
               2'b01 : m_pulse <= 4'b0110; 
               2'b10 : m_pulse <= 4'b1100; 
               2'b11 : m_pulse <= 4'b1001; 
           endcase 
       end 
   end 
       assign OUT_A = m_pulse[0]; 
       assign OUT_B = m_pulse[1]; 
       assign OUT_nA = m_pulse[2]; 
       assign OUT_nB = m_pulse[3];
endmodule