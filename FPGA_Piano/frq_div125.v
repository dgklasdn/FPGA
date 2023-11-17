`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 14:38:19
// Design Name: 
// Module Name: frq_div125
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


module frq_div125(clk, rst, clk_out);

    input clk; 
    input rst; 
    
    output clk_out; 
    
    reg  [7:0] cnt; 
  
    assign clk_out= (cnt  < 62) ? 0 : 1; 

    always @(posedge clk or negedge rst) begin 
    if (rst == 0) begin 
        cnt  <= 0; 
    end 
    else begin 
        if (cnt== 124) 
            cnt <= 0; 
        else cnt <= cnt + 1; 
    end 
end 
endmodule
