module fullSubtractorSrtuctural(a,b,bin,d,bout);
  input a,b,bin;
  output d,bout;
  wire w1,w2,w3,w4;
  xor x1(d,a,b,bin);
  not n1(w1,a);           //A′
  and a1(w2,w1,b);        //A′B
  and a2(w3,w1,bin);      //A′Bin
  and a3(w4,b,bin);       //BBin
  or o1(bout,w2,w3,w4);
endmodule