module mult24_booth(in1,in2,S);

input [23:0]in1,in2;
output [49:0]S;

logic [24:0]tempA[24:0];
logic [24:0]tempQ[24:0];
logic [24:0]tempq0;

unit_mult24_booth block00(.A(25'b0),.M({1'b0,in1}),.Q({1'b0,in2}),.q0(1'b0),.A_out(tempA[0]),.Q_out(tempQ[0]),.q0_out(tempq0[0]));
unit_mult24_booth block01(.A(tempA[00]),.M({1'b0,in1}),.Q(tempQ[00]),.q0(tempq0[00]),.A_out(tempA[01]),.Q_out(tempQ[01]),.q0_out(tempq0[01]));
unit_mult24_booth block02(.A(tempA[01]),.M({1'b0,in1}),.Q(tempQ[01]),.q0(tempq0[01]),.A_out(tempA[02]),.Q_out(tempQ[02]),.q0_out(tempq0[02]));
unit_mult24_booth block03(.A(tempA[02]),.M({1'b0,in1}),.Q(tempQ[02]),.q0(tempq0[02]),.A_out(tempA[03]),.Q_out(tempQ[03]),.q0_out(tempq0[03]));
unit_mult24_booth block04(.A(tempA[03]),.M({1'b0,in1}),.Q(tempQ[03]),.q0(tempq0[03]),.A_out(tempA[04]),.Q_out(tempQ[04]),.q0_out(tempq0[04]));
unit_mult24_booth block05(.A(tempA[04]),.M({1'b0,in1}),.Q(tempQ[04]),.q0(tempq0[04]),.A_out(tempA[05]),.Q_out(tempQ[05]),.q0_out(tempq0[05]));
unit_mult24_booth block06(.A(tempA[05]),.M({1'b0,in1}),.Q(tempQ[05]),.q0(tempq0[05]),.A_out(tempA[06]),.Q_out(tempQ[06]),.q0_out(tempq0[06]));
unit_mult24_booth block07(.A(tempA[06]),.M({1'b0,in1}),.Q(tempQ[06]),.q0(tempq0[06]),.A_out(tempA[07]),.Q_out(tempQ[07]),.q0_out(tempq0[07]));
unit_mult24_booth block08(.A(tempA[07]),.M({1'b0,in1}),.Q(tempQ[07]),.q0(tempq0[07]),.A_out(tempA[08]),.Q_out(tempQ[08]),.q0_out(tempq0[08]));
unit_mult24_booth block09(.A(tempA[08]),.M({1'b0,in1}),.Q(tempQ[08]),.q0(tempq0[08]),.A_out(tempA[09]),.Q_out(tempQ[09]),.q0_out(tempq0[09]));
unit_mult24_booth block10(.A(tempA[09]),.M({1'b0,in1}),.Q(tempQ[09]),.q0(tempq0[09]),.A_out(tempA[10]),.Q_out(tempQ[10]),.q0_out(tempq0[10]));
unit_mult24_booth block11(.A(tempA[10]),.M({1'b0,in1}),.Q(tempQ[10]),.q0(tempq0[10]),.A_out(tempA[11]),.Q_out(tempQ[11]),.q0_out(tempq0[11]));
unit_mult24_booth block12(.A(tempA[11]),.M({1'b0,in1}),.Q(tempQ[11]),.q0(tempq0[11]),.A_out(tempA[12]),.Q_out(tempQ[12]),.q0_out(tempq0[12]));
unit_mult24_booth block13(.A(tempA[12]),.M({1'b0,in1}),.Q(tempQ[12]),.q0(tempq0[12]),.A_out(tempA[13]),.Q_out(tempQ[13]),.q0_out(tempq0[13]));
unit_mult24_booth block14(.A(tempA[13]),.M({1'b0,in1}),.Q(tempQ[13]),.q0(tempq0[13]),.A_out(tempA[14]),.Q_out(tempQ[14]),.q0_out(tempq0[14]));
unit_mult24_booth block15(.A(tempA[14]),.M({1'b0,in1}),.Q(tempQ[14]),.q0(tempq0[14]),.A_out(tempA[15]),.Q_out(tempQ[15]),.q0_out(tempq0[15]));
unit_mult24_booth block16(.A(tempA[15]),.M({1'b0,in1}),.Q(tempQ[15]),.q0(tempq0[15]),.A_out(tempA[16]),.Q_out(tempQ[16]),.q0_out(tempq0[16]));
unit_mult24_booth block17(.A(tempA[16]),.M({1'b0,in1}),.Q(tempQ[16]),.q0(tempq0[16]),.A_out(tempA[17]),.Q_out(tempQ[17]),.q0_out(tempq0[17]));
unit_mult24_booth block18(.A(tempA[17]),.M({1'b0,in1}),.Q(tempQ[17]),.q0(tempq0[17]),.A_out(tempA[18]),.Q_out(tempQ[18]),.q0_out(tempq0[18]));
unit_mult24_booth block19(.A(tempA[18]),.M({1'b0,in1}),.Q(tempQ[18]),.q0(tempq0[18]),.A_out(tempA[19]),.Q_out(tempQ[19]),.q0_out(tempq0[19]));
unit_mult24_booth block20(.A(tempA[19]),.M({1'b0,in1}),.Q(tempQ[19]),.q0(tempq0[19]),.A_out(tempA[20]),.Q_out(tempQ[20]),.q0_out(tempq0[20]));
unit_mult24_booth block21(.A(tempA[20]),.M({1'b0,in1}),.Q(tempQ[20]),.q0(tempq0[20]),.A_out(tempA[21]),.Q_out(tempQ[21]),.q0_out(tempq0[21]));
unit_mult24_booth block22(.A(tempA[21]),.M({1'b0,in1}),.Q(tempQ[21]),.q0(tempq0[21]),.A_out(tempA[22]),.Q_out(tempQ[22]),.q0_out(tempq0[22]));
unit_mult24_booth block23(.A(tempA[22]),.M({1'b0,in1}),.Q(tempQ[22]),.q0(tempq0[22]),.A_out(tempA[23]),.Q_out(tempQ[23]),.q0_out(tempq0[23]));
unit_mult24_booth block24(.A(tempA[23]),.M({1'b0,in1}),.Q(tempQ[23]),.q0(tempq0[23]),.A_out(tempA[24]),.Q_out(tempQ[24]),.q0_out(tempq0[24]));

assign S={tempA[24],tempQ[24]};

endmodule

module unit_mult24_booth(A,M,Q,q0,A_out,Q_out,q0_out);

input [24:0]A,M,Q;
input q0;
output [24:0]A_out,Q_out,q0_out;

logic [24:0]temp, temp_add, temp_sub, M_2;
logic [50:0]AQq0_before_shift,AQq0;

complement2_25bit M_complement2(.in(M),.out(M_2));
adder_25bit case1(.in1(A),.in2(M_2),.S(temp_sub),.Cout());
//FS_24 case1(.a(A),.b(M),.cin(1'b0),.out(temp_sub),.cout());
adder_25bit case2(.in1(A),.in2(M),.S(temp_add),.Cout());

always @(*)
begin
case ({Q[0],q0})
    2'b10: temp = temp_sub;
    2'b01: temp = temp_add;
    default: temp = A;
endcase
end

assign AQq0_before_shift = {temp,Q,q0};
//shift_right49 shift1(AQq0_before_shift,6'b1,AQq0);
assign AQq0 = {AQq0_before_shift[50],AQq0_before_shift[50:1]};
assign A_out = AQq0[50:26];
assign Q_out = AQq0[25:1];
assign q0_out = AQq0[0];

endmodule
