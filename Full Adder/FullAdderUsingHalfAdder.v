module halfAdder(s,c,a,b);
  input a,b;
  output s,c;
  assign s= a^b;
  assign c= a&b;
endmodule

module fullAdder(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;
  wire w1,w2,w3;
  halfAdder h1(w1,w2,a,b);
  halfAdder h2(s,w3,w1,cin);
  or o1(cout,w2,w3);
endmodule