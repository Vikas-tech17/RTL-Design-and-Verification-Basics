// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`define size 8
module ripple_adder_tb();
logic[`size-1:0]a;
logic[`size-1:0]b;
logic cin;
logic[`size-1:0]sum;
logic cout;
integer i;

ripple_adder dut(a,b,cin,sum,cout);

task initialize;
begin
{a,b,cin}=17'b0;

end
endtask

task inputs(input [7:0]m,[7:0]n,p);
begin
a=m;
b=n;
cin=p;
end
endtask

initial
begin
initialize;

for(i=0;i<512;i=i+1)
begin
inputs(i,i,i);
#5;
$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
end
#5120 $finish;
end
endmodule 

