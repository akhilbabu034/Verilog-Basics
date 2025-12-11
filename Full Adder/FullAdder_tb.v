module fullAdderBehavioral_tb;
  reg a,b,cin;
  wire s,cout;
  fullAdderBehavioral dut(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
  initial begin
    {a,b,cin} = 3'b000;
    #5 {a,b,cin} = 3'b001;
    #5 {a,b,cin} = 3'b010;
    #5 {a,b,cin} = 3'b011;
    #5 {a,b,cin} = 3'b100;
    #5 {a,b,cin} = 3'b101;
    #5 {a,b,cin} = 3'b110;
    #5 {a,b,cin} = 3'b111;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule