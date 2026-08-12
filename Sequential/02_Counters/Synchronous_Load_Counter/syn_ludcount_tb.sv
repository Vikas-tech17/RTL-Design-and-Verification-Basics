// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module syn_ludcount_tb();
logic clk,rst,load;
logic [3:0]din;
logic [3:0]dout;


syn_ludcount dut(clk,rst,din,load,dout);

initial
begin
clk=1'b0;
din=4'b0;
load=1'b0;
end
always #5 clk=~clk;

task initialize;
begin
rst=1'b0;
end
endtask

task reset_dt(input [3:0]in,a);
begin
@(negedge clk);
rst<=1'b1;
@(negedge clk);
rst<=1'b0;
din=in;
load=a;
@(negedge clk)
load=1'b0;
end
endtask

/*task load_dt;
begin
//@(negedge clk)
//load=1'b1;
@(negedge clk)
load=1'b0;
end
endtask

/*task inputs(input [3:0]in,a);
begin
@(negedge clk)
din<=in;
load=a;
end
endtask*/

initial
begin
initialize;
reset_dt(4'b1001,1'b1);
//inputs(4'b1001,1'b1);
//load_dt;
#200
$finish;
end
endmodule