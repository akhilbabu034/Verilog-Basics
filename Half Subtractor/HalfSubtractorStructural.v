module halfSubtractorStructural(d,bout,a,b);
  input a,b;
  output d,bout;
  wire abar;
  xor x1(d,a,b);
  not n1(abar,a);
  and a1(bout,abar,b);
endmodule