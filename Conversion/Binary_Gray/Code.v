module convert(
  
  input [7:0]binary_in,
  output reg [7:0]gray,gray_binary );
  
  
  
    // Binary to Gray
    assign gray = binary_in ^ (binary_in >> 1);
  
  // Gray to Binary
  integer i;
  always @(*) begin
       gray_binary[7] = gray[7];
        for (i = 6; i >= 0; i = i - 1) begin
           gray_binary[i] = gray_binary[i + 1] ^ gray[i];
        end
    end
endmodule
