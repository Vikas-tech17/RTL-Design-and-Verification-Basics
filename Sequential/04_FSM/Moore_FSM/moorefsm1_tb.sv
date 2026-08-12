// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`timescale 1ns/1ns
module moorefsm1_tb();
logic clk,rst,din;
logic y;
logic [2:0] present_state,next_state;

moorefsm1 dut(clk,rst,din,y);

initial
clk=1'b0;
always #5 clk = ~clk;

task initialize;
begin
din=1'b0;
rst=1'b0;
end
endtask

task reset_fsm;
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end
endtask

task inputs_bit(input data);
begin
 @(negedge clk);
    din = data;
end
endtask

initial
begin
initialize;
reset_fsm;
inputs_bit(1);
inputs_bit(1);
inputs_bit(1);
inputs_bit(0);
inputs_bit(0);
inputs_bit(1);
inputs_bit(1);
inputs_bit(0);
inputs_bit(0);
inputs_bit(1);
inputs_bit(1);
#130;
$finish;
end
endmodule