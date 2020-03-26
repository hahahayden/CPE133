`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hayden Tam
// 
// Create Date: 08/29/2018 05:20:04 PM
// Module Name: Lab2Sim
// Description: RCA Sim
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab2RippleSim; //no ports to test module

    //declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic [3:0]A;
    logic [3:0]B;
    logic [3:0]S;
    logic Co;
    
    
    //Instantiate your module undertest
    Lab2Ripple ripple_inst (  .A(A), .B(B),.S(S),.Co(Co) );
    

    //list your test cases
    initial 
        begin
        A = 0; B = 0;
        #10
        if (S !== 0 && Co!==0) $display("Error A:%d B:%d S:%d Co:%d", A, B,S,Co);
        
        A = 15; B = 1;
        #10
        if (S !== 0 && Co!==1) $display("Error A:%d B:%d S:%d Co:%d", A, B,S,Co);
        
        A=1; B=15;
        #10
        if (S!==0 && Co!==1) $display("Error A:%d B:%d S:%d Co:%d", A,B,S,Co);
         
        A=15; B=15;
        #10
        if (S!==14 && Co!==1) $display("Error A:%d B:%d S:%d Co:%d", A,B,S,Co);
        
        A=3; B=5;
        #10
        if (S!==8 && Co!==0) $display("Error A:%d B:%d S:%d Co:%d", A,B,S,Co);
        
        A=6; B=6;
        #10
        if (S!==12 && Co!==0) $display("Error A:%d B:%d S:%d Co:%d", A,B,S,Co);
        
        A=13; B=14;
        #10
        if (S!==11 && Co!==1)$display("Error A:%d B:%d S:%d Co:%d",A,B,S,Co);
        
        A=9; B=10;
        #10
        if (S!==3 && Co!==1)$display("Error A:%d B:%d S:%d Co:%d",A,B,S,Co);
        
         A=11; B=12;
         #10
         if (S!==11 && Co!==1)$display("Error A:%d B:%d S:%d Co:%d",A,B,S,Co);
                       
        
        
        
        $display("Finished");  
      end                                 
    
endmodule