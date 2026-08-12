module decoder416(in,y);
input [3:0] in;
output reg [15:0]y;

always @(*)
begin
    y = 16'b0000_0000_0000_0001 << in;
end
endmodule