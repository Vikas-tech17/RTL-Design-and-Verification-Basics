`include "j.v"
module jkff(j,k,clk,rst,qn,qbar);
  input j,k,clk, rst;
 output reg qn;
 output qbar;
always @(posedge clk)
begin
    if(rst)
        qn <= 1'b0;
    else
    begin
        case({j,k})
            `HOLD: qn <= qn;
            `RESET: qn <= 1'b0;
            `SET: qn <= 1'b1;
            `TOGGLE: qn <= ~qn;
        endcase
    end
end
assign qbar = ~qn;
endmodule