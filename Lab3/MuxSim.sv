`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 01:44:22 PM
// Design Name: 
// Module Name: MuxSim
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


module MuxSim;
    logic a_i;
    logic b_i;
    logic sel_i;
    logic z_o;
       //Instantiate your module undertest
     Mux mux_inst (.*);
     
 
     //list your test cases
     initial 
     begin
     sel_i=0;
     a_i=0;
     b_i=0;
     #10
     if (z_o!=0)$display("Error a_i %d b_i:%d",a_i,b_i);
     
     sel_i=1;
     a_i=0;
     b_i=1;
     #10
     if (z_o!=1)$display("Error a_i:%d b_i: %d", a_i, b_i);
     
    $display("Finished");  
    
     end                                 
       
   endmodule
