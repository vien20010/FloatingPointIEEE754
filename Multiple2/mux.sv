module mux4_1(in1, in2, in3, in4, select, out);

input [47:0]in1, in2,in3,in4;
input [1:0]select;
output [47:0] out;

case (sellect)
    : 
    default: 
endcase

endmodule

//mux 8bit 
//dung de so sanh exponent
module mux_8bit(in1, in2, select, out);

input	[7:0]	in1,in2;
input			select;
output	[7:0]	out;

assign out = select?in2: in1;

endmodule

//mux 25bit
module mux_25bit(in1, in2, select, out);

input	[24:0]	in1,in2;
input			select;
output	[24:0]	out;

assign out = select?in2: in1;

endmodule