module judge_test(CLK,keyCols,keyRows,Key);

	input CLK;
	output[3:0] keyCols;
	input[3:0] keyRows;
	output reg[4:0] Key;
wire A;
wire[0:7] X;
wire[3:0] keycols;
sweepkeyboard_test skb_t(CLK,A,keycols);
assign keyCols=keycols;
acceptsignal asg(keyRows,A);
 assign X[0:3]=keycols;
 assign X[4:7]=keyRows;

always@(A)
	begin
		if(A==1)
			begin
				case(X)
					8'b1000_1000:
					begin
						 Key=5'H1;
					end
					8'b0100_1000:
					begin
						 Key=5'H2;
					end
					8'b0010_1000:
					begin
						 Key=5'H3;
					end
					8'b1000_0100:
					begin
						 Key=5'H4;
					end
					8'b0100_0100:
					begin
						 Key=5'H5;
					end
					8'b0010_0100:
					begin
						 Key=5'H6;
					end
					8'b1000_0010:
					begin
						 Key=5'H7;
					end
					8'b0100_0010:
					begin
						 Key=5'H8;
					end
					8'b0010_0010:
					begin
						 Key=5'H9;
					end
					8'b1000_0001:
					begin
						 Key=5'H0;
					end 
					8'b0100_0001:
					begin
						 Key=5'b11100;
					end
					8'b0010_0001:
					begin
						 Key=5'b11110;
					end
					8'b0001_0001:
					begin
						 Key=5'b11000;
					end
					default:
					begin
						 Key=5'b11111;
					end
				endcase			
			end
		else 
			 Key=5'b11111;		
	end

endmodule
