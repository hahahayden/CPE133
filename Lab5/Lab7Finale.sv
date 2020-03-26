`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 11:56:30 AM
// Design Name: 
// Module Name: Lab4
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


module Lab7Finale(
    input clk,
    input [3:0] A,
    input [3:0] B,
    input demo, RC,sub,en,clr,
    output [7:0] seg,
    output [3:0]an);
    
   
    logic t1,t2,t3,t4,t5,t6,t7,t8,t9,t10;
    logic [2:0] t11;
    logic [3:0] t13, t15;
    logic [7:0] t12, t14;
    
    Lab5 lab5(.clk(clk), .A(A),.B(B),.RC(t5),.sub(t6),.en(t7),.clr(t8),.seg(t12),.an(t13));
    FSMDemo fsmdemo(.clk(t9), .demo(demo),.demoRC(t1), .demoSub(t2),.demoEn(t3), .demoClr(t4), .displaySelect(t10),.wordSelect(t11));
    Words words(.clk(clk),.wordSelect(t11),.seg(t14),.an(t15));
    clockdivider #50000000 clock1(.clk(clk),.sclk(t9));
    Mux #(1) rcMux(.sel_i(demo),.a_i(RC),.b_i(t1),.z_o(t5));
    Mux #1 subMux(.sel_i(demo),.a_i(sub),.b_i(t2),.z_o(t6));
    Mux #1 enMux(.sel_i(demo),.a_i(en),.b_i(t3),.z_o(t7));
    Mux #1 clrMux(.sel_i(demo),.a_i(clr),.b_i(t4),.z_o(t8));
    Mux #8 segMux(.sel_i(t10),.a_i(t12),.b_i(t14),.z_o(seg));
    Mux #4 anMux(.sel_i(t10),.a_i(t13),.b_i(t15),.z_o(an));
    
    
endmodule
