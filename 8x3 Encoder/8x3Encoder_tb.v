module endcoder_8_3_tb;
  reg [7:0] inp;
  wire [2:0] out;
  endcoder_8_3 dut(.inp(inp),.out(out));
  initial begin
    inp = 8'h01;
    #5 inp = 8'h02;
    #5 inp = 8'h04;
    #5 inp = 8'h08;
    #5 inp = 8'h10;
    #5 inp = 8'h20;
    #5 inp = 8'h40;
    #5 inp = 8'h80;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
    