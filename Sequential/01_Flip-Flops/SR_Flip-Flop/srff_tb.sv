// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`include "s.v"
module srff_tb();
logic s,r,clk,rst;
logic qn,qbar;

srff dut(s,r,clk,rst,qn,qbar);

initial
    clk = 0;
	
always #5 clk = ~clk;

task initialize;
begin
   {s,r}=2'b00;
    rst = 1'b1;
end
endtask

task reset_dut;
begin
    @(negedge clk) rst =1'b1;
    @(negedge clk) rst =1'b0;
end
endtask

task inputs(input [1:0] x);
begin
    @(negedge clk)
    begin
        {s,r}=x;
    end
end
endtask

initial
begin
    initialize;
    reset_dut;

    inputs(`INVALID);
    inputs(`RESET);
    inputs(`SET);
    inputs(`HOLD);
    #20 $finish;
end
endmodule