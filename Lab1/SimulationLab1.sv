`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Engineer: Hayden Tam
// 
// Create Date: 09/25/2018 02:39:01 PM
// Design Name: 
// Module Name: SimulationLab1
// Project Name: CPE133 Lab1
// Target Devices: 
// Tool Versions: 
// Description: simulation for all the test cases from 0-15
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SimulationLab1;
 //declare inputs and outputs to give to your module
   //can be the same names as the ports of the module under test
   logic A, B, C, D; 
   logic F;
   
   //Instantiate your module undertest
   Lab1 Lab1_inst (  .A(A), .B(B), .C(C),.D(D), .F(F)  );


   //list your test cases
   initial 
       begin
       A = 0; B = 0; C = 0; D=0;
       #10
       
       A = 0; B = 0; C = 1; D=1;
       #10
       
       A=0; B=0; C=1; D=0;
       #10
       
       A=0; B=0; C=1; D=1;
       #10
       
       A=0; B=1; C=0; D=0;
       #10
       
       A=0; B=1; C=0; D=1;
       #10
       
       A=0; B=1; C=1; D=0;
       #10
       
       A=0; B=1; C=1; D=1;
       #10
       
       A=1; B=0; C=0; D=0;
       #10
       
       A=1; B=0; C=0; D=1;
       #10
       
      
       A=1; B=0; C=1; D=0;
       #10
       
       A=1; B=0; C=1; D=1;
       #10
       
       A=1; B=1; C=0; D=0;
       #10
       
       A=1; B=1; C=0; D=1;
       #10
       
       A=1; B=1; C=1;D=0;
       #10
       
       A=1; B=1; C=1; D=1;
       #10
      
      //add more test cases     
          
           
       $display("Finished");  
     end                                 
   
endmodule
