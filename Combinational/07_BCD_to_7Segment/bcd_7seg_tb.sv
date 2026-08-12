// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`timescale 1ns/1ns
module bcd_to_7seg_tb();
logic [3:0] in;
logic a,b,c,d,e,f,g;
integer i;

bcd_7seg dut(in,a,b,c,d,e,f,g);

task initialize;
begin
in=4'b0000;
end
endtask

task inputs;
input [3:0]bcd;
begin
    in= bcd;
end
endtask

initial
begin
initialize;
$display("in=%b a=%b b=%b c=%b d=%b e=%b f=%b g=%b",in,a,b,c,d,e,f,g);
 
for(i=0;i<10;i=i+1)
begin
inputs(i);
#10;
$display("in=%b a=%b b=%b c=%b d=%b e=%b f=%b g=%b",in,a,b,c,d,e,f,g);
end
#10;
$finish;
end
endmodule