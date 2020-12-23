
module multiplier(S,A,B);

output	[31:0]S;
input	[31:0]A,B;

//Extract floating-point A and B
logic	signA,signB,signS;
logic	[7:0]expA,expB,expS;
logic	[23:0]fracA,fracB,fracS;

assign	signA=A[31];
assign	signB=B[31];
assign	expA=A[30:23];
assign	expB=B[30:23];
assign	fracA={1'b1,A[22:0]};
assign	fracB={1'b1,B[22:0]};

//Signal 
logic	[7:0]temp_expB,expS_before_normal;

logic	[47:0]fracS_after_mult;
logic	[24:0]fracS_before_normal;

//Sign S
assign	signS = signA ^ signB;

//Additon 2 exponent
adder8	sub_expB_127(temp_expB,expB,-8'd127);

adder8	add_expA_expB(expS_before_normal,expA,temp_expB);

//Multiplier frac A and frac B
mult24	mult_two_frac(fracS_after_mult,fracA,fracB);
assign	fracS_before_normal = fracS_after_mult[47:23];

//Normalize the frac answer
normalize	normalize_ans(.exp_out(expS),.frac_out(fracS),
			      .exp_in(expS_before_normal),.frac_in(fracS_before_normal));

//Export S
resultS_mult	result_S_value(.S(S),.A({signA,expA,fracA[22:0]}),.B({signB,expB,fracB[22:0]}),.ansS({signS,expS,fracS[22:0]}));
endmodule
