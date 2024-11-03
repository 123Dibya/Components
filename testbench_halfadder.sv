module testbench_half_adder;
  reg a;reg b;wire s;wire c;
  half_adder utt(a,b,s,c);
  initial
    begin
      $monitor($time,"a=%b,b=%b,c=%b,d=%b",a,b,s,c);
      #5 a=0;b=0;
      #5 a=0;b=1;
      #5 a=1;b=0;
      #5 a=1;b=1;
      #5 $finish;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
	  #300
      $finish;
    end
endmodule
