`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 02:26:03 PM
// Design Name: 
// Module Name: SevSegMux
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


module Lab3Project(
    input [3:0] A,
    input [3:0] B,
    output [7:0] Seg,
    output [3:0] An
    );
    
    logic [3:0]t1,t2;
    
 Lab2Ripple Lab2Ripple1( .A(A), .B(B),.S(t1), .Co(t2));
 Mux#(4) Mux(.sel_i(t2),.a_i(4'b1110),.b_i(4'b1111),.z_o(An));
 ssegdec ssegdec1 (.binary(t1), .seg(Seg));
 

endmodule
