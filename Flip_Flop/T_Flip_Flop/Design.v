`timescale 1ns / 1ps
module flip (
    input clk,
    input reset,  
    input t,
    output reg q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 0;  
    else if (t) 
        q <= ~q;  
    else 
        q <= q;  
end

endmodule

