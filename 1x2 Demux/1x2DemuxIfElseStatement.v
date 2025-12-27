module demux_1_2(out,inp,s);
  input inp,s;
  output reg [1:0]out;
  always @(*)
    begin
      if(s==1'b0)
        begin
          out[0] = inp;
          out[1] = 1'b0;
        end
      else
        begin
          out[0] = 1'b0;
          out[1] = inp;
        end
    end
endmodule