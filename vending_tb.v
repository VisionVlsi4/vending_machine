`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 00:07:50
// Design Name: 
// Module Name: vending_tb
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


module vending_tb;
reg clk;
reg reset;
reg coin5;
reg coin10;
wire dispense;
vending_machine uut(
.clk(clk),
.reset(reset),
.coin5(coin5),
.coin10(coin10),
.dispense(dispense)
);
always #5 clk=~clk;
initial 
begin
clk=0;
reset=1;
coin5=0;
coin10=0;
#10 reset=0;
#10 coin5=1;#10 coin5=0;
#10 coin10=1;#10 coin10=0;
#20 $finish;
end
endmodule
