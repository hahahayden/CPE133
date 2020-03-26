`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 01:32:30 PM
// Design Name: 
// Module Name: Lab2Ripple
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


module Lab2Ripple(
    input [3:0] A,
    input [3:0] B,
    input D,
    output [3:0] S,
    output Co
    );
logic t1,t2,t3;

FullAdder fa(.A(A[0]),.B(B[0]),.D(D),.S(S[0]), .Co(t1));
FullAdder fa1(.A(A[1]), .B(B[1]), .D(t1), .S(S[1]), .Co(t2));
FullAdder fa2(.A(A[2]), .B(B[2]), .D(t2), .S(S[2]), .Co(t3));
FullAdder fa3(.A(A[3]), .B(B[3]), .D(t3), .S(S[3]), .Co(Co));



endmodule
