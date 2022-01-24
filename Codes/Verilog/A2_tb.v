//testbench for full adder using behaviour modelling


`include "A2.v"

module testbench;

integer i;
reg a0,a1,a2,a3,b0,b1,b2,b3;
wire c1,c2,c3,c4,s0,s1,s2,s3;
Adder1 FC(a0,a1,a2,a3,b0,b1,b2,b3,c1,c2,c3,c4,s0,s1,s2,s3);
initial begin
    $dumpfile("A2_2.vcd");
    $dumpvars(0,testbench);
    for(i=0;i<216;i++)
    begin
      {a0,a1,a2,a3,b0,b1,b2,b3}=i; #5;
      $display($time,"  a0=%b a1=%b a2=%b a3=%b b0=%b b1=%b b2=%b b3=%b c1=%b c2=%b c3=%b c4=%b s0=%b s1=%b s2=%b s3=%b",a0,a1,a2,a3,b0,b1,b2,b3,c1,c2,c3,c4,s0,s1,s2,s3);
    end
    #5 $finish;
end
  
endmodule
