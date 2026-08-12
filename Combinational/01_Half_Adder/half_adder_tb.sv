// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module half_adder_tb();
logic a,b;
logic s,c;

integer i;

half_adder dut(a,b,s,c);

task initialize;
{a,b}=2'b0;
endtask

task inputs(m,n);
{a,b}={m,n};
endtask

initial
begin
#5;
initialize;

for(i=0;i<4;i=i+1)
begin
inputs(i[1],i[0]);
#5;
$display("a=%b,b=%b,s=%b,c=%b %0t",a,b,s,c,$time);
end
#50;
$finish;
end
endmodule

