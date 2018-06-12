module twobitcounter(clk,out);
input clk;
output reg[1:0] out;
reg	[1:0]state;
parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;

always@(posedge clk)
	begin
		case(state)
			S0: state<=S1;
			S1: state<=S2;
			S2: state<=S3;
			S3: state<=S0;
		endcase
	end

always@(state)
	begin
		case(state)
			S0: out<=2'b00;
			S1: out<=2'b01;
			S2: out<=2'b10;
			S3: out<=2'b11;
		endcase
	end


endmodule