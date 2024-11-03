module testbench;
  reg a;reg b;reg bin;wire d;wire dout;
  full_sub utt(a,b,bin,d,bout);
  initial
    begin
      $monitor($time,"a=%b,b=%b,bin=%b,d=%b,bout=%b",a,b,bin,d,bout);
      #5 a=0; b=0;bin=0;
      #5 a=0; b=0;bin=1;
      #5 a=0; b=1;bin=0;
      #5 a=0; b=1;bin=1;
      #5 a=1; b=0;bin=0;
      #5 a=1; b=0;bin=1;
      #5 a=1; b=1;bin=0;
      #5 a=1; b=1;bin=1;
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
  
