module fullAdderBehavioral(s,cout,a,b,cin);
  input a,b,cin;
  output reg s,cout;
  always @ (*)
    begin
      s= a^b^cin;
      cout = (a&b) | (b&cin) | (a&cin);
    end
endmodule