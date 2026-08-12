module moorefsm1 (clk,rst,din,y);
input clk,rst,din;
output  y;

parameter S0 = 3'b000;
parameter S1 = 3'b001;   
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;
parameter S5 = 3'b101;

reg [2:0] present_state,next_state;

always @(posedge clk)
begin
if (rst)
present_state <= S0;
else
present_state <= next_state;
end

always @(*)
begin
case(present_state)
S0: 
if(din)
next_state = S1;
else
next_state = S0;

S1:
 if(din)
next_state = S2;
else
next_state = S0;
    
S2:
 if(din)
next_state = S2;
else
next_state = S3;

S3: 
if(din)
next_state = S1;
else
next_state = S4;

S4:
 if(din)
next_state = S5;
else
next_state = S0;

S5:
 if(din)
next_state = S2;
else
next_state = S0;

default:next_state = S0;
endcase
end
assign y=(present_state==S5)? 1'b1:1'b0;
endmodule