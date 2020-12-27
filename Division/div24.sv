module div24(in1, in2, out);

parameter DATA_WIDTH = 32;

input [DATA_WIDTH-1:0]in1,in2;
output  [24:0]out;


logic [23:0]	in_tmp[24:0];
logic [23:0]	r_tmp [24:0];
logic [24:0]	q;

logic [23:0]	exponent_tmp;
logic [23:0]	exponent_tmp_sub_128;
logic      	exponent_cout; //debug and testbench
logic      	exponent_cout_sub_128; //debug and testbench
logic 		last_cout, lcout;
logic [23:0] out_normal_tmp;

logic    [31: 0] out_normal, out_special;
logic            check_special;


FS_24   FRACTION_  (.a({{1{1'b1}},in1[22 - 0: 0]}), .b({{  1{1'b1}},in2[22 :  0 ]}), .out(r_tmp[  0]),.cin(1'b0), .cout(q[24 -  0 ])); 
assign in_tmp[  0] = {{1{1'b1}},in1[22 - 0: 0]};

FS_24   FRACTION_0 (.a(({24{q[24 -  0]}}&in_tmp[ 0] ) | (({24{~q[24 -  0]}})&r_tmp[  0])), .b({{  1{1'b0}},{1{1'b1}},in2[22 :  1]}),.out(r_tmp[  1]),.cin(1'b0),.cout(q[24 -  1 ])); 
assign in_tmp[  1] = ({24{q[24 -  0]}}&in_tmp[ 0] ) | (({24{~q[24 -  0]}})&r_tmp[  0])  ;

FS_24   FRACTION_1 (.a(({24{q[24 -  1]}}&in_tmp[ 1] ) | (({24{~q[24 -  1]}})&r_tmp[  1])), .b({{  2{1'b0}},{1{1'b1}},in2[22 :  2]}),.out(r_tmp[  2]),.cin(1'b0),.cout(q[24 -  2 ])); 
assign in_tmp[  2] = ({24{q[24 -  1]}}&in_tmp[ 1] ) | (({24{~q[24 -  1]}})&r_tmp[  1])  ;

FS_24   FRACTION_2 (.a(({24{q[24 -  2]}}&in_tmp[ 2] ) | (({24{~q[24 -  2]}})&r_tmp[  2])), .b({{  3{1'b0}},{1{1'b1}},in2[22 :  3]}),.out(r_tmp[  3]),.cin(1'b0),.cout(q[24 -  3 ])); 
assign in_tmp[  3] = ({24{q[24 -  2]}}&in_tmp[ 2] ) | (({24{~q[24 -  2]}})&r_tmp[  2])  ;

FS_24   FRACTION_3 (.a(({24{q[24 -  3]}}&in_tmp[ 3] ) | (({24{~q[24 -  3]}})&r_tmp[  3])), .b({{  4{1'b0}},{1{1'b1}},in2[22 :  4]}),.out(r_tmp[  4]),.cin(1'b0),.cout(q[24 -  4 ])); 
assign in_tmp[  4] = ({24{q[24 -  3]}}&in_tmp[ 3] ) | (({24{~q[24 -  3]}})&r_tmp[  3])  ;

FS_24   FRACTION_4 (.a(({24{q[24 -  4]}}&in_tmp[ 4] ) | (({24{~q[24 -  4]}})&r_tmp[  4])), .b({{  5{1'b0}},{1{1'b1}},in2[22 :  5]}),.out(r_tmp[  5]),.cin(1'b0),.cout(q[24 -  5 ])); 
assign in_tmp[  5] = ({24{q[24 -  4]}}&in_tmp[ 4] ) | (({24{~q[24 -  4]}})&r_tmp[  4])  ;

FS_24   FRACTION_5 (.a(({24{q[24 -  5]}}&in_tmp[ 5] ) | (({24{~q[24 -  5]}})&r_tmp[  5])), .b({{  6{1'b0}},{1{1'b1}},in2[22 :  6]}),.out(r_tmp[  6]),.cin(1'b0),.cout(q[24 -  6 ])); 
assign in_tmp[  6] = ({24{q[24 -  5]}}&in_tmp[ 5] ) | (({24{~q[24 -  5]}})&r_tmp[  5])  ;

FS_24   FRACTION_6 (.a(({24{q[24 -  6]}}&in_tmp[ 6] ) | (({24{~q[24 -  6]}})&r_tmp[  6])), .b({{  7{1'b0}},{1{1'b1}},in2[22 :  7]}),.out(r_tmp[  7]),.cin(1'b0),.cout(q[24 -  7 ])); 
assign in_tmp[  7] = ({24{q[24 -  6]}}&in_tmp[ 6] ) | (({24{~q[24 -  6]}})&r_tmp[  6])  ;

FS_24   FRACTION_7 (.a(({24{q[24 -  7]}}&in_tmp[ 7] ) | (({24{~q[24 -  7]}})&r_tmp[  7])), .b({{  8{1'b0}},{1{1'b1}},in2[22 :  8]}),.out(r_tmp[  8]),.cin(1'b0),.cout(q[24 -  8 ])); 
assign in_tmp[  8] = ({24{q[24 -  7]}}&in_tmp[ 7] ) | (({24{~q[24 -  7]}})&r_tmp[  7])  ;

FS_24   FRACTION_8 (.a(({24{q[24 -  8]}}&in_tmp[ 8] ) | (({24{~q[24 -  8]}})&r_tmp[  8])), .b({{  9{1'b0}},{1{1'b1}},in2[22 :  9]}),.out(r_tmp[  9]),.cin(1'b0),.cout(q[24 -  9 ])); 
assign in_tmp[  9] = ({24{q[24 -  8]}}&in_tmp[ 8] ) | (({24{~q[24 -  8]}})&r_tmp[  8])  ;

FS_24   FRACTION_9 (.a(({24{q[24 -  9]}}&in_tmp[ 9] ) | (({24{~q[24 -  9]}})&r_tmp[  9])), .b({{ 10{1'b0}},{1{1'b1}},in2[22 : 10]}),.out(r_tmp[ 10]),.cin(1'b0),.cout(q[24 - 10 ])); 
assign in_tmp[ 10] = ({24{q[24 -  9]}}&in_tmp[ 9] ) | (({24{~q[24 -  9]}})&r_tmp[  9])  ;

FS_24  FRACTION_10 (.a(({24{q[24 - 10]}}&in_tmp[10] ) | (({24{~q[24 - 10]}})&r_tmp[ 10])), .b({{ 11{1'b0}},{1{1'b1}},in2[22 : 11]}),.out(r_tmp[ 11]),.cin(1'b0),.cout(q[24 - 11 ])); 
assign in_tmp[ 11] = ({24{q[24 - 10]}}&in_tmp[10] ) | (({24{~q[24 - 10]}})&r_tmp[ 10])  ;

FS_24  FRACTION_11 (.a(({24{q[24 - 11]}}&in_tmp[11] ) | (({24{~q[24 - 11]}})&r_tmp[ 11])), .b({{ 12{1'b0}},{1{1'b1}},in2[22 : 12]}),.out(r_tmp[ 12]),.cin(1'b0),.cout(q[24 - 12 ])); 
assign in_tmp[ 12] = ({24{q[24 - 11]}}&in_tmp[11] ) | (({24{~q[24 - 11]}})&r_tmp[ 11])  ;

FS_24  FRACTION_12 (.a(({24{q[24 - 12]}}&in_tmp[12] ) | (({24{~q[24 - 12]}})&r_tmp[ 12])), .b({{ 13{1'b0}},{1{1'b1}},in2[22 : 13]}),.out(r_tmp[ 13]),.cin(1'b0),.cout(q[24 - 13 ])); 
assign in_tmp[ 13] = ({24{q[24 - 12]}}&in_tmp[12] ) | (({24{~q[24 - 12]}})&r_tmp[ 12])  ;

FS_24  FRACTION_13 (.a(({24{q[24 - 13]}}&in_tmp[13] ) | (({24{~q[24 - 13]}})&r_tmp[ 13])), .b({{ 14{1'b0}},{1{1'b1}},in2[22 : 14]}),.out(r_tmp[ 14]),.cin(1'b0),.cout(q[24 - 14 ])); 
assign in_tmp[ 14] = ({24{q[24 - 13]}}&in_tmp[13] ) | (({24{~q[24 - 13]}})&r_tmp[ 13])  ;

FS_24  FRACTION_14 (.a(({24{q[24 - 14]}}&in_tmp[14] ) | (({24{~q[24 - 14]}})&r_tmp[ 14])), .b({{ 15{1'b0}},{1{1'b1}},in2[22 : 15]}),.out(r_tmp[ 15]),.cin(1'b0),.cout(q[24 - 15 ])); 
assign in_tmp[ 15] = ({24{q[24 - 14]}}&in_tmp[14] ) | (({24{~q[24 - 14]}})&r_tmp[ 14])  ;

FS_24  FRACTION_15 (.a(({24{q[24 - 15]}}&in_tmp[15] ) | (({24{~q[24 - 15]}})&r_tmp[ 15])), .b({{ 16{1'b0}},{1{1'b1}},in2[22 : 16]}),.out(r_tmp[ 16]),.cin(1'b0),.cout(q[24 - 16 ])); 
assign in_tmp[ 16] = ({24{q[24 - 15]}}&in_tmp[15] ) | (({24{~q[24 - 15]}})&r_tmp[ 15])  ;

FS_24  FRACTION_16 (.a(({24{q[24 - 16]}}&in_tmp[16] ) | (({24{~q[24 - 16]}})&r_tmp[ 16])), .b({{ 17{1'b0}},{1{1'b1}},in2[22 : 17]}),.out(r_tmp[ 17]),.cin(1'b0),.cout(q[24 - 17 ]));
assign in_tmp[ 17] = ({24{q[24 - 16]}}&in_tmp[16] ) | (({24{~q[24 - 16]}})&r_tmp[ 16])  ;

FS_24  FRACTION_17 (.a(({24{q[24 - 17]}}&in_tmp[17] ) | (({24{~q[24 - 17]}})&r_tmp[ 17])), .b({{ 18{1'b0}},{1{1'b1}},in2[22 : 18]}),.out(r_tmp[ 18]),.cin(1'b0),.cout(q[24 - 18 ])); 
assign in_tmp[ 18] = ({24{q[24 - 17]}}&in_tmp[17] ) | (({24{~q[24 - 17]}})&r_tmp[ 17])  ;

FS_24  FRACTION_18 (.a(({24{q[24 - 18]}}&in_tmp[18] ) | (({24{~q[24 - 18]}})&r_tmp[ 18])), .b({{ 19{1'b0}},{1{1'b1}},in2[22 : 19]}),.out(r_tmp[ 19]),.cin(1'b0),.cout(q[24 - 19 ])); 
assign in_tmp[ 19] = ({24{q[24 - 18]}}&in_tmp[18] ) | (({24{~q[24 - 18]}})&r_tmp[ 18])  ;

FS_24  FRACTION_19 (.a(({24{q[24 - 19]}}&in_tmp[19] ) | (({24{~q[24 - 19]}})&r_tmp[ 19])), .b({{ 20{1'b0}},{1{1'b1}},in2[22 : 20]}),.out(r_tmp[ 20]),.cin(1'b0),.cout(q[24 - 20 ])); 
assign in_tmp[ 20] = ({24{q[24 - 19]}}&in_tmp[19] ) | (({24{~q[24 - 19]}})&r_tmp[ 19])  ;

FS_24  FRACTION_20 (.a(({24{q[24 - 20]}}&in_tmp[20] ) | (({24{~q[24 - 20]}})&r_tmp[ 20])), .b({{ 21{1'b0}},{1{1'b1}},in2[22 : 21]}),.out(r_tmp[ 21]),.cin(1'b0),.cout(q[24 - 21 ])); 
assign in_tmp[ 21] = ({24{q[24 - 20]}}&in_tmp[20] ) | (({24{~q[24 - 20]}})&r_tmp[ 20])  ;

FS_24  FRACTION_21 (.a(({24{q[24 - 21]}}&in_tmp[21] ) | (({24{~q[24 - 21]}})&r_tmp[ 21])), .b({{ 22{1'b0}},{1{1'b1}},in2[22 : 22]}),.out(r_tmp[ 22]),.cin(1'b0),.cout(q[24 - 22 ])); 
assign in_tmp[ 22] = ({24{q[24 - 21]}}&in_tmp[21] ) | (({24{~q[24 - 21]}})&r_tmp[ 21])  ;

FS_24  FRACTION_22 (.a(({24{q[24 - 22]}}&in_tmp[22] ) | (({24{~q[24 - 22]}})&r_tmp[ 22])), .b({{ 23{1'b0}},{1{1'b1}}}),.out(r_tmp[ 23]),.cin(1'b0),.cout(q[24 - 23 ])); 
assign in_tmp[ 23] = ({24{q[24 - 22]}}&in_tmp[22] ) | (({24{~q[24 - 22]}})&r_tmp[ 22])  ;

FS_24  FRACTION_23 (.a(({24{q[24 - 23]}}&in_tmp[23] ) | (({24{~q[24 - 23]}})&r_tmp[ 23])), .b({{ 24{1'b0}}}),.out(r_tmp[ 24]),.cin(1'b0),.cout(q[24 - 24 ])); 
assign in_tmp[ 24] = ({24{q[24 - 23]}}&in_tmp[23] ) | (({24{~q[24 - 23]}})&r_tmp[ 23])  ;


//assign	out[22:0] = (({23{q[24]}})&~q[22:0])    | ({23{~q[24]}}&~q[23:1]);
//assign out[23] = ~q[24];
assign out=~q[24:0];

endmodule

module unit_div(A0,Q1,A1,Q2,B);
    output [24:0]Q1,A0;
    input  [24:0]Q2,B,A1;

    logic [24:0]tcB;
    logic [24:0]B1;

    complement2_25bit tc_25bits(tcB,B); 
    assign Q1[24:1]=Q2[23:0];
    assign Q1[0]=A1[24]?0:1;
    assign B1=A1[24]?B:tcB;
    adder_25bit block0(.S(A0),.in1({A1[23:0],Q1[24]}),.in2(B1),.Cout());
endmodule

/////////////////////////////////////////////////
module div24_2(S,A,B);
output	[24:0]S;
input	[24:0]A,B;

logic 	[24:0]cplB;
logic	[24:0]A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25;
logic	[24:0]B1;
logic	[24:0]Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25;

//Compliment of B 
complement2_25bit	two_complimentB(.out(cplB),.in(B));
	
//Intineraly
assign Q25 ={A[0],{24{1'b0}}};
assign A25 = {1'b0,A[24:1]};
assign B1 = A[24]?B:cplB;
adder_25bit block25( .S ( A24 ) ,.in1( {A25[23:0],Q25[24]} ),.in2( B1 ) );

//Stage24
unit_div block24(A23,Q24,A24,Q25,B);
unit_div block23(A22,Q23,A23,Q24,B);
unit_div block22(A21,Q22,A22,Q23,B);
unit_div block21(A20,Q21,A21,Q22,B);
unit_div block20(A19,Q20,A20,Q21,B);
unit_div block19(A18,Q19,A19,Q20,B);
unit_div block18(A17,Q18,A18,Q19,B);
unit_div block17(A16,Q17,A17,Q18,B);
unit_div block16(A15,Q16,A16,Q17,B);
unit_div block15(A14,Q15,A15,Q16,B);
unit_div block14(A13,Q14,A14,Q15,B);
unit_div block13(A12,Q13,A13,Q14,B);
unit_div block12(A11,Q12,A12,Q13,B);
unit_div block11(A10,Q11,A11,Q12,B);
unit_div block10(A9,Q10,A10,Q11,B);
unit_div block9(A8,Q9,A9,Q10,B);
unit_div block8(A7,Q8,A8,Q9,B);
unit_div block7(A6,Q7,A7,Q8,B);
unit_div block6(A5,Q6,A6,Q7,B);
unit_div block5(A4,Q5,A5,Q6,B);
unit_div block4(A3,Q4,A4,Q5,B);
unit_div block3(A2,Q3,A3,Q4,B);
unit_div block2(A1,Q2,A2,Q3,B);
unit_div block1(A0,Q1,A1,Q2,B);

assign S = {Q1[24:1],1'b0};

endmodule