`timescale 1ns / 1ps

module tb();

reg clk,rst;
wire [3:0]q;

flip dut(clk,rst,q);

initial
begin
    clk=0;    
end
always #5 clk=~clk;

initial
begin
    $monitor("Q=%b",q);
    #10 rst=1;
    #10 rst=0;
end 

initial
begin
    #200;
    $finish();
end
endmodule
