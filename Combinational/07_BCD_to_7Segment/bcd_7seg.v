module bcd_7seg(in,a,b,c,d,e,f,g);
input [3:0]in;
output a,b,c,d,e,f,g;
wire [15:0]y;

decoder416 d1(.in(in),.y(y));
bcdcmb d2(.y(y),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
endmodule