module mux_2_1(out,inp,s);
  input s;
  input [1:0]inp;
  output out;
  assign out = s? inp[1] : inp[0];
endmodule