module syn_upcount(clk,rst,dout);
input clk,rst;
output reg [3:0]dout;
always @(posedge clk)
begin
if(rst)
dout<=4'b0;
else
dout<=dout-4'b0001;
//dout<=dout+4'b0001;
end
endmodule