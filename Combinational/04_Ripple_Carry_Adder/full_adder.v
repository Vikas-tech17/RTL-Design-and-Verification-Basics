module full_adder(a,b,cin,s,c);
input a,b,cin;
output reg s,c;

always @(*) 
begin
    s  = a ^ b ^ cin;
    c = (a & b) | (b & cin) | (a & cin);
end
endmodule