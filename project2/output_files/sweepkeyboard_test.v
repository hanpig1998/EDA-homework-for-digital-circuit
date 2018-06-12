module sweepkeyboard_test
(
	input	clk,A,
	output reg[3:0] out
);

	reg		[1:0]state;
	
	parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
	integer a=0;

	always @ (posedge clk ) 
	begin
	if (A==1)
	begin
	a=a+1;
	if (a==2)
	begin
	a=0;
			case (state)
				S0:
						state <=S0;
				S1:
						state <=S1;
				S2:
						state <=S2;
				S3:
						state <=S3;

			endcase
	end
	end
	else 
	begin
	case (state)
				S0:
						state <=S1;
				S1:
						state <=S2;
				S2:
						state <=S3;
				S3:
						state <=S0;

			endcase
	end
	end

	always @ (state)
	begin
			case (state)
				S0:
						out = 4'b1000;
				S1:
						out = 4'b0100;
				S2:
						out = 4'b0010;
				S3:
						out = 4'b0001;
			endcase
	end

endmodule
