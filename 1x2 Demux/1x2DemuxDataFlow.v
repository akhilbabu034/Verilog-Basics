module demux_1_2(out,s,inp);
  input s,inp;
  output [1:0] out;
  assign out[0] = ~s & inp;
  assign out[1] = s & inp;
endmodule
