module T_FlipFlop_tb;

    reg clk;
    reg reset;
    reg t;
    wire q;

   
    flip uut (
        .clk(clk),
        .reset(reset),
        .t(t),
        .q(q)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test sequence
    initial begin
        reset = 1; t = 0; 
        #10 reset = 0; 
        #10 t = 1;
        #20 t = 0; 
        #20 t = 1; 
        #30 $stop; 
    end

   
    initial begin
        $monitor("At time %0t: reset = %b, t = %b, q = %b", $time, reset, t, q);
    end

endmodule
