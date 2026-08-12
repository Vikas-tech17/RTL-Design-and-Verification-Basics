// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`timescale 1ns/1ns
module addsub_tb();
logic [3:0]a,b;
logic cin,m;
logic cout,v;
logic [3:0]s;

integer i;

addsub dut(a,b,cin,m,s,cout,v);

task initialize;
begin
{a,b}=8'b0;
{cin,m}=2'b00; 
end
endtask

task cntrl_add;
begin
#2;
m=1'b0;
cin=1'b0;
end
endtask  

task cntrl_sub;
begin
#2;
m=1'b1;
cin=1'b1;
end
endtask

task inputs(input [3:0]f,s);
begin
a=f;
b=s;
end
endtask

initial
begin
initialize;
cntrl_add;
for(i=0;i<16;i=i+1)
begin
inputs(i,i);
#5;
$display("a=%b,b=%b,cin=%b,m=%b,s=%b,cout=%b,v=%b %0t",a,b,cin,m,s,cout,v,$time);
end 
cntrl_sub;
for(i=0;i<16;i=i+1)
begin
inputs(i,i);
#5;
$display("a=%b,b=%b,cin=%b,m=%b,s=%b,cout=%b,v=%b %0t",a,b,cin,m,s,cout,v,$time);
end
$finish();
end
endmodule




