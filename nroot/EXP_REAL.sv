
module EXP_REAL(
	base,
	exp,
	out
);

// base ^ exp = e ^ (exp * ln(base))
//            = e ^ (exp * ln( (2^ (base_exp_real)) * base_frac) )
//            = e ^ (exp * (base_exp_real*ln(2) + ln(base_frac))
//            = e ^ (exp * (base_exp_real*ln(2) + ln(base_frac/4) + 2*ln(2)))
//            = e ^ (exp * ((base_exp - 127)*ln(2) + ln(base_frac/4) + 2*ln(2)))
//            = e ^ (exp * (base_exp*ln(2) + ln(base_frac/4) - 125*ln(2)))

// fp_base_frac : floating point version of base_frac
// fp_base_frac_div_4 : floating point version of base_frac/4
// ln_base_frac_div_4 : ln(fp_base_frac_div_4)
// ln2_0, ln2_1, ln2_2, ln2_3, ln2_4, ln2_5, ln2_6, ln2_7: constant
// total_exp : base_exp*ln(2) + ln(base_frac/4) + 2*ln(2)
// total_exp_mul_exp = exp * (base_exp*ln(2) + ln(base_frac/4) + 2*ln(2))
// total_exp_div_1024 = total_exp_mul_exp / 1024

input [31:0] base;
input [31:0] exp;
output [31:0] out;


// logic [31:0] base;
// logic [31:0] exp;

logic [32 -1 :0 ] num_ln2    = 32'b0_01111110_01100010111001000011000; //ln2

logic [7:0] base_exp ;
logic [23:0] base_frac ;
logic [31:0] fp_base_frac_div_4 ;

assign base_exp [7:0] = base[30:23]; //8 bit exponent
// 
assign base_frac [23:0] = {1'b1, base[22:0]}; //1 bit 1 + 23 bit frac -->significand

// ln(base_frac/4)
assign fp_base_frac_div_4 [31:0] = {9'b001111101, base_frac [22:0] };

logic [31:0] ln_base_frac_div_4;

TAYLOR_LN LN_frac_of_base_DIV_4(.in(fp_base_frac_div_4), .out(ln_base_frac_div_4));

logic [31:0] ln2_0, ln2_1, ln2_2, ln2_3, ln2_4, ln2_5, ln2_6, ln2_7;
logic [7:0] ln2_exp_0, ln2_exp_1,ln2_exp_2,ln2_exp_3,ln2_exp_4,ln2_exp_5,ln2_exp_6,ln2_exp_7;
logic [31:0] in_tmp_0, in_tmp_1,in_tmp_2,in_tmp_3,in_tmp_4,in_tmp_5,in_tmp_6,in_tmp_7; 

logic [7:0]cout;

assign ln2_exp_0[7:0] = num_ln2[30:23];

FA_8 ADD_1(.a(num_ln2[30:23]), .b(8'd1), .cin(1'b0),.cout(cout[1]), .s(ln2_exp_1[7:0]));
FA_8 ADD_2(.a(num_ln2[30:23]), .b(8'd2), .cin(1'b0),.cout(cout[2]), .s(ln2_exp_2[7:0]));
FA_8 ADD_3(.a(num_ln2[30:23]), .b(8'd3), .cin(1'b0),.cout(cout[3]), .s(ln2_exp_3[7:0]));
FA_8 ADD_4(.a(num_ln2[30:23]), .b(8'd4), .cin(1'b0),.cout(cout[4]), .s(ln2_exp_4[7:0]));
FA_8 ADD_5(.a(num_ln2[30:23]), .b(8'd5), .cin(1'b0),.cout(cout[5]), .s(ln2_exp_5[7:0]));
FA_8 ADD_6(.a(num_ln2[30:23]), .b(8'd6), .cin(1'b0),.cout(cout[6]), .s(ln2_exp_6[7:0]));
FA_8 ADD_7(.a(num_ln2[30:23]), .b(8'd7), .cin(1'b0),.cout(cout[7]), .s(ln2_exp_7[7:0]));

assign ln2_0 = {num_ln2[31], ln2_exp_0[7:0], num_ln2[22:0]};
assign ln2_1 = {num_ln2[31], ln2_exp_1[7:0], num_ln2[22:0]};
assign ln2_2 = {num_ln2[31], ln2_exp_2[7:0], num_ln2[22:0]};
assign ln2_3 = {num_ln2[31], ln2_exp_3[7:0], num_ln2[22:0]};
assign ln2_4 = {num_ln2[31], ln2_exp_4[7:0], num_ln2[22:0]};
assign ln2_5 = {num_ln2[31], ln2_exp_5[7:0], num_ln2[22:0]};
assign ln2_6 = {num_ln2[31], ln2_exp_6[7:0], num_ln2[22:0]};
assign ln2_7 = {num_ln2[31], ln2_exp_7[7:0], num_ln2[22:0]};

// base_exp*ln(2) + ln(base_frac/4)

add_sub ADD_EXP_0(.A(ln_base_frac_div_4[31:0]), .B(ln2_0[31:0] & {32{base_exp[0]}}), .checkequation(1'b0), .result(in_tmp_0[31:0]));
add_sub ADD_EXP_1(.A(in_tmp_0), .B(ln2_1[31:0] & {32{base_exp[1]}}), .checkequation(1'b0), .result(in_tmp_1[31:0]));
add_sub ADD_EXP_2(.A(in_tmp_1), .B(ln2_2[31:0] & {32{base_exp[2]}}), .checkequation(1'b0), .result(in_tmp_2[31:0]));
add_sub ADD_EXP_3(.A(in_tmp_2), .B(ln2_3[31:0] & {32{base_exp[3]}}), .checkequation(1'b0), .result(in_tmp_3[31:0]));
add_sub ADD_EXP_4(.A(in_tmp_3), .B(ln2_4[31:0] & {32{base_exp[4]}}), .checkequation(1'b0), .result(in_tmp_4[31:0]));
add_sub ADD_EXP_5(.A(in_tmp_4), .B(ln2_5[31:0] & {32{base_exp[5]}}), .checkequation(1'b0), .result(in_tmp_5[31:0]));
add_sub ADD_EXP_6(.A(in_tmp_5), .B(ln2_6[31:0] & {32{base_exp[6]}}), .checkequation(1'b0), .result(in_tmp_6[31:0]));
add_sub ADD_EXP_7(.A(in_tmp_6), .B(ln2_7[31:0] & {32{base_exp[7]}}), .checkequation(1'b0), .result(in_tmp_7[31:0]));

logic [31:0] total_exp ;
// base_exp*ln(2) + ln(base_frac/4) - 125*ln(2)
add_sub ADD_(.A(in_tmp_7[31:0]), .B(32'b01000010101011010100100101101011), .checkequation(1'b1), .result(total_exp[31:0]));

logic [31:0] total_exp_mul_exp;
//exp * (base_exp*ln(2) + ln(base_frac/4) - 125*ln(2) = exp * ln (base)
mult TOTAL_EXP(.A(total_exp[31:0]), .B(exp[31:0]), .result(total_exp_mul_exp[31:0]));

logic [31:0] total_exp_div_1024;
// (exp * (base_exp*ln(2) + ln(base_frac/4) - 125*ln(2) ) / 1024
div SCALE(.A(total_exp_mul_exp[31:0]), .B(32'b01000100100000000000000000000000), .result(total_exp_div_1024[31:0]));

logic [31:0]result__1024;
TAYLOR_EXP EXP(.in(total_exp_div_1024[31:0]), .out(result__1024[31:0]));

logic [31:0] result__512,result__256,result__128, result__64, result__32,result__16, result__8, result__4, result__2, result__1;
mult MUL_(.A(result__1024[31:0]), .B(result__1024[31:0]), .result(result__512[31:0]));
mult MUL__(.A(result__512[31:0]), .B(result__512[31:0]), .result(result__256[31:0]));
mult MUL___(.A(result__256[31:0]), .B(result__256[31:0]), .result(result__128[31:0]));
mult MUL____(.A(result__128[31:0]), .B(result__128[31:0]), .result(result__64[31:0]));
mult MUL_____(.A(result__64[31:0]), .B(result__64[31:0]), .result(result__32[31:0]));
mult MUL______(.A(result__32[31:0]), .B(result__32[31:0]), .result(result__16[31:0]));
mult MUL_______(.A(result__16[31:0]), .B(result__16[31:0]), .result(result__8[31:0]));
mult MUL________(.A(result__8[31:0]), .B(result__8[31:0]), .result(result__4[31:0]));
mult MUL_________(.A(result__4[31:0]), .B(result__4[31:0]), .result(result__2[31:0]));
mult MUL__________(.A(result__2[31:0]), .B(result__2[31:0]), .result(result__1[31:0]));

// special case
assign out = base[31] ? 32'b0_1111111_10000000_00000000_00000000 : result__1[31:0];

endmodule

