module mul2(in,out);
input[7:0] in;
output[7:0] out;
wire m;
assign m=&in;
wire step;
assign step=in[3]|(in[2]&(in[1]|in[0]));
assign out[7]=m;
assign out[6]=in[5]|m;
assign out[5]=in[4]|m;
assign out[4]=step|m;
assign out[3]=(in[3]&in[0])|(in[2]&(~in[1])&(~in[0]))|m;
assign out[2]=((~in[3])&(~in[2])&in[1])|((~in[3])&in[2]&in[1]&in[0])|(in[3]&(~(in[2]|in[1]|in[0])))|m;
assign out[1]=((~in[3])&(~in[2])&in[0])|((~in[3])&in[2]&in[1]&(~in[0]))|(in[3]&(~(in[2]|in[1]|in[0])))|m;
assign out[0]=m;
endmodule
	
