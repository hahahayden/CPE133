`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 09:27:49 PM
// Design Name: 
// Module Name: SimLab3
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


module SimLab3;
    logic [3:0] A;
    logic [3:0] B;
    logic [6:0] Seg;
    logic [3:0] An;
    Lab3Project sevmux_inst ( .* );
    
    initial 
           begin
           A = 4'b0000; B=4'b0000;
           #10
           if (Seg !== 0 && An!==14) $display("Error A:%d B:%d Seg:%d An:%d", A, B,Seg,An);
           
           
           A=4'b0100; B=4'b0010;
           #10
           if(Seg!==6 && An!=14) $display("Error A:%d B:%d Seg:%d An:%d", A, B,Seg,An);
            
           
           A=4'b1010; B=4'b1101;
           #10
           if (Seg!=14 && An!=1) $display("Error A:%d B:%d Seg:%d An:%d", A, B,Seg,An);
            $display("Finished"); 
   end
endmodule
