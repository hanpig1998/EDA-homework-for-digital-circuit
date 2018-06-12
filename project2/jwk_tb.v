`timescale 1ns/1ns
module jwk_tb;
	wire [4:0]key;
	wire [3:0]keycols;
	reg [3:0]keyrows;
	reg clock;
	judgewhichkey u1(.keyCols(keycols),.keyRows(keyrows),.Key(key),.CLK(clock));
	parameter ton=1,toff=1;
	initial
		begin
			keyrows=0001;
			#8 keyrows=0000;
			#2 keyrows=0001;
			#1 keyrows=0000;
			#2 keyrows=0001;
			#8 keyrows=0000;
			#2 keyrows=0001;
			#8 keyrows=0000;
			#2 keyrows=0001;
			#2 keyrows=1010;
			#8 keyrows=0000;
			#2 keyrows=1010;
			#8 keyrows=0000;
			#2 keyrows=1010;
			#8 keyrows=0000;
			#2 keyrows=0100;
			#8 keyrows=0000;
			#2 keyrows=0100;
			#8 keyrows=0000;
			#2 keyrows=0100;
			#8 keyrows=0000;
			#2 keyrows=0100;
			#8 keyrows=0000;
			#2 keyrows=1000;
			#8 keyrows=0000;
			#2 keyrows=1000;
			#8 keyrows=0000;
			#2 keyrows=1000;
			#8 keyrows=0000;
			#2 keyrows=1000;
			#8 keyrows=0000;
			#2 keyrows=0001;
			#8 keyrows=0000;	
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
		
			

