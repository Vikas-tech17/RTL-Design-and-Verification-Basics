module mod12cnt(clk,rst,count);
input clk,rst;
output reg [3:0]count;

always @(posedge clk)
begin
    if (rst)
        count <= 4'b0;
    else if (count == 4'd11)
        count <= 4'b0;
    else
        count <= count + 1'b0001;
end
endmodule