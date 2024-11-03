module testbench;
  reg [2:0]a; wire [0:3]y;
  decoder_2_to_4 utt(a,y);
  initial
    begin
      $monitor($time,"a[2]=%b,a[1]=%b,a[0]=%b,y[0]=%b,y[1]=%b,y[2]=%b,y[3]=%b",a[2],a[1],a[0],y[0],y[1],y[2],y[3]);
      #5 a[2]=1;a[1]=0;a[0]=0;
      #5 a[2]=1;a[1]=0;a[0]=1;
      #5 a[2]=1;a[1]=1;a[0]=0;
      #5 a[2]=1;a[1]=1;a[0]=1;
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
      
