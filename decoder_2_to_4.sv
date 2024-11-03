module decoder_2_to_4(a,y);
  input [2:0]a;
  output reg[0:3]y;
  always@(a)
    case(a)
      3'b100:y=4'b1000;
      3'b101:y=4'b0100;
      3'b110:y=4'b0010;
      3'b111:y=4'b0001;
      default
      y=4'b0000;
    endcase
endmodule

      
