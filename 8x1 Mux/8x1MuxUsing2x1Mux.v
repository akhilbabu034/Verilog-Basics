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
 
module mux_8_1(out,in,sel);
  input [2:0]sel;
  input [7:0]in;
  output out;
  wire [5:0]k;
  mux_2_1 mux1(k[0],in[1:0],sel[0]);
  mux_2_1 mux2(k[1],in[3:2],sel[0]);
  mux_2_1 mux3(k[2],in[5:4],sel[0]);
  mux_2_1 mux4(k[3],in[7:6],sel[0]);
  mux_2_1 mux5(k[4],k[1:0],sel[1]);
  mux_2_1 mux6(k[5],k[3:2],sel[1]);
  mux_2_1 mux7(out,k[5:4],sel[2]);
endmodule
  