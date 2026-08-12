module exr(b,m,x);
input [3:0]b;
input m;
output [3:0]x;

xor g0(x[0],b[0],m);
xor g1(x[1],b[1],m);
xor g2(x[2],b[2],m);
xor g3(x[3],b[3],m);
endmodule
