module fullSubtractorBehavioral(d,bout,a,b,bin);
  input a,b,bin;
  output reg d,bout;
  always @(*)
    begin
      d = a^b^bin;
      bout = ((~a)&b) | ((~a)&bin) | (b&bin); 
    end
endmodule