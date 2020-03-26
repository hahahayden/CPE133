`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hayden Tam
// 
// Create Date: 10/11/2018 01:35:42 PM
// Design Name: 
// Module Name: 21Mux
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


module Mux#(parameter Length=1)
    (input [Length-1:0] a_i, b_i,
    input sel_i,
    output [Length-1:0]z_o
    );
assign z_o= (sel_i==0) ? a_i: b_i;
            
endmodule
