module syn_ludcount(clk,rst,din,load,dout);
input clk,rst,load;
input [3:0]din;
output reg [3:0]dout;
always @(posedge clk)
begin
if(rst)
dout<=4'b0;
else if(load)
dout<=din;
else if(~load)
dout<=dout+4'b0001;
else
dout<=dout;
end
endmodule