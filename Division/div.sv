module div(A,B,CLK,RST,result,overflow,underflow,enable);

input	[31:0]	A,B;
input			CLK,RST;
output	[31:0]	result;
output			overflow,underflow,enable;

logic			sign_result,signA,signB;
logic	[4:0]	nshiftleft;
logic	[5:0]	count;
logic	[7:0]	exp_temp,exp_temp2,exp_out,exp_result,expA,expB;
logic	[9:0]	shiftleftout,temp_exp;
logic	[22:0]	frac_result;
logic	[23:0]	fracleft_before_result,fracA,fracB;
logic	[48:0]	Mneg;
logic	[47:0]	fracA1,fracB1;
logic  [48:0]  temp_A;

logic				ena,q,enable;
logic		[5:0]	count_out;
logic		[24:0]	frac_out;
logic		[47:0]	Q;
logic		[48:0]	M,A1,dataA,dataAout;
logic		[96:0]	AQq;

assign	signA = A[31];
assign	expA  = A[30:23];
assign	fracA = {1'b1,A[22:0]};
assign	signB = B[31];
assign	expB  = B[30:23];
assign	fracB = {1'b1,B[22:0]};
////////////////////////////////SEPARATE SIGN///////////////////////
assign	sign_result = signA ^ signB;
////////////////////////////////SUBTRAC EXPONENTS//////////////////
adder_8bit	findadder(.in1(expB), .in2(-8'd127), .S(exp_temp), .Cout());
complement2_8bit compliexp(.in(exp_temp), .out(exp_temp2));
adder_8bit	adder_exponent(.in1(expA), .in2(exp_temp2), .S(exp_out), .Cout());

///////////////////////////////DIVIDE SIGNIFICANDS///////////////////////

div24_2 findfracresult(frac_out,{1'b0,fracA},{1'b0,fracB});

///////////////////////////NORMALIZE/////////////////////////////

find1 findbit1(.in(frac_out[24:1]), .nshiftleft(nshiftleft));
shiftleft shift_fracl(.in(frac_out), .nshiftleft(nshiftleft), .out(fracleft_before_result));


assign frac_result = fracleft_before_result[22:0];
complement2_10bit comple2_exponent(.in({5'b0,nshiftleft}),.out(shiftleftout));

adder_10bit	add_2(.in1({2'b00,exp_out}), .in2(shiftleftout), .S(temp_exp), .Cout());
assign underflow = temp_exp[9]&temp_exp[8];
assign overflow = ~temp_exp[9]&(temp_exp[8]|(&({temp_exp[7:0]})));

assign exp_result = temp_exp[8]?8'd0:temp_exp[7:0];

export_result export1(.in1(A), .in2(B), .temp_result({sign_result,exp_result,frac_result}), .result(result));

endmodule
