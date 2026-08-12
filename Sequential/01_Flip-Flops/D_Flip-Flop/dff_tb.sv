// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module dff_tb();
logic d,clk,rst;
logic qn,qbar;
dff dut(d,clk,rst,qn,qbar);
initial
begin
clk=0;
end
always 
#5 clk=~clk;
task initialize;
begin
d=1'b0;
rst=1'b0;
end 
endtask
task rst_dut;
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end 
endtask
task inputs (input k);
begin
@(negedge clk) d=k;
end 
endtask
initial 
begin
initialize;
rst_dut;
inputs(1'b0);
inputs(1'b1);
inputs(1'b0);
inputs(1'b1);
#20;
$finish;
end
endmodule