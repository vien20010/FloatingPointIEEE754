//Shift Significand S (bit dấu) + bit 1 mặc định + 48 bit Fracction
//
module shift_right49(in, nshift, out);

input	[48:0]	in;
input	[5:0]	nshift;
output	[48:0]	out;

logic 	[48:0]	temp1,temp2,temp3,temp4,temp5;

shift32 shift_1(.in(in[48:0]), .ena(nshift[5]), .out(temp1));
shift16 shift_1(.in(temp1), .ena(nshift[4]), .out(temp2));
shift8  shift_2(.in(temp2), .ena(nshift[3]), .out(temp3));
shift4  shift_3(.in(temp3), .ena(nshift[2]), .out(temp4));
shift2  shift_4(.in(temp4), .ena(nshift[1]), .out(temp5));
shift1  shift_5(.in(temp5), .ena(nshift[0]), .out(out[48:0]));

//Giu nguyen bit dau S
//assign out[49] = in[49];
endmodule

/////////////////////////////////////////////////////////////////////

module shift32(in, ena, out);

input	[48:0]	in;
input			ena;
output	[48:0]	out;

assign out = ena?{32'b0,in[48:32]}:in;
endmodule
/////////////////////////////////////////////////////////////////////

module shift16(in, ena, out);

input	[48:0]	in;
input			ena;
output	[48:0]	out;

assign out = ena?{16'b0,in[48:16]}:in;
endmodule

/////////////////////////////////////////////////////////////////////

module shift8(in, ena, out);

input	[48:0]	in;
input			ena;
output	[48:0]	out;

assign out = ena?{8'b0,in[48:8]}:in;
endmodule

/////////////////////////////////////////////////////////////////////

module shift4(in, ena, out);

input	[48:0]	in;
input			ena;
output	[48:0]	out;

assign out = ena?{4'b0,in[48:4]}:in;
endmodule

/////////////////////////////////////////////////////////////////////

module shift2(in, ena, out);

input	[48:0]	in;
input			ena;
output	[48:0]	out;

assign out = ena?{2'b0,in[48:2]}:in;
endmodule
//Shift số 24 bit

module shift1(in, ena, out);

input	[48:0]	in;
input			ena;
output	[48:0]	out;

assign out = ena?{1'b0,in[48:1]}:in;
endmodule