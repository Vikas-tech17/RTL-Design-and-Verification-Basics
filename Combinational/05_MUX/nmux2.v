module nmux2(sel,data,dout);
parameter SEL = 3;
localparam n=2**SEL;

input [n-1:0]data;
input  [SEL-1:0]sel;
output dout;

nmux #(.SEL(3)) m1(.sel(sel),.data(data),.dout(dout));
endmodule
 
