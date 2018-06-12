module minus1
(
	input[7:0] in,
	output[7:0] out
);
wire zero;
assign zero=in[3]|in[2]|in[1]|in[0];
assign out[0]=~in[0];
assign out[1]=(~(in[0]^in[1]))&zero;
assign out[2]=((~in[3])&in[2]&(~in[1])&in[0])|((~in[3])&in[2]&in[1]&(~in[0]))|((~in[3])&in[2]&in[1]&in[0])|(in[3]&(~in[2])&(~in[1])&(~in[0]));
assign out[3]=(in[3]&(~in[2])&(~in[1])&in[0])|(~zero);
assign out[4]=in[6]|(in[5]&in[4]&zero)|(in[5]&(~in[4])&(~zero))|((~in[5])&in[4]&zero);
assign out[5]=in[6]|(in[5]&in[4])|(in[5]&(~in[4])&zero);
assign out[6]=0;
assign out[7]=0;
endmodule