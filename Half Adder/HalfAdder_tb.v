module halfAdderStructural_tb;
  reg a,b;
  wire s,c;
  halfAdderStructural dut(.s(s),.c(c),.a(a),.b(b));
  initial begin
    a= 1'b0; b=1'b0;
    #5 a= 1'b0; b=1'b1;
    #5 a= 1'b1; b=1'b0;
    #5 a= 1'b1; b=1'b1;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule