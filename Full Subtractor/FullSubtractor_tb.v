module fullSubtractorBehavioral_tb;
  reg a,b,bin;
  wire d,bout;
  fullSubtractorBehavioral dut(.d(d),.bout(bout),.a(a),.b(b),.bin(bin));
  initial begin
    {a,b,bin} = 3'b000;
    #5{a,b,bin} = 3'b001;
    #5{a,b,bin} = 3'b010;
    #5{a,b,bin} = 3'b011;
    #5{a,b,bin} = 3'b100;
    #5{a,b,bin} = 3'b101;
    #5{a,b,bin} = 3'b110;
    #5{a,b,bin} = 3'b111;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule