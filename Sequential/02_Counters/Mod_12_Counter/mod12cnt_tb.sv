// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`timescale 1ns/1ns
module mod12cnt_tb();
logic clk,rst;
logic [3:0]count;

mod12cnt dut(clk,rst,count);

initial 
clk=1'b0;

always #5 clk = ~clk;

task initialize;
rst=1'b0;
endtask

task reset_dt;
begin
@(negedge clk)
    rst=1'b1;
@(negedge clk)
    rst=1'b0;
end
endtask

initial
begin
initialize;
reset_dt;
#150;
$finish;
end
endmodule