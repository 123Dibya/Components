`timescale 1ns / 1ps

module flip(
  input clk,rst,
  output reg [3:0]q
    );
    
 always@(posedge clk)
 begin
    if(rst== 1'b1)
        begin
            q<=4'b1000;
        end
    else
        begin
             q[3] <= ~q[0];  // Wrap LSB to MSB
             q[2] <= q[3];  // Shift MSB to q[2]
             q[1] <= q[2];  // Shift q[2] to q[1]
             q[0] <= q[1];  // Shift q[1] to LSB
         end
 end
endmodule

