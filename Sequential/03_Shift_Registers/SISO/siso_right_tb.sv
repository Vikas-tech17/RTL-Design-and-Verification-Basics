// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module siso_right_tb();
logic d,clk,rst;
logic qn;
logic [2:0]q;

siso_right dut(d,clk,rst,qn);

initial
clk=1'b0;
 
 always  #5 clk=~clk;
 
 task initialize;
 begin
 d=1'b0;
 rst=1'b0;
 end
 endtask
 
 task rst_dt;
 begin
 @(negedge clk)
 rst=1'b1;
 @(negedge clk)
 rst=1'b0;
 end
 endtask
 
task inputs(input a);
begin
d=a;
end
endtask

initial
begin
initialize;
rst_dt;
@(negedge clk) inputs(1'b1);
@(negedge clk) inputs(1'b0);
@(negedge clk) inputs(1'b1);
@(negedge clk) inputs(1'b0);
#20;
$finish;
end
endmodule



