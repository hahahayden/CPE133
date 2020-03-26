`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hayden Tam
// 
// Create Date: 08/29/2018 05:20:04 PM
// Module Name: Lab2Sim
// Description: Full Adder
// 
//////////////////////////////////////////////////////////////////////////////////


module FullAdderSim; //no ports to test module

    //declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic A, B,D,S,C;
    
    //Instantiate your module undertest
    FullAdder FullAdder_inst (  .A(A), .B(B),.D(D), .S(S), .C(C)  );


    //list your test cases
    initial 
        begin
        A = 0; B = 0; D=0;
        #10
        if (S !== 0 && C!==0) $display("Error A:%b B:%b D:%b", A, B,D);
        
        A=0; B=0; D=1;
        #10
        if (S !== 1 && C!==0) $display("Error A:%b B:%b D:%b", A, B,D);
       
        A=0; B=1; D=0;
        #10
        if (S !== 1 && C!==0) $display("Error A:%b B:%b D:%b", A, B,D);
        
        A=0; B=1; D=1;
        #10
        if (S !== 0 && D!==1) $display("Error A:%b B:%b D:%b", A, B,D);
        
        A=1; B=0; D=0;
        #10
        if (S !== 1 && C!==0) $display("Error A:%b B:%b D:%b", A, B,D);
        
         A=1; B=0; D=1;
         #10
         if (S !== 0 && C!==1) $display("Error A:%b B:%b D:%b", A, B,D);
         
         A=1; B=1; D=0;
         #10
         if (S !== 0 && C!==1) $display("Error A:%b B:%b D:%b", A, B,D);
         
         A=1; B=1; D=1;
         #10
         if (S !== 1 && C!==1) $display("Error A:%b B:%b D:%b", A, B,D);
         
        $display("Finished");  
      end                                 
endmodule