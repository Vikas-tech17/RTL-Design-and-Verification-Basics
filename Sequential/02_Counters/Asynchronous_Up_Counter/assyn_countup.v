module assyn_countup(clk,rst,qn);
input clk,rst;
output [3:0]qn;
tff m0(.t(1'b1),.clk(clk),.rst(rst),.qn(qn[0]),.qbar());
tff m1(.t(1'b1),.clk(qn[0]),.rst(rst),.qn(qn[1]),.qbar());
tff m2(.t(1'b1),.clk(qn[1]),.rst(rst),.qn(qn[2]),.qbar());
tff m3(.t(1'b1),.clk(qn[2]),.rst(rst),.qn(qn[3]),.qbar());

endmodule 
