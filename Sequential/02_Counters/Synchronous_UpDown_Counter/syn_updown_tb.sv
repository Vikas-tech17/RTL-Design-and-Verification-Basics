// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module syn_ludcount_tb();
logic clk,rst,cntrl;
logic [3:0]dout;


syn_updown dut(clk,rst,cntrl,dout);

initial
begin
clk=1'b0;
cntrl=1'b0;
end
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

task cntrl_dt;
begin
@(negedge clk)
cntrl=1'b1;
#160;
@(negedge clk)
cntrl=1'b0;
end
endtask


initial
begin
initialize;
reset_dt;
cntrl_dt;
#500
$finish;
end
endmodule