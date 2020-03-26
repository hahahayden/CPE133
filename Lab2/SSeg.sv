module ssegdec(
    input [3:0] binary,
    output logic [7:0] seg);
    
    always_comb
    begin
        case(binary)
            0: seg=7'b 1000000;
            1: seg=7'b 1111001;
            2: seg= 7'b 0100100;
            3: seg= 7'b 0110000;
            4: seg=7'b 0011001;
            5: seg=7'b 0010010;
            6: seg=7'b 0000010;
            7: seg= 7'b 1111000;
            8: seg= 7'b 0000000;
            9: seg= 7'b 0011000;
            10: seg=7'b 0001000;
            11: seg= 7'b 0000011;
            12: seg=7'b 1000110;
            13: seg=7'b 0100001;
            14: seg=7'b 0000110;
            15: seg=7'b 0001110;
       default: seg= 7'b 1111111;   //turn everything off
      endcase
   end
endmodule