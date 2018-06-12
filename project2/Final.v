module Final(CLK,keyRows,keyCols,display8,bitchoose);
input CLK;
input[3:0] keyRows;
output[3:0] keyCols;
output[7:0] display8;
output[3:0] bitchoose;

wire[15:0] out;
wire[4:0] Key;
wire CLK1;
wire CLK2;
wire CLK3;
wire[3:0] chosennum;


fredivider1 fred1(CLK,CLK1);
fredivider2 fred2(CLK,CLK2);
judgewhichkey jwk(CLK1,keyCols,keyRows,Key);
Move mb(CLK1,Key,out);



sweepdisplay sd(CLK2,out,display8,bitchoose);

endmodule
