module Mux4bit41(D0,D1,D2,D3,sel,Y);
input[3:0] D0;
input[3:0] D1;
input[3:0] D2;
input[3:0] D3;
input[1:0] sel;
output reg[3:0] Y;
always@(sel or D0 or D1 or D2 or D3)
	begin
		case(sel)
			2'b00:  Y=D0;
			2'b01:  Y=D1;
			2'b10:  Y=D2;
			2'b11:  Y=D3;
		endcase
	end
endmodule
