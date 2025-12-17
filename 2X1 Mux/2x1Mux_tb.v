module mux_2_1_tb;
  reg s;
  reg [1:0]inp;
  wire out;
  mux_2_1 dut(.out(out),.inp(inp),.s(s));
  initial begin
    for(int i=0;i<8;i++)
      begin
        {s,inp} = i;
        #5;
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
    	