module fredivider3(clk,CLK);
input clk;
output reg CLK;
integer a=0;
always@(posedge clk)
begin
	if(a<12500000)
		CLK=0;
	if(a>12500000)
		CLK=1;
	if(a==25000000)
		a=0;
	a=a+1;
end
endmodule