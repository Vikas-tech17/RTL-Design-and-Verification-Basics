module ser_right(d,clk,rst,qn);
input d,clk,rst;
output qn;
wire [3:1]q;

dff m1(.d(d),.clk(clk),.rst(rst),.qn(q[3]),.qbar());
dff m2(.d(q[3]),.clk(clk),.rst(rst),.qn(q[2]),.qbar());
dff m3(.d(q[2]),.clk(clk),.rst(rst),.qn(q[1]),.qbar());
dff m4(.d(q[1]),.clk(clk),.rst(rst),.qn(qn),.qbar());
endmodule


/*module ser_left(d,clk,rst,qn);
input d,clk,rst;
output [3:0]qn;

dff m1(.d(d),.clk(clk),.rst(rst),.qn(qn[0]),.qbar());
dff m2(.d(qn[0]),.clk(clk),.rst(rst),.qn(qn[1]),.qbar());
dff m3(.d(qn[1]),.clk(clk),.rst(rst),.qn(qn[2]),.qbar());
dff m4(.d(qn[2]),.clk(clk),.rst(rst),.qn(qn[3]),.qbar());
endmodule


