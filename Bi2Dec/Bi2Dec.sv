module Bi2Dec(in,nguyen,le,luythua);

input [31:0]in;
output [24:0]nguyen;
output [24:0]le;
output [5:0]luythua;

logic [24:0]nguyen_neg,le_neg;
logic [5:0]luythua_neg,luythua_pos;
logic [3:0]nguyen_pos;
logic [9:0]le_pos;

logic [8:0]exp_temp,exp_temp_comple;

adder_9bit exp(.in1({1'b0,in[30:23]}),.in2(-9'd127),.S(exp_temp), .Cout());
complement2_9bit exp_comple(.in(exp_temp),.out(exp_temp_comple));

Bi2Dec_neg Bi2Dec_nega(.in(in),.nguyen(nguyen_neg),.le(le_neg),.luythua(luythua_neg));
FPtoDec Bi2Dec_posi(.in(in),.nguyen(nguyen_pos),.le(le_pos),.luythua(luythua_pos));

assign nguyen = exp_temp[8]?nguyen_neg:{21'b0,nguyen_pos};
assign le = exp_temp[8]?le_neg:{15'b0,le_pos};
assign luythua = exp_temp[8]?luythua_neg:luythua_pos;
endmodule
