`timescale 1ns / 1ps
module flip(

input clk,din,rst,
output reg q,qbar
    );
    
 always@(posedge clk)
 begin
    if(rst==1'b1)
    begin
       q<=1'b0; 
    end
    else
    begin
        q<=din;
        qbar<=~din;
    end
 end
endmodule
