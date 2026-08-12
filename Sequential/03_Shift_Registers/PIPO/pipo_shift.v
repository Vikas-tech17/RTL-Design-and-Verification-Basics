module pipo_shift(b,clk,rst,shld,q);
input [3:0] b;
input clk,rst,shld;
output [3:0] q;
wire d0,d1,d2,d3;
wire y0,y1,y2;

mux21 m0(.a(b[1]),.b(q[3]),.sel(shld),.y(d2));
mux21 m1(.a(b[2]),.b(q[2]),.sel(shld),.y(d1));
mux21 m2(.a(b[3]),.b(q[1]),.sel(shld),.y(d0));

dff f0(.d(b0),.clk(clk),.rst(rst),.qn(q[3]),.qbar());
dff f1(.d(y0),.clk(clk),.rst(rst),.qn(q[2]),.qbar());
dff f2(.d(y1),.clk(clk),.rst(rst),.qn(q[1]),.qbar());
dff f3(.d(y2),.clk(clk),.rst(rst),.qn(q[0]),.qbar());
endmodule 