module sweepdisplay(CLK,displaydata,display8,choosebit);
input CLK;
input[15:0] displaydata;
output[7:0] display8;
output[3:0] choosebit;

wire[1:0] sel;
wire[3:0] out1;
wire[3:0] out2;
wire[3:0] out3;
wire[3:0] out4;
wire[3:0] chosennum;

assign out4=displaydata[11:8];
assign out3=displaydata[15:12];
assign out2=displaydata[3:0];
assign out1=displaydata[7:4];

twobitcounter tbc(CLK,sel);
Mux4bit41 mux4b41(out1,out2,out3,out4,sel,chosennum);
displaydecoder dspd(chosennum,display8);
twofourdecoder tfd(sel,choosebit);

endmodule