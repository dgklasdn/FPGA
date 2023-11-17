`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 14:35:03
// Design Name: 
// Module Name: buzzer
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


module buzzer(clk_1MHz, flat, octave, buzz_out, sel, rst); 

input clk_1MHz, flat, rst, octave; 
input [6:0] sel; 
output buzz_out; 
 
reg [17:0] cnt;
reg buzz_out;
 
  always @(posedge clk_1MHz or negedge rst) begin 
    if (rst == 0) begin 
        cnt <= 0; 
        buzz_out <= 0; 
     end  
     else begin  // rst = 1
           if (octave == 0) begin
                if (flat == 0) begin
                   if (sel == 7'b1000000) begin// 도, 7644분주기
                       if (cnt == 3822) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                       cnt <= cnt+1;
                   end  
                   if (sel == 7'b0100000) begin// 레, 6808분주기 
                       if (cnt == 3404) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                       cnt <= cnt+1;
                end
                     if (sel == 7'b0010000) begin// 미, 6066분주기 
                      if (cnt == 3033) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                      end else                                 
                      cnt <= cnt+1;
                 end
                  if (sel == 'b0001000) begin// 파, 5724분주기 
                      if (cnt == 2862) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                        cnt <= cnt+1;
                   end
               if (sel == 7'b0000100) begin// 솔, 5100분주기 
                       if (cnt == 2550) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out;  
                        end else 
                        cnt <= cnt+1;
                     end   
                if (sel == 7'b0000010) begin// 라, 4544분주기 
                          if (cnt == 2272) begin 
                              cnt <= 0; 
                              buzz_out <= ~buzz_out; 
                          end else 
                              cnt <= cnt+1;
                      end
                  if (sel == 7'b0000001) begin// 시, 4048분주기
                          if (cnt == 2024) begin 
                               cnt <= 0; 
                                buzz_out <= ~buzz_out; 
                           end else 
                              cnt <= cnt+1;
                       end
                   end
          else if (flat == 1) begin
                 if (sel == 7'b0100000) begin// 도# = 레b, 7216분주기
                    if (cnt == 3607) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                    end  
                if (sel == 7'b0010000) begin// 레# = 미b, 6428분주기
                    if (cnt == 3213) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                     end 
                if (sel == 7'b0000100) begin// 파# = 솔b를 출력, 5406분주기 
                    if (cnt == 2702) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out;  
                    end else 
                        cnt <= cnt+1;
                    end   
                if (sel == 7'b0000010) begin// 솔# = 라b를 출력, 4816분주기
                    if (cnt == 2407) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                    end
                if (sel == 7'b0000001) begin// 라# = 시b를 출력, 4290분주기
                    if (cnt == 2145) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                    end
                end 
            end
       else if (octave == 1) begin
                if (flat == 0) begin // 플랫X
                    if (sel == 7'b1000000) begin// 1도, 3822분주기
                        if (cnt == 1910) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out; 
                        end else 
                            cnt <= cnt+1;
                        end  
                    if (sel == 7'b0100000) begin// 1레, 3404분주기 
                        if (cnt == 1701) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out; 
                        end else 
                            cnt <= cnt+1;
                        end
                    if (sel == 7'b0010000) begin// 미, 3032분주기 
                        if (cnt == 1515) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out; 
                       end else                                 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0001000) begin// 파, 2862분주기 
                       if (cnt == 1430) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000100) begin// 솔, 2550분주기 
                       if (cnt == 1274) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out;  
                       end else 
                           cnt <= cnt+1;
                       end   
                   if (sel == 7'b0000010) begin// 라, 2272분주기 
                       if (cnt == 1135) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000001) begin// 시, 2024분주기
                       if (cnt == 1011) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   end
               if (flat == 1) begin
                   if (sel == 7'b0100000) begin// 도# = 레b, 3608분주기
                       if (cnt == 1803) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end  
                   if (sel == 7'b0010000) begin// 레# = 미b, 3214분주기
                       if (cnt == 1606) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000100) begin// 파# = 솔b를 출력, 2704분주기 
                       if (cnt == 1351) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out;  
                       end else 
                           cnt <= cnt+1;
                       end   
                   if (sel == 7'b0000010) begin// 솔# = 라b를 출력, 2408분주기
                       if (cnt == 1203) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000001) begin// 라# = 시b를 출력, 2146분주기
                       if (cnt == 1072) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   end 
               end
           end
       end
endmodule