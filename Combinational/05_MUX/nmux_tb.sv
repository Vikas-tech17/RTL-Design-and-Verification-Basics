// SystemVerilog testbench converted from original Verilog testbench.
// Functional behavior preserved; simulate before final publication.

module nmux_tb();

parameter SEL= 3;
localparam n= 2**SEL;

logic  [n-1:0]data;
logic  [SEL-1:0]sel;
logic dout;

integer i,j;

nmux #(.SEL(SEL)) dut(sel,data,dout);

task initialize;
begin
sel=3'b0;
data=8'b0;
end
endtask

task inputs(input[2:0]n) ;
begin
data=8'b00110110;
sel=n;
end
endtask

initial 
begin
initialize;
for(i=0;i<8;i=i+1)
begin
inputs(i);
#5
$display("sel=%b data=%b dout=%b",sel,data,dout);
end
#100 $finish;
end
endmodule
