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
                   if (sel == 7'b1000000) begin// ��, 7644���ֱ�
                       if (cnt == 3822) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                       cnt <= cnt+1;
                   end  
                   if (sel == 7'b0100000) begin// ��, 6808���ֱ� 
                       if (cnt == 3404) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                       cnt <= cnt+1;
                end
                     if (sel == 7'b0010000) begin// ��, 6066���ֱ� 
                      if (cnt == 3033) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                      end else                                 
                      cnt <= cnt+1;
                 end
                  if (sel == 'b0001000) begin// ��, 5724���ֱ� 
                      if (cnt == 2862) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                        cnt <= cnt+1;
                   end
               if (sel == 7'b0000100) begin// ��, 5100���ֱ� 
                       if (cnt == 2550) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out;  
                        end else 
                        cnt <= cnt+1;
                     end   
                if (sel == 7'b0000010) begin// ��, 4544���ֱ� 
                          if (cnt == 2272) begin 
                              cnt <= 0; 
                              buzz_out <= ~buzz_out; 
                          end else 
                              cnt <= cnt+1;
                      end
                  if (sel == 7'b0000001) begin// ��, 4048���ֱ�
                          if (cnt == 2024) begin 
                               cnt <= 0; 
                                buzz_out <= ~buzz_out; 
                           end else 
                              cnt <= cnt+1;
                       end
                   end
          else if (flat == 1) begin
                 if (sel == 7'b0100000) begin// ��# = ��b, 7216���ֱ�
                    if (cnt == 3607) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                    end  
                if (sel == 7'b0010000) begin// ��# = ��b, 6428���ֱ�
                    if (cnt == 3213) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                     end 
                if (sel == 7'b0000100) begin// ��# = ��b�� ���, 5406���ֱ� 
                    if (cnt == 2702) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out;  
                    end else 
                        cnt <= cnt+1;
                    end   
                if (sel == 7'b0000010) begin// ��# = ��b�� ���, 4816���ֱ�
                    if (cnt == 2407) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                    end
                if (sel == 7'b0000001) begin// ��# = ��b�� ���, 4290���ֱ�
                    if (cnt == 2145) begin 
                        cnt <= 0; 
                        buzz_out <= ~buzz_out; 
                    end else 
                        cnt <= cnt+1;
                    end
                end 
            end
       else if (octave == 1) begin
                if (flat == 0) begin // �÷�X
                    if (sel == 7'b1000000) begin// 1��, 3822���ֱ�
                        if (cnt == 1910) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out; 
                        end else 
                            cnt <= cnt+1;
                        end  
                    if (sel == 7'b0100000) begin// 1��, 3404���ֱ� 
                        if (cnt == 1701) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out; 
                        end else 
                            cnt <= cnt+1;
                        end
                    if (sel == 7'b0010000) begin// ��, 3032���ֱ� 
                        if (cnt == 1515) begin 
                            cnt <= 0; 
                            buzz_out <= ~buzz_out; 
                       end else                                 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0001000) begin// ��, 2862���ֱ� 
                       if (cnt == 1430) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000100) begin// ��, 2550���ֱ� 
                       if (cnt == 1274) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out;  
                       end else 
                           cnt <= cnt+1;
                       end   
                   if (sel == 7'b0000010) begin// ��, 2272���ֱ� 
                       if (cnt == 1135) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000001) begin// ��, 2024���ֱ�
                       if (cnt == 1011) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   end
               if (flat == 1) begin
                   if (sel == 7'b0100000) begin// ��# = ��b, 3608���ֱ�
                       if (cnt == 1803) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end  
                   if (sel == 7'b0010000) begin// ��# = ��b, 3214���ֱ�
                       if (cnt == 1606) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000100) begin// ��# = ��b�� ���, 2704���ֱ� 
                       if (cnt == 1351) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out;  
                       end else 
                           cnt <= cnt+1;
                       end   
                   if (sel == 7'b0000010) begin// ��# = ��b�� ���, 2408���ֱ�
                       if (cnt == 1203) begin 
                           cnt <= 0; 
                           buzz_out <= ~buzz_out; 
                       end else 
                           cnt <= cnt+1;
                       end
                   if (sel == 7'b0000001) begin// ��# = ��b�� ���, 2146���ֱ�
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