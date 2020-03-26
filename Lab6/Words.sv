`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: 
// Create Date: 10/31/2018 09:58:33 AM
// Description: Displays up to 8 words on the seven segment display
// wordSelect
//  0: -Add
//  1: -Sub
//  2: Add
//  3: Sub
//  4: clr
// To make your own words, note that the zero count represents the leftmost
// display and three represents the right most display
// Matches the constraints for Mealy's univ_sseg where the dp is seg[0]
//////////////////////////////////////////////////////////////////////////////////


module Words(
    input clk,
    input [2:0] wordSelect,
    output logic [7:0] seg,
    output logic [3:0] an);
    
    logic sclk;
    logic [1:0] count = 0;
    
    clk_divder clkdiv2 (.clockin(clk), .clockout(sclk));
    
    always_ff @(posedge sclk)
    begin
        count = count + 1;
    end
    
    //rotate through the four displays
    always_comb
    begin
        case (count)
            0: an = 4'b1110;
            1: an = 4'b1101;
            2: an = 4'b1011;
            3: an = 4'b0111;
            default: an = 0;
        endcase
    end
    
    //choose the word to display
    always_comb
    begin
        case (wordSelect)
        0: 
            case (count)
                   0: seg <= 8'b01000001;
                 1: seg <= 8'b00000011;
                 2: seg <= 8'b00000011;
                 3: seg <= 8'b10000101;

            default: seg <= 0;
            endcase
        1: 
            case (count)
                 0: seg <= 8'b11110011;
                1: seg <= 8'b00000011;
                2: seg <= 8'b01001001;
                3: seg <= 8'b01100001;

            default: seg <= 0;
            endcase
 
            
        default :        
            case (count)
            0: seg <= 8'b11111111;
            1: seg <= 8'b11111111;
            2: seg <= 8'b11111111;
            3: seg <= 8'b11111111;
            default: seg <= 0;
            endcase
      endcase
    end 
endmodule



