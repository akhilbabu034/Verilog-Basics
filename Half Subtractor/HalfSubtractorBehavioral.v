module halfSubtractorBehavioral(d,bout,a,b);
  input a,b;
  output reg d,bout;
  always @ (*)
    begin
       d= a^b;
      bout = (~a) & b;
    end
endmodule
      