// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

`timescale 1ns/1ps

module decoder416_tb();

logic [3:0] a;
logic [15:0] y;

integer i;

decoder416 dut(.i(a),.y(y));


task initialize;
begin
    a = 4'b0000;
end
endtask


task inputs;
input [3:0] x;
begin
    a= x;
    #10;
end
endtask

initial
begin
    initialize;
    for(i=0;i<16;i=i+1)
    begin
        inputs(i);
        $display("%b %016b",a,y);
    end
    $finish;
end

endmodule