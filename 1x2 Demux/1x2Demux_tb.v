module demux_1_2_tb;
  reg inp,s;
  wire [1:0]out;
  demux_1_2 dut(.out(out),.s(s),.inp(inp));
  initial begin
    for(int i=0;i<4;i++)
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