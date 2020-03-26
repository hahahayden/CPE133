`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hayden Tam
// 
// Create Date: 08/29/2018 05:20:04 PM
// Module Name: Lab2Sim
// Description: Half Addder Sim
// 
//////////////////////////////////////////////////////////////////////////////////


module HalfAdderSim; //no ports to test module

    //declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic A, B,S,C;
    
    //Instantiate your module undertest
    HalfAdder HalfAdder_inst (  .A(A), .B(B), .S(S), .C(C)  );


    //list your test cases
    initial 
        begin
        A = 0; B = 0;
        #10
        if (S !== 0 && C!==0) $display("Error A:%b B:%b", A, B);
        
        A = 0; B = 1;
        #10
        if (S !== 1 && C!==0) $display("Error A:%b B:%b", A, B);
       
            
        A=1; B=0;
        #10
        if(S!=1 && C!==0) $display ("error A: %b B: %b", A, B);
        
        A=1; B=1;
        #10
        if(S!=0 && C!==1) $display ("error A: %b B: %b", A, B);
        
            
        $display("Finished");  
      end                                 
endmodule