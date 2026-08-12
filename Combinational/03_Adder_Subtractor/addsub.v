module addsub(a,b,cin,m,s,cout,v);
input [3:0]a,b;
input cin,m;
output [3:0]s;
output cout,v;
wire c1,c2,c3;
wire [3:0]x;
exr m0(.b(b),.m(m),.x(x));
full_adder m1(.a(a[0]),.b(x[0]),.cin(cin),.s(s[0]),.c(c1));
full_adder m2(.a(a[1]),.b(x[1]),.cin(c1),.s(s[1]),.c(c2));
full_adder m3(.a(a[2]),.b(x[2]),.cin(c2),.s(s[2]),.c(c3));
full_adder m4(.a(a[3]),.b(x[3]),.cin(c3),.s(s[3]),.c(cout));
xor(v,cout,c3);
endmodule