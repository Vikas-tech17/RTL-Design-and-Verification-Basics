// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module assync_downcnt_tb();
logic clk,rst;
logic [3:0]qn;
logic[3:0]qbar;

assync_downcnt dut(clk,rst,qn,qbar);

initial
begin
clk=1'b0;
end

always #5 clk=~clk;

task initialize;
begin
rst=1'b0;
end
endtask

task reset_dt;
begin
@(posedge clk);
rst<=1'b1;
@(posedge clk);
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





