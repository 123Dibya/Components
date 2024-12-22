`timescale 1ns / 1ps

module tb();

reg clk,rst,din;
wire q,qbar;

flip dut(clk,din,rst,q,qbar);

initial
begin
    clk=0;  
    din=1;  
end
always #5 clk=~clk;
always #10 din=~din;

initial
begin
    $monitor("Q=%b,Qbar=%b",q,qbar);
    #10 rst=1;
    #10 rst=0;
end 

initial
begin
    #200;
    $finish();
end
endmodule
