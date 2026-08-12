module syn_updown(clk,rst,cntrl,dout);
input clk,rst,cntrl;
output reg [3:0]dout;
always @(posedge clk)
begin
if(rst)
dout<=4'b0;
else if (cntrl)
dout<=dout+4'b0001;
else if(~cntrl)
dout<=dout-4'b0001;
else
dout<=dout;
end
endmodule