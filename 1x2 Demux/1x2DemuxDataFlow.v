module demux_1_2_tb;
  reg inp,s;
  wire [1:0]out;
  demux_1_2 dut(.out(out),.s(s),.inp(inp));
  initial begin
 