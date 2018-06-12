module displaydecoder(data,display8);
input[3:0] data;
output reg[7:0] display8;
always@(data)
	begin
		case(data)
		4'H0: display8=8'b11000000;
		4'H1: display8=8'b11111001;
		4'H2: display8=8'b10100100;
		4'H3: display8=8'b10110000;
		4'H4: display8=8'b10011001;
		4'H5: display8=8'b10010010;
		4'H6: display8=8'b10000010;
		4'H7: display8=8'b11111000;
		4'H8: display8=8'b10000000;
		4'H9: display8=8'b10011000;
		4'Hf: display8=8'b11111111;
		endcase
	end
endmodule
