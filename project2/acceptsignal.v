module acceptsignal(clk,In,A,B);
input clk;
input[3:0] In;
output reg A;
output B;
assign B=|In;
integer a=0;
reg b;
always@(posedge clk)
begin
b=|In;
if(b!=0)
begin
a=a+1;
if (a<=1)
A=0;
else
A=1;
end
else
begin
A=0;
a=0;
end
end
endmodule
