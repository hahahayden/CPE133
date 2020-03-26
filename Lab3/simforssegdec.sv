`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hayden Tam
// 
// Create Date: 08/29/2018 05:20:04 PM
// Module Name: Lab2Sim
// Description: RCA Sim
// 
//////////////////////////////////////////////////////////////////////////////////


module simforssegdec; //no ports to test module

    //declare inputs and outputs to give to your module
    //can be the same names as the ports of the module under test
    logic [3:0]binary;
    logic [6:0]seg;
    
    
    //Instantiate your module undertest
    ssegdec sevenseg_inst (.*);
    

    //list your test cases
    initial 
        begin
         binary=4'b0000;
         #10
         if (seg!=7'b1000000)$display("Error binary:%d",binary);
          
         binary=4'b0001; //1
         #10
         if (seg!=7'b1111001)$display("Error binary:%d", binary);
         
         binary=4'b0010; //2
         #10
         if (seg!=7'b0100100)$display("Error binary:%d", binary);  
         
         binary=4'b0011;
         #10
         if (seg!=7'b0110000)$display("Error binary:%d", binary);
         
          binary=4'b0100;
         #10
         if (seg!=7'b0011001)$display("Error binary:%d", binary);
         
          binary=4'b0101;
         #10
         if (seg!=7'b0010010)$display("Error binary:%d", binary);
         
          binary=4'b0110;
         #10
         if (seg!=7'b0000010)$display("Error binary:%d", binary);
        
          binary=4'b0111;
         #10
         if (seg!=7'b1111000)$display("Error binary:%d", binary);
         
          binary=4'b1000;
         #10
         if (seg!=7'b0000000)$display("Error binary:%d", binary);
         
          binary=4'b1001;
         #10
         if (seg!=7'b0011000)$display("Error binary:%d", binary);
         
          binary=4'b1010;
         #10
         if (seg!=7'b0001000)$display("Error binary:%d", binary);
         
          binary=4'b1011;
         #10
         if (seg!=7'b0000011)$display("Error binary:%d", binary);
        
         binary=4'b1100;
         #10
         if (seg!=7'b1000110)$display("Error binary:%d", binary);
          
         binary=4'b1101;
         #10
         if (seg!=7'b0100001)$display("Error binary:%d", binary);
         
          binary=4'b1110;
          #10
          if (seg!=7'b0000110)$display("Error binary:%d", binary);
          
           binary=4'b1111;
          #10
          if (seg!=7'b0001110)$display("Error binary:%d", binary);
          
        $display("Finished");  
        end                                 
    
endmodule