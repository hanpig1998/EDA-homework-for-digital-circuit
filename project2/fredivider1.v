module fredivider1(clk,CLK);
input clk;
output reg CLK;
integer a=0;
always@(posedge clk)
begin
	if(a<125000)
		CLK=0;
	if(a>=125000)
		CLK=1;
	if(a==249999)
		a=0;
	a=a+1;
end
endmodule