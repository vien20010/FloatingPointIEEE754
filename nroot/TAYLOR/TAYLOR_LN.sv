
module TAYLOR_LN(
	in,
	out
);

input [32 -1 : 0] in;
output [32 - 1:0] out;

logic [32 -1 :0 ] num0375    = 32'b00111110110000000000000000000000;
logic [32 -1 :0 ] num_0375    = 32'b10111110110000000000000000000000;
logic [32 -1 :0 ] num_ln0375 = 32'b1_01111110_11110110001011110100000;

// x_a_1 : (x - 0.375) ^ 1
logic [31:0] x_a_1;

add_sub X_A(.A(in[31:0]), .B(num_0375[31:0]), .result(x_a_1[31:0]), .checkequation(1'b0));

logic [31:0] x_a_a_1;
logic [31:0]  x_a_a_2, x_a_a_3, x_a_a_4, x_a_a_5, x_a_a_6, x_a_a_7, x_a_a_8, x_a_a_9, x_a_a_10;

// x_a_a_i = ((x - 0.375) / 0.375) ^ i

div X_A_A(.A(x_a_1[31:0]), .B(num0375[31:0]), .result(x_a_a_1[31:0]));
mult X_A_2(.A(x_a_a_1[31:0]), .B(x_a_a_1[31:0]), .result(x_a_a_2[31:0]));
mult X_A_3(.A(x_a_a_1[31:0]), .B(x_a_a_2[31:0]), .result(x_a_a_3[31:0]));
mult X_A_4(.A(x_a_a_1[31:0]), .B(x_a_a_3[31:0]), .result(x_a_a_4[31:0]));
mult X_A_5(.A(x_a_a_1[31:0]), .B(x_a_a_4[31:0]), .result(x_a_a_5[31:0]));
mult X_A_6(.A(x_a_a_1[31:0]), .B(x_a_a_5[31:0]), .result(x_a_a_6[31:0]));
mult X_A_7(.A(x_a_a_1[31:0]), .B(x_a_a_6[31:0]), .result(x_a_a_7[31:0]));
mult X_A_8(.A(x_a_a_1[31:0]), .B(x_a_a_7[31:0]), .result(x_a_a_8[31:0]));
mult X_A_9(.A(x_a_a_1[31:0]), .B(x_a_a_8[31:0]), .result(x_a_a_9[31:0]));
mult X_A_10(.A(x_a_a_1[31:0]), .B(x_a_a_9[31:0]), .result(x_a_a_10[31:0]));

logic [31:0] x_a_a__2, x_a_a__3, x_a_a__4, x_a_a__5, x_a_a__6, x_a_a__7, x_a_a__8, x_a_a__9, x_a_a__10;

// x_a_a__i = ( ( x - 0.375 ) / 0.375 ) ^ i / i
div X_A_A__2(.A(x_a_a_2[31:0]), .B(32'b01000000000000000000000000000000), .result(x_a_a__2[31:0]));
div X_A_A__3(.A(x_a_a_3[31:0]), .B(32'b01000000010000000000000000000000), .result(x_a_a__3[31:0]));
div X_A_A__4(.A(x_a_a_4[31:0]), .B(32'b01000000100000000000000000000000), .result(x_a_a__4[31:0]));
div X_A_A__5(.A(x_a_a_5[31:0]), .B(32'b01000000101000000000000000000000), .result(x_a_a__5[31:0]));
div X_A_A__6(.A(x_a_a_6[31:0]), .B(32'b01000000110000000000000000000000), .result(x_a_a__6[31:0]));
div X_A_A__7(.A(x_a_a_7[31:0]), .B(32'b01000000111000000000000000000000), .result(x_a_a__7[31:0]));
div X_A_A__8(.A(x_a_a_8[31:0]), .B(32'b01000001000000000000000000000000), .result(x_a_a__8[31:0]));
div X_A_A__9(.A(x_a_a_9[31:0]), .B(32'b01000001000100000000000000000000), .result(x_a_a__9[31:0]));
div X_A_A__10(.A(x_a_a_10[31:0]), .B(32'b01000001001000000000000000000000), .result(x_a_a__10[31:0]));

// sum_i : taylor(i)
logic [31:0] sum_1, sum_2,sum_3,sum_4,sum_5,sum_6, sum_7, sum_8, sum_9, sum_10;
add_sub SUM_01(.A(num_ln0375[31:0]), .B(x_a_a_1[31:0]), .checkequation(1'b0), .result(sum_1[31:0])  );
add_sub SUM_02(.A(sum_1[31:0]), .B(x_a_a__2[31:0]), .checkequation(1'b1), .result(sum_2[31:0])  );
add_sub SUM_03(.A(sum_2[31:0]), .B(x_a_a__3[31:0]), .checkequation(1'b0), .result(sum_3[31:0])  );
add_sub SUM_04(.A(sum_3[31:0]), .B(x_a_a__4[31:0]), .checkequation(1'b1), .result(sum_4[31:0])  );
add_sub SUM_05(.A(sum_4[31:0]), .B(x_a_a__5[31:0]), .checkequation(1'b0), .result(sum_5[31:0])  );
add_sub SUM_06(.A(sum_5[31:0]), .B(x_a_a__6[31:0]), .checkequation(1'b1), .result(sum_6[31:0])  );
add_sub SUM_07(.A(sum_6[31:0]), .B(x_a_a__7[31:0]), .checkequation(1'b1), .result(sum_7[31:0])  );
add_sub SUM_08(.A(sum_7[31:0]), .B(x_a_a__8[31:0]), .checkequation(1'b1), .result(sum_8[31:0])  );
add_sub SUM_09(.A(sum_8[31:0]), .B(x_a_a__9[31:0]), .checkequation(1'b1), .result(sum_9[31:0])  );
add_sub SUM_10(.A(sum_9[31:0]), .B(x_a_a__10[31:0]), .checkequation(1'b1), .result(sum_10[31:0])  );

assign  out[31:0] = (in[30:0] == num0375[30:0]) ? num_ln0375[31:0] : sum_10[31:0];
endmodule
