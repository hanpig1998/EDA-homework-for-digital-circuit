module fredivider2(clk,CLK);
input clk;
output reg CLK;
integer a=0;
always@(posedge clk)
begin
	if(a<50000)
		CLK=0;
	if(a>50000)
		CLK=1;
	if(a==99999)
		a=0;
	a=a+1;
end
endmodule