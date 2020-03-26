`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hayden Tam
// 
// Create Date: 09/25/2018 02:34:57 PM
// Design Name: 
// Module Name: Lab1
// Project Name: CPE-133 Labs
// Target Devices: 
// Tool Versions: 
// Description: Unlock a lock box with a four bit input through the following inputs (5, 6, 7, 9, 10, 11, 13, 14, 15)
// Outputs a 1 when it is open
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab1(
    input A,
    input B,
    input C,
    input D,
    output F
    );
assign F=((A|B|C|D)&(A|B|C|~D)&(A|B|~C|D)&(A|B|~C|~D)&(A|~B|C|D)&(~A|B|C|D)&(~A|~B|C|D));


endmodule
