module siso2_right(si,clk,rst,so);
input si,rst,clk;
output reg [3:0]so;
//reg [3:0]q;

always @(posedge clk)
begin
if(rst)
begin
so<=4'b0;
//q<=4'b0;
end
else
begin
//right shift

//q<=({si,q[3:1]});
//so<=q[0];

//left shift

//q<={q[2:0],si};
//so<=q[3];

//sipo
so<={so[2:0],si};
end
end
endmodule