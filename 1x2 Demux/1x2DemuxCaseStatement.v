module demux_1_2(out,s,inp);
  input inp,s;
  output reg [1:0]out;
  always @(*)
    case(s)
      1'b0: begin out[0] = inp; out[1] = 1'b0; end
      1'b1: begin out[1] = inp; out[0] = 1'b0; end
      default: out[1:0] = 2'bxx;
    endcase
endmodule
      