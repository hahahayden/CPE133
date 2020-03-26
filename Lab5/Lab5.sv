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


module Lab5(
    input [3:0] A,
    input [3:0] B,
    input RC,
    input sub,
    input clk,
    input en,
    input clr,
    output [7:0] seg,
    
    output [3:0] an,
    output JA0
    );
    logic [3:0]t1; 
    logic [3:0] t2;
    logic t3;
    logic [3:0]t4;
    logic [3:0]t5;
    logic t6;
    logic t7;
    logic [3:0]t8;
    logic t9;
    logic t10;
    
    Mux#(4) MuxBeginning(.sel_i(sub),.a_i(B),.b_i(~B),.z_o(t1));
    
    Lab2Ripple ripple(.A(A),.B(t1),.D(sub), .S(t2),.Co(t3));
    Lab2Ripple ripple2(.A(~t2),.B(4'b0000),.D(1),.S(t4),.Co());
    
    assign t6 =t2[3] & RC;
    register #(1)registerBottom(.clk(clk),.en(en),.clr(clr),.D(t6), .Q(t9));
    Mux#(4) Mux1(.sel_i(t6),.a_i(t2),.b_i(t4),.z_o(t5));
    register#(4) registerTop(.clk(clk),.en(en),.clr(clr),.D(t5),.Q(t8));
    
    
    Validity validity1(.A(A[3]),.B(t1[3]),.S(t2[3]),.Co(t3),.RC(RC),.sub(sub),.Valid(t7));
    
    
    register #(1) registerValidity(.clk(clk),.en(en),.clr(clr),.D(t7),.Q(t10));
    univ_sseg(.cnt1(t8),.cnt2(0),.valid(t10), .dp_en(0),.dp_sel(0),.mod_sel(0),.sign(t9),.clk(clk), .ssegs(seg),.disp_en(an),.sclk(JA0));
    
    
    
endmodule
