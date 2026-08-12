`include "s.v"
module srff(s,r,clk,rst,qn,qbar);
  input s,r,clk, rst;
 output reg qn;
 output qbar;
always @(posedge clk)
begin
    if(rst)
        qn <= 1'b0;
    else
    begin
        case({s,r
		})
            `HOLD: qn <= qn;
            `RESET: qn <= 1'b0;
            `SET: qn <= 1'b1;
            `INVALID: qn <=1'bx;
        endcase
    end
end
assign qbar = ~qn;
endmodule