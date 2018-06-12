module Move_state
(
	input	clk,
	input[4:0] in,
	output reg[15:0] out=1
);
	wire In;
	wire Reset;
	wire Start;
	wire timing;
	wire zero;
	assign In=~(&in);
	assign Reset=in[4]&in[3]&in[2]&in[1]&(~in[0]);
	assign Start=in[4]&in[3]&in[2]&(~in[1])&(~in[0]);
	assign timing=in[4]&in[3]&(~in[2])&(~in[1])&(~in[0]);
	assign zero=|out[15:8];
	wire[7:0] buffer1;
	wire[7:0] temp1;
	assign temp1[3:0]=in[3:0];
	assign temp1[7:4]=out[3:0];
	mul2 MUL2(temp1,buffer1);
	wire[7:0] buffer2;
	minus1 MINUS1(out[15:8],buffer2);
	reg taketime=0;
	
	reg	[2:0]state=2;
	parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3,S4 = 4;
	
	reg[15:0] buffer;
	reg judge=1;
	integer a=0;
	integer b=0;
always @ (posedge clk) 
begin
		/*if(In==0&&taketime==0)
			begin
			judge=1;
			end*/
	   if(In==0&&taketime==0&&state==0)
			begin
			if (b<500)
				begin
				b=b+1;
				end
			else
			begin
				b=0;
				state <= S2;
			end
			judge=1;
			end
		else if(In==0&&taketime==0&&state!=2)
			begin
			b=0;
			judge=1;
			end
		else if(In==1&&judge==1&&timing==0&&Start==0&&Reset==0&&taketime==0)
			begin
			b=0;
			case (state)
				S0:
					begin
						state <= S1;
						judge=0;
						buffer[3:0]=in[3:0];
						buffer[7:4]=out[3:0];
						buffer[15:8]=buffer1;
					end
				S1:
					begin
						state <= S1;
						judge=0;
						if (out[3]==1||out[2]==1||out[1]==1)
							begin
							buffer=16'b0100000000100000;
							state <= S4;
							end
						else
							begin
							buffer[3:0]=in[3:0];
							buffer[7:4]=temp1[7:4];
							buffer[15:8]=buffer1;
							end
					end
				S2:
					begin
						state <= S2;
					end
			endcase
			end
		else if(In==1&&judge==1&&timing==1&&state!=2)
			begin
			b=0;
			taketime=1;
			state <= S3;
			end
		else if(In==0&&taketime==1)
			begin
			b=0;
			if (zero==1)
				begin
				if (a<50)
					begin
					a=a+1;
					end
				else
					begin
					buffer[15:8]=buffer2;
					a=0;
					end
				end
			else
				begin
				taketime=0;
				state <= S0;
				end
			end
		else if(In==1&&judge==1&&Start==1&&taketime==0)
			begin
			b=0;
			state <= S0;
			end
		else if(In==1&&judge==1&&Reset==1&&taketime==0&&state!=2)
			begin
			b=0;
			state <= S0;
			end
		else if(In==1&&judge==0)
			begin
			b=0;
			a=0;
			case (state)
				S0:
					begin
						state <= S0;
					end
				S1:
					begin
						state <= S1;
					end
				S2:
					begin
						state <= S2;
					end
				S3:
					begin
						state <= S3;
					end
				S4:
					begin
						state <= S4;
					end
			endcase
			end
		
end

always@(state)	
begin
	case (state)
		S0:
			begin
				out<=0;
			end				
		S1:
			begin
				out<=buffer;
			end
		S2:
			begin
				out<=16'b11111111111111111;
			end
		S3:
			begin
				out<=buffer;
			end
		S4:
			begin
				out<=16'b0100000000100000;
			end
	endcase
end



endmodule