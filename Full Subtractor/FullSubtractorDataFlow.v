module fullSubtractorDataFlow(d,bout,a,b,bin);
  input a,b,bin;
  output d,bout;
  assign d= a^b^bin;
  assign bout = ((~a)&b) | ((~a)&bin) | (b&bin);
endmodule