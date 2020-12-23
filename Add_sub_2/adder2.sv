//adder 26 bit
module adder_26bit(in1,in2,S,Cout);

input [25:0]in1,in2;
output [25:0]S;
output Cout;

logic [25:0]out1,out2,out3;
logic [24:0]out4;

IHA bit0(in1[0],in2[0],1'b0,out1[0],out2[0],out3[0],out4[0],S[0]);
IFA bit1(in1[1],in2[1],out1[0],out2[0],out3[0],out4[0],out1[1],out2[1],out3[1],out4[1],S[1]);
IFA bit2(in1[2],in2[2],out1[1],out2[1],out3[1],out4[1],out1[2],out2[2],out3[2],out4[2],S[2]);
IFA bit3(in1[3],in2[3],out1[2],out2[2],out3[2],out4[2],out1[3],out2[3],out3[3],out4[3],S[3]);
IFA bit4(in1[4],in2[4],out1[3],out2[3],out3[3],out4[3],out1[4],out2[4],out3[4],out4[4],S[4]);
IFA bit5(in1[5],in2[5],out1[4],out2[4],out3[4],out4[4],out1[5],out2[5],out3[5],out4[5],S[5]);
IFA bit6(in1[6],in2[6],out1[5],out2[5],out3[5],out4[5],out1[6],out2[6],out3[6],out4[6],S[6]);
IFA bit7(in1[7],in2[7],out1[6],out2[6],out3[6],out4[6],out1[7],out2[7],out3[7],out4[7],S[7]);
IFA bit8(in1[8],in2[8],out1[7],out2[7],out3[7],out4[7],out1[8],out2[8],out3[8],out4[8],S[8]);
IFA bit9(in1[9],in2[9],out1[8],out2[8],out3[8],out4[8],out1[9],out2[9],out3[9],out4[9],S[9]);
IFA bit10(in1[10],in2[10],out1[9],out2[9],out3[9],out4[9],out1[10],out2[10],out3[10],out4[10],S[10]);
IFA bit11(in1[11],in2[11],out1[10],out2[10],out3[10],out4[10],out1[11],out2[11],out3[11],out4[11],S[11]);
IFA bit12(in1[12],in2[12],out1[11],out2[11],out3[11],out4[11],out1[12],out2[12],out3[12],out4[12],S[12]);
IFA bit13(in1[13],in2[13],out1[12],out2[12],out3[12],out4[12],out1[13],out2[13],out3[13],out4[13],S[13]);
IFA bit14(in1[14],in2[14],out1[13],out2[13],out3[13],out4[13],out1[14],out2[14],out3[14],out4[14],S[14]);
IFA bit15(in1[15],in2[15],out1[14],out2[14],out3[14],out4[14],out1[15],out2[15],out3[15],out4[15],S[15]);
IFA bit16(in1[16],in2[16],out1[15],out2[15],out3[15],out4[15],out1[16],out2[16],out3[16],out4[16],S[16]);
IFA bit17(in1[17],in2[17],out1[16],out2[16],out3[16],out4[16],out1[17],out2[17],out3[17],out4[17],S[17]);
IFA bit18(in1[18],in2[18],out1[17],out2[17],out3[17],out4[17],out1[18],out2[18],out3[18],out4[18],S[18]);
IFA bit19(in1[19],in2[19],out1[18],out2[18],out3[18],out4[18],out1[19],out2[19],out3[19],out4[19],S[19]);
IFA bit20(in1[20],in2[20],out1[19],out2[19],out3[19],out4[19],out1[20],out2[20],out3[20],out4[20],S[20]);
IFA bit21(in1[21],in2[21],out1[20],out2[20],out3[20],out4[20],out1[21],out2[21],out3[21],out4[21],S[21]);
IFA bit22(in1[22],in2[22],out1[21],out2[21],out3[21],out4[21],out1[22],out2[22],out3[22],out4[22],S[22]);
IFA bit23(in1[23],in2[23],out1[22],out2[22],out3[22],out4[22],out1[23],out2[23],out3[23],out4[23],S[23]);
IFA bit24(in1[24],in2[24],out1[23],out2[23],out3[23],out4[23],out1[24],out2[24],out3[24],out4[24],S[24]);
IFA bit25(in1[25],in2[25],out1[24],out2[24],out3[24],out4[24],out1[25],out2[25],out3[25],Cout,S[25]);

endmodule



//adder 25 bit

module adder_25bit(in1,in2,S,Cout);

input [24:0]in1,in2;
output [24:0]S;
output Cout;

logic [24:0]out1,out2,out3;
logic [23:0]out4;

IHA bit0(in1[0],in2[0],1'b0,out1[0],out2[0],out3[0],out4[0],S[0]);
IFA bit1(in1[1],in2[1],out1[0],out2[0],out3[0],out4[0],out1[1],out2[1],out3[1],out4[1],S[1]);
IFA bit2(in1[2],in2[2],out1[1],out2[1],out3[1],out4[1],out1[2],out2[2],out3[2],out4[2],S[2]);
IFA bit3(in1[3],in2[3],out1[2],out2[2],out3[2],out4[2],out1[3],out2[3],out3[3],out4[3],S[3]);
IFA bit4(in1[4],in2[4],out1[3],out2[3],out3[3],out4[3],out1[4],out2[4],out3[4],out4[4],S[4]);
IFA bit5(in1[5],in2[5],out1[4],out2[4],out3[4],out4[4],out1[5],out2[5],out3[5],out4[5],S[5]);
IFA bit6(in1[6],in2[6],out1[5],out2[5],out3[5],out4[5],out1[6],out2[6],out3[6],out4[6],S[6]);
IFA bit7(in1[7],in2[7],out1[6],out2[6],out3[6],out4[6],out1[7],out2[7],out3[7],out4[7],S[7]);
IFA bit8(in1[8],in2[8],out1[7],out2[7],out3[7],out4[7],out1[8],out2[8],out3[8],out4[8],S[8]);
IFA bit9(in1[9],in2[9],out1[8],out2[8],out3[8],out4[8],out1[9],out2[9],out3[9],out4[9],S[9]);
IFA bit10(in1[10],in2[10],out1[9],out2[9],out3[9],out4[9],out1[10],out2[10],out3[10],out4[10],S[10]);
IFA bit11(in1[11],in2[11],out1[10],out2[10],out3[10],out4[10],out1[11],out2[11],out3[11],out4[11],S[11]);
IFA bit12(in1[12],in2[12],out1[11],out2[11],out3[11],out4[11],out1[12],out2[12],out3[12],out4[12],S[12]);
IFA bit13(in1[13],in2[13],out1[12],out2[12],out3[12],out4[12],out1[13],out2[13],out3[13],out4[13],S[13]);
IFA bit14(in1[14],in2[14],out1[13],out2[13],out3[13],out4[13],out1[14],out2[14],out3[14],out4[14],S[14]);
IFA bit15(in1[15],in2[15],out1[14],out2[14],out3[14],out4[14],out1[15],out2[15],out3[15],out4[15],S[15]);
IFA bit16(in1[16],in2[16],out1[15],out2[15],out3[15],out4[15],out1[16],out2[16],out3[16],out4[16],S[16]);
IFA bit17(in1[17],in2[17],out1[16],out2[16],out3[16],out4[16],out1[17],out2[17],out3[17],out4[17],S[17]);
IFA bit18(in1[18],in2[18],out1[17],out2[17],out3[17],out4[17],out1[18],out2[18],out3[18],out4[18],S[18]);
IFA bit19(in1[19],in2[19],out1[18],out2[18],out3[18],out4[18],out1[19],out2[19],out3[19],out4[19],S[19]);
IFA bit20(in1[20],in2[20],out1[19],out2[19],out3[19],out4[19],out1[20],out2[20],out3[20],out4[20],S[20]);
IFA bit21(in1[21],in2[21],out1[20],out2[20],out3[20],out4[20],out1[21],out2[21],out3[21],out4[21],S[21]);
IFA bit22(in1[22],in2[22],out1[21],out2[21],out3[21],out4[21],out1[22],out2[22],out3[22],out4[22],S[22]);
IFA bit23(in1[23],in2[23],out1[22],out2[22],out3[22],out4[22],out1[23],out2[23],out3[23],out4[23],S[23]);
IFA bit24(in1[24],in2[24],out1[23],out2[23],out3[23],out4[23],out1[24],out2[24],out3[24],Cout,S[24]);

endmodule
// adđer 9bit

module adder_9bit(in1,in2,S,Cout);

input [8:0]in1,in2;
output [8:0]S;
output Cout;

logic [8:0]out1,out2,out3;
logic [7:0]out4;

IHA bit0(in1[0],in2[0],1'b0,out1[0],out2[0],out3[0],out4[0],S[0]);
IFA bit1(in1[1],in2[1],out1[0],out2[0],out3[0],out4[0],out1[1],out2[1],out3[1],out4[1],S[1]);
IFA bit2(in1[2],in2[2],out1[1],out2[1],out3[1],out4[1],out1[2],out2[2],out3[2],out4[2],S[2]);
IFA bit3(in1[3],in2[3],out1[2],out2[2],out3[2],out4[2],out1[3],out2[3],out3[3],out4[3],S[3]);
IFA bit4(in1[4],in2[4],out1[3],out2[3],out3[3],out4[3],out1[4],out2[4],out3[4],out4[4],S[4]);
IFA bit5(in1[5],in2[5],out1[4],out2[4],out3[4],out4[4],out1[5],out2[5],out3[5],out4[5],S[5]);
IFA bit6(in1[6],in2[6],out1[5],out2[5],out3[5],out4[5],out1[6],out2[6],out3[6],out4[6],S[6]);
IFA bit7(in1[7],in2[7],out1[6],out2[6],out3[6],out4[6],out1[7],out2[7],out3[7],out4[7],S[7]);
IFA bit8(in1[8],in2[8],out1[7],out2[7],out3[7],out4[7],out1[8],out2[8],out3[8],Cout,S[8]);

endmodule



/////////////


// adder 8bit
// Su dung de compare exponent cua 2 so floating point
//Neu so nao nho hon thi dich phai cho den khi exponent bang nhau
module adder_8bit(in1,in2,S,Cout);

input [7:0]in1,in2;
output [7:0]S;
output Cout;

logic [7:0]out1,out2,out3;
logic [6:0]out4;

IHA bit0(in1[0],in2[0],1'b0,out1[0],out2[0],out3[0],out4[0],S[0]);
IFA bit1(in1[1],in2[1],out1[0],out2[0],out3[0],out4[0],out1[1],out2[1],out3[1],out4[1],S[1]);
IFA bit2(in1[2],in2[2],out1[1],out2[1],out3[1],out4[1],out1[2],out2[2],out3[2],out4[2],S[2]);
IFA bit3(in1[3],in2[3],out1[2],out2[2],out3[2],out4[2],out1[3],out2[3],out3[3],out4[3],S[3]);
IFA bit4(in1[4],in2[4],out1[3],out2[3],out3[3],out4[3],out1[4],out2[4],out3[4],out4[4],S[4]);
IFA bit5(in1[5],in2[5],out1[4],out2[4],out3[4],out4[4],out1[5],out2[5],out3[5],out4[5],S[5]);
IFA bit6(in1[6],in2[6],out1[5],out2[5],out3[5],out4[5],out1[6],out2[6],out3[6],out4[6],S[6]);
IFA bit7(in1[7],in2[7],out1[6],out2[6],out3[6],out4[6],out1[7],out2[7],out3[7],Cout,S[7]);

endmodule



///////10 bit
module adder_10bit(in1,in2,S,Cout);

input [9:0]in1,in2;
output [9:0]S;
output Cout;

logic [9:0]out1,out2,out3;
logic [8:0]out4;

IHA bit0(in1[0],in2[0],1'b0,out1[0],out2[0],out3[0],out4[0],S[0]);
IFA bit1(in1[1],in2[1],out1[0],out2[0],out3[0],out4[0],out1[1],out2[1],out3[1],out4[1],S[1]);
IFA bit2(in1[2],in2[2],out1[1],out2[1],out3[1],out4[1],out1[2],out2[2],out3[2],out4[2],S[2]);
IFA bit3(in1[3],in2[3],out1[2],out2[2],out3[2],out4[2],out1[3],out2[3],out3[3],out4[3],S[3]);
IFA bit4(in1[4],in2[4],out1[3],out2[3],out3[3],out4[3],out1[4],out2[4],out3[4],out4[4],S[4]);
IFA bit5(in1[5],in2[5],out1[4],out2[4],out3[4],out4[4],out1[5],out2[5],out3[5],out4[5],S[5]);
IFA bit6(in1[6],in2[6],out1[5],out2[5],out3[5],out4[5],out1[6],out2[6],out3[6],out4[6],S[6]);
IFA bit7(in1[7],in2[7],out1[6],out2[6],out3[6],out4[6],out1[7],out2[7],out3[7],out4[7],S[7]);
IFA bit8(in1[8],in2[8],out1[7],out2[7],out3[7],out4[7],out1[8],out2[8],out3[8],out4[8],S[8]);
IFA bit9(in1[9],in2[9],out1[8],out2[8],out3[8],out4[8],out1[9],out2[9],out3[9],Cout,S[9]);

endmodule

///////////////////////IHA///////////////////
module IHA(a,b,cin,out1,out2,out3,out4,s);

input a,b,cin;
output out1, out2, out4,s,out3;

assign out1 = a & b;
assign out2 = a ^ b;
assign out4 = out1 | (out2 & cin);
assign s = out2 ^ cin;
assign out3 = cin;

endmodule

/////////////////////IFA///////////////////

module IFA(a,b,in1, in2, in3, in4, out1, out2, out3,out4, s);

input a,b, in1, in2, in3, in4;
output out1, out2, out3, out4, s;

assign out1 = (a &b)|((a^b)&in1);
assign out2 = (a^b)&(in2);
assign out3 = in3;
assign out4 = (out1)|(in3&out2);
assign s = (a^b)^in4;

endmodule

