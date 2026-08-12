// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`timescale 1ns/1ns

module pipo_shift_tb();
logic clk,rst,shld;
logic [3:0] b;
logic [3:0] q;

pipo_shift dut(b,clk,rst,shld,q);

initial
    clk = 0;

always #5 clk = ~clk;

task initialize;
begin
    rst   = 1'b0;
    shld = 1'b0;
    b= 4'b0000;
end
endtask


task reset_dt;
begin
    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0;
end
endtask

task load_dt(input [3:0] data);
begin
    @(negedge clk);
    shld = 1'b0;      
    b= data;
end
endtask

task shift_dt;
begin
    @(negedge clk);
    shld =1'b1; 
end
endtask


task display_out;
begin
    $display("time=%0t  shld=%b b=%b  q=%b",
              $time,shld,b,q);
end
endtask

initial
begin
    initialize;
    reset_dt;
	
    load_dt(4'b1010);
    @(negedge clk);
    display_out;
	
	shift_dt;

    /*shift_dt(1'b0);
    @(negedge clk);
    display_out;

    shift_dt(1'b0);
    @(negedge clk);
    display_out;

    shift_dt(1'b0);
    @(negedge clk);
    display_out;

    shift_dt(1'b0);
    @(negedge clk);
    display_out;*/

    #10;
    $finish;
end

endmodule