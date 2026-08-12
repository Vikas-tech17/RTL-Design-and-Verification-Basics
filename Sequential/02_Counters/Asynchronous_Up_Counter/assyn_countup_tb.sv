// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module assyn_countup_tb();
logic clk,rst;
logic [3:0]qn;

integer i;

assyn_countup dut(clk,rst,qn);

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
@(posedge clk);
rst<=1'b1;
@(posedge clk);
rst<=1'b0;
end
endtask

/*task count_dt;
for(i=0;i<20;i=i+1)
begin
@(posedge clk);
$display("qn=%0d,%0t",qn,$time);
end
endtask
*/

initial
begin
initialize;
reset_dt;
//count_dt;
#200
$finish;
end
endmodule





