// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module siso2_right_tb();
logic si,clk,rst;
logic [3:0] so;
//logic [3:0]q;

siso2_right dut(si,clk,rst,so);

initial
clk=1'b0;
 
 always  #5 clk=~clk;
 
 task initialize;
 begin
 si=1'b0;
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
si=a;
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



