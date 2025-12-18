module mux_2_1(out,inp,s);
  input [1:0]inp;
  input s;
  output reg out;
  always @(*)
    begin
      if(s==1'b0)
        out = inp[0];
      else
        out = inp[1];
    end
endmodule