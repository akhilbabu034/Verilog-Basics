module mux_2_1(out,inp,s);
  input s;
  input [1:0] inp;
  output reg out;
  always @(*)
    begin
      casex(s)
        1'b0: out = inp[0];
        1'b1: out = inp[1];
        default: out=1'bx;
      endcase
    end
endmodule