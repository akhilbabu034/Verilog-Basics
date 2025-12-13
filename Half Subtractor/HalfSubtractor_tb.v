module halfSubtractorBehavioral_tb;
  reg a,b;
  wire d,bout;
  halfSubtractorBehavioral dut(.d(d),.bout(bout),.a(a),.b(b));
  initial begin 
    {a,b} = 2'b00;
    #5{a,b} = 2'b01;
    #5{a,b} = 2'b10;
    #5{a,b} = 2'b11;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule