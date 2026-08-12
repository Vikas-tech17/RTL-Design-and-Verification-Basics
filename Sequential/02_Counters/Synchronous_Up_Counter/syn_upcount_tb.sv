// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module syn_upcount_tb();
logic clk,rst;
logic [3:0]dout;


syn_upcount dut(clk,rst,dout);

initial
clk=1'b0;
always #5 clk=~clk;

task initialize;
begin
rst=1'b0;
end
endtask

task reset_dt;
begin
@(negedge clk);
rst<=1'b1;
@(negedge clk);
rst<=1'b0;
end
endtask

initial
begin
initialize;
reset_dt;
#200
$finish;
end
endmodule