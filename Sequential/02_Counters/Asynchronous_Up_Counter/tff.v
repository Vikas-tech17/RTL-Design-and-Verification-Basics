module tff(t,clk,rst,qn,qbar);
input t,clk,rst;
output reg qn;
output qbar;
always @(negedge clk)
begin
if(rst)
qn<=1'b0;
else if(t)
qn<=~qn;
else
qn<=qn;
end
assign qbar=~qn;
endmodule