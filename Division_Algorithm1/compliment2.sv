module compliment2_8bit(in, out);

input	[7:0]	in;
output	[7:0]	out;

logic	[7:0]	not_in;

assign not_in = ~in;

adder_8bit add_1(.in1(not_in), .in2(8'd1), .S(out), .Cout());
endmodule

//////////////////////////////////////////////////////////////////////

module compliment2_10bit(in, out);

input	[9:0]	in;
output	[9:0]	out;

logic	[9:0]	not_in;

assign not_in = ~in;

adder_10bit add_1(.in1(not_in), .in2(10'd1), .S(out), .Cout());
endmodule

//////////////////////////////////////////////////////////////////////

module compliment2_48bit(in, out);

input	[47:0]	in;
output	[47:0]	out;

logic	[47:0]	not_in;

assign not_in = ~in;

adder_48bit add_1(.in1(not_in), .in2(48'd1), .S(out), .Cout());
endmodule