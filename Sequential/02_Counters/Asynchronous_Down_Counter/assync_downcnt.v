module assync_downcnt(clk,rst,qn,qbar);
input clk,rst;
output [3:0]qn;
output [3:0]qbar;

tff m0(.t(1'b1),.clk(clk),.rst(rst),.qn(qn[0]),.qbar(qbar[0]));
tff m1(.t(1'b1),.clk(qbar[0]),.rst(rst),.qn(qn[1]),.qbar(qbar[1]));
tff m2(.t(1'b1),.clk(qbar[1]),.rst(rst),.qn(qn[2]),.qbar(qbar[2]));
tff m3(.t(1'b1),.clk(qbar[2]),.rst(rst),.qn(qn[3]),.qbar(qbar[3]));
endmodule 
