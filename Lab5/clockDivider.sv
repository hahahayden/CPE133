`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Taken from Professor Bridget Benson
// Engineer: Bridget Benson 
// 
// Create Date: 10/01/2018 10:22:13 AM
// Description: Generic Clock Divider.  Divides the input clock by MAXCOUNT*2
// 
//////////////////////////////////////////////////////////////////////////////////


// module clockdivider #(parameter MAXCOUNT = 1)(
module clockdivider (
    input clk, 
    input [15:0]clockdividerNum,
    output logic sclk
    
    
    );     
   
    logic [15:0] count = 0;    
    logic m_sclk=0;
    always_ff @ (posedge clk)
    
    begin
//        if (count == MAXCOUNT)
//           if (clockdividerNum==0)
//            begin 
//            sclk=0;
//            end
        if (count< clockdividerNum)
        begin
      
            count<=count+1;
        end

        else begin
            m_sclk<=~m_sclk;
            count <=0;    
        end
             
    end
    always_comb
    begin
     if (clockdividerNum==0)
     begin
      sclk=0;
     end
     else
     begin
       sclk=m_sclk;
    end
    end
    
endmodule