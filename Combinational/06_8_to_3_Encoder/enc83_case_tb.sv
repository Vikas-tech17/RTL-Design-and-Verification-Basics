// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module enc83_case_tb();
logic [7:0]in;
logic [2:0]y;
integer i;
enc83_case dut(in,y);

task initialize;
in=8'b0;
endtask

task inputs(input[7:0]a);
in=a;
endtask

initial 
begin
initialize;
i=0;
repeat(256)
//for(i=0;i<256;i=i+1)
begin
inputs(i);
#5
$display("in=%b y=%b %0t",in,y,$time);
i=i+1;
end
#2600;
$finish();
end
endmodule