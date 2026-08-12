module nmux(sel,data,dout);
parameter SEL = 2;
localparam n=2**SEL;
input [n-1:0]data;
input  [SEL-1:0]sel;
output reg dout;
always @(*)
begin
dout = data[sel];
end
endmodule 

