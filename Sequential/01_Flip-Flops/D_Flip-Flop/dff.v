module dff(d,clk,rst,qn,qbar);
input d,clk,rst;
output reg qn,qbar;
always @(posedge clk or negedge rst )
begin
if(~rst)
qn<=1'b0;
else
qn<=d;
end
always @(qn)
begin
qbar<=~qn;
end
endmodule