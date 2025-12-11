module fullAdderStructural(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;
  wire t1,t2,t3;
  xor x1(s,a,b,cin);
  xor x2(t1,a,b);
  and a1(t2,a,b);
  and a2(t3,t1,cin);
  or o1(cout,t2,t3);
endmodule