
module TAYLOR_EXP(
	in,
	out
);
input [31:0]in;
output [31:0]out;

// x_i: x^i
logic [31:0]  x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10;

mult X_A_02(.A(in[31:0]), .B(in[31:0]), .result(x_2[31:0]));
mult X_A_03(.A(in[31:0]), .B(x_2[31:0]), .result(x_3[31:0]));
mult X_A_04(.A(in[31:0]), .B(x_3[31:0]), .result(x_4[31:0]));
mult X_A_05(.A(in[31:0]), .B(x_4[31:0]), .result(x_5[31:0]));
mult X_A_06(.A(in[31:0]), .B(x_5[31:0]), .result(x_6[31:0]));
mult X_A_07(.A(in[31:0]), .B(x_6[31:0]), .result(x_7[31:0]));
mult X_A_08(.A(in[31:0]), .B(x_7[31:0]), .result(x_8[31:0]));
mult X_A_09(.A(in[31:0]), .B(x_8[31:0]), .result(x_9[31:0]));
mult X_A_10(.A(in[31:0]), .B(x_9[31:0]), .result(x_10[31:0]));

// x__i : x^i/i!
logic [31:0] x__02, x__03, x__04, x__05, x__06, x__07, x__08, x__09, x__10;

div X_A_A__02(.A(x_2[31:0]), .B(32'b01000000000000000000000000000000), .result(x__02[31:0]));
div X_A_A__03(.A(x_3[31:0]), .B(32'b01000000110000000000000000000000), .result(x__03[31:0]));
div X_A_A__04(.A(x_4[31:0]), .B(32'b01000001110000000000000000000000), .result(x__04[31:0]));
div X_A_A__05(.A(x_5[31:0]), .B(32'b01000010111100000000000000000000), .result(x__05[31:0]));
div X_A_A__06(.A(x_6[31:0]), .B(32'b01000100001101000000000000000000), .result(x__06[31:0]));
div X_A_A__07(.A(x_7[31:0]), .B(32'b01000101100111011000000000000000), .result(x__07[31:0]));
div X_A_A__08(.A(x_8[31:0]), .B(32'b01000111000111011000000000000000), .result(x__08[31:0]));
div X_A_A__09(.A(x_9[31:0]), .B(32'b01001000101100010011000000000000), .result(x__09[31:0]));
div X_A_A__10(.A(x_10[31:0]), .B(32'b01001010010111010111110000000000), .result(x__10[31:0]));


// sum_i = taylor(i)
logic [31:0] sum_1, sum_2,sum_3,sum_4,sum_5,sum_6, sum_7, sum_8, sum_9, sum_10;
add_sub SUM_01 (.A(32'b00111111100000000000000000000000), .B(in[31:0]), .checkequation(1'b0), .result(sum_1[31:0])  );
add_sub SUM_02 (.A(sum_1[31:0]), .B(x__02[31:0]), .checkequation(1'b0), .result(sum_2[31:0])  );
add_sub SUM_03 (.A(sum_2[31:0]), .B(x__03[31:0]), .checkequation(1'b0), .result(sum_3[31:0])  );
add_sub SUM_04 (.A(sum_3[31:0]), .B(x__04[31:0]), .checkequation(1'b0), .result(sum_4[31:0])  );
add_sub SUM_05 (.A(sum_4[31:0]), .B(x__05[31:0]), .checkequation(1'b0), .result(sum_5[31:0])  );
add_sub SUM_06 (.A(sum_5[31:0]), .B(x__06[31:0]), .checkequation(1'b0), .result(sum_6[31:0])  );
add_sub SUM_07 (.A(sum_6[31:0]), .B(x__07[31:0]), .checkequation(1'b0), .result(sum_7[31:0])  );
add_sub SUM_08 (.A(sum_7[31:0]), .B(x__08[31:0]), .checkequation(1'b0), .result(sum_8[31:0])  );
add_sub SUM_09 (.A(sum_8[31:0]), .B(x__09[31:0]), .checkequation(1'b0), .result(sum_9[31:0])  );
add_sub SUM_10 (.A(sum_9[31:0]), .B(x__10[31:0]), .checkequation(1'b0), .result(sum_10[31:0])  );

assign  out[31:0] = sum_10[31:0];

endmodule