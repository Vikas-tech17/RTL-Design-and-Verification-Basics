`define size 8
module ripple_adder(a,b,cin,sum,cout);
input[`size-1:0]a;
input[`size-1:0]b;
input cin;
output[`size-1:0]sum;
output cout;
wire [`size-2:0]w;

genvar i;
 
full_adder fa1(.a(a[0]),.b(b[0]),.cin(cin),.s(sum[0]),.c(w[0]));

generate
for(i=1;i<(`size-1);i=i+1)
begin : ripple
full_adder fa2(.a(a[i]),.b(b[i]),.cin(w[i-1]),.s(sum[i]),.c(w[i]));
end
endgenerate
full_adder fa3(.a(a[`size-1]),.b(b[`size-1]),.cin(w[`size-2]),.s(sum[`size-1]),.c(cout));
endmodule