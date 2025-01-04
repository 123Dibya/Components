
module tb_convert;

   
    reg [7:0] binary_in;
    wire [7:0] gray;
    wire [7:0] gray_binary;

  
    convert dut (
        .binary_in(binary_in),
        .gray(gray),
        .gray_binary(gray_binary)
    );

   
    initial begin
       
        $monitor("Time = %0t | Binary Input = %b | Gray Code = %b | Binary from Gray = %b", 
                 $time, binary_in, gray, gray_binary);

        
        binary_in = 8'b00000000; #10; // Case 0
        binary_in = 8'b00000001; #10; // Case 1
        binary_in = 8'b00000010; #10; // Case 2
        binary_in = 8'b00000100; #10; // Case 4
        binary_in=  5'b11001; #10;
    end

endmodule
