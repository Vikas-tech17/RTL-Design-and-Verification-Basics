module siso_right(d,clk,rst,qn);
input d,rst,clk;
output reg qn;
reg [2:0]q;
always @(posedge clk)
begin
if(rst)
begin
qn=1'b0;
q=3'b0;
end
else 
begin
q[0]<=d;
q[1]<=q[0];
q[2]<=q[1];
qn<=q[2];
end
end 
endmodule