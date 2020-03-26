`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2018 02:05:17 PM
// Design Name: 
// Module Name: FSMDemo
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


module FSMDemo(
    input clk,
   
    input demo,
    output logic demoRC,
    output logic demoSub,
    output logic demoEn,
    output logic demoClr,
    output logic displaySelect,
    output logic [2:0]wordSelect
    );
    parameter [3:0] showSub=4'b0000,subRes=4'b0001, showSubRC=4'b0010, subRCres=4'b0011, showAdd=4'b0100, addRes=4'b0101, showAddRC=4'b0110, addRC=4'b0111, showClr=4'b1000, clrRes=4'b1001, chill=4'b1010;
    logic [3:0] NS;
    logic [3:0] PS=chill;
    always_ff@(posedge clk)
          begin
              PS=NS;
          end
     
      always_comb
          begin
         wordSelect=0;displaySelect=0; demoRC=0; demoEn=0; demoClr=0; demoSub=0;
           case(PS)
           chill:
           begin
           
           wordSelect=0;displaySelect=0; demoRC=0; demoEn=0; demoClr=0; demoSub=0;
           if (demo)
           begin
                NS=showSub;
           end
           else
           
           begin
           
                NS=chill;
           end
           
           end
           
           showSub:
           begin
           
           wordSelect=3; displaySelect=1; demoRC=0; demoEn=1; demoClr=0; demoSub=1;
           if (demo)
           begin
                NS=subRes;
           end
           else
           begin
                NS=chill;
           end
           end
           
           subRes:
           begin
           wordSelect=0; 
           displaySelect=0; demoRC=0; demoEn=1; demoClr=0; demoSub=1;
           if(demo)
           begin
                NS=showSubRC;
          end
           else
           begin
                NS=chill;
                end
           end
           
           showSubRC:
           begin
             
           wordSelect=1; displaySelect=1; demoRC=0; demoEn=1; demoClr=0; demoSub=1;
           if (demo)
           begin
                NS=subRCres;
           end
            else
            begin
                NS=chill;
                end
           end
           subRCres:
           
           begin
           wordSelect=0; displaySelect=0; demoRC=1; demoEn=1; demoClr=0;  demoSub=1;
           if (demo)
           begin
                NS=showAdd;
                end
           else
           begin
                 NS=chill;
                 end
            end
          showAdd:
          begin
           
            wordSelect=2; displaySelect=1; demoRC=0; demoEn=1; demoClr=0; demoSub=0;
            if (demo)
            begin
                NS=addRes;
                end
            else
            begin
                NS=chill;
                end
            end
         addRes:
         begin
            wordSelect=0; demoSub=0; demoRC=0; demoEn=1; demoClr=0; demoSub=0;
           if (demo)
           begin
                NS=showAddRC;
                end
           else
           begin
                NS=chill;
                end
            end
        showAddRC:
        begin
        
            wordSelect=0; displaySelect=1; demoRC=1; demoEn=1; demoClr=0; demoSub=0;
           if (demo)
           begin
            NS= addRC;
            end
           else
           begin
            NS=chill;
            end
           end
        addRC:
            begin
            wordSelect=0; displaySelect=0; demoRC=1; demoEn=1; demoClr=0; demoSub=0;
            if (demo)
            begin
            NS=showClr;
            end
           else
           begin
            NS=chill;
           end
           end
       showClr:
            begin
            wordSelect=4; displaySelect=1; demoRC=0; demoEn=0; demoClr=1; demoSub=0;
            if (demo)
            begin
            NS=clrRes;
            end
            else
            begin
            NS=chill;
            end
            end      
      clrRes:
      begin
      wordSelect=4; displaySelect=0; demoRC=0; demoEn=1; demoClr=1; demoSub=0;
      if(demo)
      begin
        NS=showSub;
        end
       else
       begin
        NS=chill;
        end
        end
     default:
     NS=chill;
    endcase
        end
                
          
           
endmodule
