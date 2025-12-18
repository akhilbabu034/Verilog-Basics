module mux_8_1_tb;
  reg [2:0]sel;
  reg [7:0]in;
  wire out;
  mux_8_1 dut(.out(out),.in(in),.sel(sel));
  initial begin
    in = 8'b00111010;
    for(int i=0;i<8;i++)
      begin
        {sel}=i;
        #5;
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule