module demux_1_8_tb;
  reg in;
  reg [2:0]sel;
  wire [7:0]o;
  demux_1_8 dut(.in(in),.sel(sel),.o(o));
  initial begin
    in = 1'b1;
    for(int i=0;i<8;i++)
      begin
        {sel} = i;
        #5;
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule