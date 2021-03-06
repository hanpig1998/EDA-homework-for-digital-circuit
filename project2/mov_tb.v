`timescale 1ns/1ns
module mov_tb;
	wire [15:0]Out;
	reg [4:0]In;
	reg clock;
	Move u1(.out(Out),.in(In),.clk(clock));
	parameter ton=1,toff=1;
	initial
		begin
			In=00001;
			#8 In=10111;
			#2 In=11110;
			#8 In=10111;
			#2 In=00010;
			#8 In=10111;
			#2 In=11100;
			#8 In=10111;
			#2 In=00001;
			#8 In=10111;
			#2 In=00101;
			#8 In=10111;
			#2 In=01001;
			#8 In=10111;
			#2 In=10110;
			#8 In=10111;
			#2 In=00001;
			#8 In=10111;
			#2 In=01111;
			#8 In=10111;
			#2 In=00001;
			#8 In=10111;
			#2 In=11000;
			#8 In=10111;
			#8000 In=11100;		
		end
		always
			begin
			clock=0;
			#ton clock=1;
			#toff clock=0;
			end
		/*initial
		begin
		$monitor("key=%d keycols=%d keyrows=%d clock=%d",key,keycols,keyrows,clock);
		end*/
		endmodule
		
			

