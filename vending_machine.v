`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2026 22:56:22
// Design Name: 
// Module Name: vending_machine
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


module vending_machine(
  input clk,
  input reset,
  input coin5,
  input coin10,
  output reg dispense
    );
    reg [1:0] state;
    parameter s0=2'b00,
               s5=2'b01,
               s10=2'b10,
               s15=2'b11;
    always @(posedge clk or posedge reset)
    begin
    if(reset)
       state<=s0;
    else
    begin
     case(state)
     s0: 
     if(coin5) state<=s5;
     else if(coin10) state<=s10;
     s5:
     if(coin5) state<=s10;
     else if(coin10) state<=s15;
     s10:
     if(coin5) state<=s15;
     else if(coin10) state<=s15;
     s15:
     state<=s0;
     endcase
    end
   end
  always @(*)
  begin
    if(state==s15)
       dispense=1;
    else
       dispense=0;
    end  
endmodule
