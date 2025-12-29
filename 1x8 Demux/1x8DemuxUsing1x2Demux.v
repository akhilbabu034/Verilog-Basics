module demux_1_2(inp,s,out);
  input inp,s;
  output [1:0]out;
  assign out[0] = ~s & inp;
  assign out[1] = s & inp;
endmodule

module demux_1_8(in,sel,o);
  input in;
  input [2:0]sel;
  output [7:0]o;
  wire [7:0]k;
  demux_1_2 d0(in,sel[2],k[1:0]);
  demux_1_2 d1(k[0],sel[1],k[3:2]);
  demux_1_2 d2(k[1],sel[1],k[5:4]);
  demux_1_2 d3(k[2],sel[0],o[1:0]);
  demux_1_2 d4(k[3],sel[0],o[3:2]);
  demux_1_2 d5(k[4],sel[0],o[5:4]);
  demux_1_2 d6(k[5],sel[0],o[7:6]);
endmodule