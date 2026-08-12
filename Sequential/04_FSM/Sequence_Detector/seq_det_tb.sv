// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module seq_det_tb();
logic din,clk,rst;
logic y;

seq_det dut(.din(din),.clk(clk),.rst(rst),.y(y));

initial
clk=1'b0;
always #5 clk=~clk;

task initialize;
begin
din=1'b0;
rst=1'b0;
end
endtask

task rst_dut;
begin
@(negedge clk); rst=1'b1;
@(negedge clk); rst=1'b0;
end
endtask

task inputs(input m);
begin
@(negedge clk);
din=m;
end
endtask

initial
begin
initialize;
rst_dut;

inputs(0);
inputs(1);
inputs(0);

inputs(1);
inputs(0);
inputs(1);

inputs(1);
inputs(1);
inputs(0);
inputs(0);

$display("din=%d y=%d",din,y);

#50 $finish();
end
endmodule
