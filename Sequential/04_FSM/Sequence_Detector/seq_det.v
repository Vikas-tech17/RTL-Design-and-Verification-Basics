module seq_det(din,clk,rst,y);
input din,clk,rst;
output y;
wire q0,q1,q2;
d_ff m1(.d(din),.clk(clk),.rst(rst),.q(q0),.q_bar());
d_ff m2(.d(q0),.clk(clk),.rst(rst),.q(q1),.q_bar());
d_ff m3(.d(q1),.clk(clk),.rst(rst),.q(q2),.q_bar());
mux41 m4(.i0(1'b0),.i1(~q2),.i2(q2),.i3(1'b0),.s1(q0),.s0(q1),.y(y));
endmodule