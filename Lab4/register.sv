`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bridget Benson
// 
// Create Date: 10/24/2018 04:56:09 PM
// Design Name: 
// Module Name: register
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


module register#(parameter Length=1)
   (input clk, en, clr,
   input [Length-1:0] D,
   output logic[Length-1:0] Q=0 
   );
   
always_ff @ (posedge clk, posedge clr)
begin
   if (clr)
        Q=0;
   else if (en)
        Q =D;
end
endmodule

   
 