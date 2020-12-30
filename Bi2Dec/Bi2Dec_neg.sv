module Bi2Dec_neg(in, nguyen, le, luythua);

input [31:0]in;
output [24:0]nguyen;
output [5:0]luythua;
output [24:0]le;

logic [5:0]luythua;
logic [39:0]q;
logic [31:0]temp_mult[39:0];
logic [31:0]temp_number;


mult mult39(.A(in),.B(32'b01000001001000000000000000000000),.result(temp_mult[39]));
mult mult38(.A(temp_mult[39]),.B(32'b01000001001000000000000000000000),.result(temp_mult[38]));
mult mult37(.A(temp_mult[38]),.B(32'b01000001001000000000000000000000),.result(temp_mult[37]));
mult mult36(.A(temp_mult[37]),.B(32'b01000001001000000000000000000000),.result(temp_mult[36]));
mult mult35(.A(temp_mult[36]),.B(32'b01000001001000000000000000000000),.result(temp_mult[35]));
mult mult34(.A(temp_mult[35]),.B(32'b01000001001000000000000000000000),.result(temp_mult[34]));
mult mult33(.A(temp_mult[34]),.B(32'b01000001001000000000000000000000),.result(temp_mult[33]));
mult mult32(.A(temp_mult[33]),.B(32'b01000001001000000000000000000000),.result(temp_mult[32]));
mult mult31(.A(temp_mult[32]),.B(32'b01000001001000000000000000000000),.result(temp_mult[31]));
mult mult30(.A(temp_mult[31]),.B(32'b01000001001000000000000000000000),.result(temp_mult[30]));
mult mult29(.A(temp_mult[30]),.B(32'b01000001001000000000000000000000),.result(temp_mult[29]));
mult mult28(.A(temp_mult[29]),.B(32'b01000001001000000000000000000000),.result(temp_mult[28]));
mult mult27(.A(temp_mult[28]),.B(32'b01000001001000000000000000000000),.result(temp_mult[27]));
mult mult26(.A(temp_mult[27]),.B(32'b01000001001000000000000000000000),.result(temp_mult[26]));
mult mult25(.A(temp_mult[26]),.B(32'b01000001001000000000000000000000),.result(temp_mult[25]));
mult mult24(.A(temp_mult[25]),.B(32'b01000001001000000000000000000000),.result(temp_mult[24]));
mult mult23(.A(temp_mult[24]),.B(32'b01000001001000000000000000000000),.result(temp_mult[23]));
mult mult22(.A(temp_mult[23]),.B(32'b01000001001000000000000000000000),.result(temp_mult[22]));
mult mult21(.A(temp_mult[22]),.B(32'b01000001001000000000000000000000),.result(temp_mult[21]));
mult mult20(.A(temp_mult[21]),.B(32'b01000001001000000000000000000000),.result(temp_mult[20]));
mult mult19(.A(temp_mult[20]),.B(32'b01000001001000000000000000000000),.result(temp_mult[19]));
mult mult18(.A(temp_mult[19]),.B(32'b01000001001000000000000000000000),.result(temp_mult[18]));
mult mult17(.A(temp_mult[18]),.B(32'b01000001001000000000000000000000),.result(temp_mult[17]));
mult mult16(.A(temp_mult[17]),.B(32'b01000001001000000000000000000000),.result(temp_mult[16]));
mult mult15(.A(temp_mult[16]),.B(32'b01000001001000000000000000000000),.result(temp_mult[15]));
mult mult14(.A(temp_mult[15]),.B(32'b01000001001000000000000000000000),.result(temp_mult[14]));
mult mult13(.A(temp_mult[14]),.B(32'b01000001001000000000000000000000),.result(temp_mult[13]));
mult mult12(.A(temp_mult[13]),.B(32'b01000001001000000000000000000000),.result(temp_mult[12]));
mult mult11(.A(temp_mult[12]),.B(32'b01000001001000000000000000000000),.result(temp_mult[11]));
mult mult10(.A(temp_mult[11]),.B(32'b01000001001000000000000000000000),.result(temp_mult[10]));
mult mult09(.A(temp_mult[10]),.B(32'b01000001001000000000000000000000),.result(temp_mult[09]));
mult mult08(.A(temp_mult[09]),.B(32'b01000001001000000000000000000000),.result(temp_mult[08]));
mult mult07(.A(temp_mult[08]),.B(32'b01000001001000000000000000000000),.result(temp_mult[07]));
mult mult06(.A(temp_mult[07]),.B(32'b01000001001000000000000000000000),.result(temp_mult[06]));
mult mult05(.A(temp_mult[06]),.B(32'b01000001001000000000000000000000),.result(temp_mult[05]));
mult mult04(.A(temp_mult[05]),.B(32'b01000001001000000000000000000000),.result(temp_mult[04]));
mult mult03(.A(temp_mult[04]),.B(32'b01000001001000000000000000000000),.result(temp_mult[03]));
mult mult02(.A(temp_mult[03]),.B(32'b01000001001000000000000000000000),.result(temp_mult[02]));
mult mult01(.A(temp_mult[02]),.B(32'b01000001001000000000000000000000),.result(temp_mult[01]));
mult mult00(.A(temp_mult[01]),.B(32'b01000001001000000000000000000000),.result(temp_mult[00]));

///////////////////////////////////////////////////////

compare_8bit compare39(.in1(8'd127),.in2(temp_mult[39][30:23]),.in1_ST_in2(q[39]));
compare_8bit compare38(.in1(8'd127),.in2(temp_mult[38][30:23]),.in1_ST_in2(q[38]));
compare_8bit compare37(.in1(8'd127),.in2(temp_mult[37][30:23]),.in1_ST_in2(q[37]));
compare_8bit compare36(.in1(8'd127),.in2(temp_mult[36][30:23]),.in1_ST_in2(q[36]));
compare_8bit compare35(.in1(8'd127),.in2(temp_mult[35][30:23]),.in1_ST_in2(q[35]));
compare_8bit compare34(.in1(8'd127),.in2(temp_mult[34][30:23]),.in1_ST_in2(q[34]));
compare_8bit compare33(.in1(8'd127),.in2(temp_mult[33][30:23]),.in1_ST_in2(q[33]));
compare_8bit compare32(.in1(8'd127),.in2(temp_mult[32][30:23]),.in1_ST_in2(q[32]));
compare_8bit compare31(.in1(8'd127),.in2(temp_mult[31][30:23]),.in1_ST_in2(q[31]));
compare_8bit compare30(.in1(8'd127),.in2(temp_mult[20][30:23]),.in1_ST_in2(q[30]));
compare_8bit compare29(.in1(8'd127),.in2(temp_mult[29][30:23]),.in1_ST_in2(q[29]));
compare_8bit compare28(.in1(8'd127),.in2(temp_mult[28][30:23]),.in1_ST_in2(q[28]));
compare_8bit compare27(.in1(8'd127),.in2(temp_mult[27][30:23]),.in1_ST_in2(q[27]));
compare_8bit compare26(.in1(8'd127),.in2(temp_mult[26][30:23]),.in1_ST_in2(q[26]));
compare_8bit compare25(.in1(8'd127),.in2(temp_mult[25][30:23]),.in1_ST_in2(q[25]));
compare_8bit compare24(.in1(8'd127),.in2(temp_mult[24][30:23]),.in1_ST_in2(q[24]));
compare_8bit compare23(.in1(8'd127),.in2(temp_mult[23][30:23]),.in1_ST_in2(q[23]));
compare_8bit compare22(.in1(8'd127),.in2(temp_mult[22][30:23]),.in1_ST_in2(q[22]));
compare_8bit compare21(.in1(8'd127),.in2(temp_mult[21][30:23]),.in1_ST_in2(q[21]));
compare_8bit compare20(.in1(8'd127),.in2(temp_mult[20][30:23]),.in1_ST_in2(q[20]));
compare_8bit compare19(.in1(8'd127),.in2(temp_mult[19][30:23]),.in1_ST_in2(q[19]));
compare_8bit compare18(.in1(8'd127),.in2(temp_mult[18][30:23]),.in1_ST_in2(q[18]));
compare_8bit compare17(.in1(8'd127),.in2(temp_mult[17][30:23]),.in1_ST_in2(q[17]));
compare_8bit compare16(.in1(8'd127),.in2(temp_mult[16][30:23]),.in1_ST_in2(q[16]));
compare_8bit compare15(.in1(8'd127),.in2(temp_mult[15][30:23]),.in1_ST_in2(q[15]));
compare_8bit compare14(.in1(8'd127),.in2(temp_mult[14][30:23]),.in1_ST_in2(q[14]));
compare_8bit compare13(.in1(8'd127),.in2(temp_mult[13][30:23]),.in1_ST_in2(q[13]));
compare_8bit compare12(.in1(8'd127),.in2(temp_mult[12][30:23]),.in1_ST_in2(q[12]));
compare_8bit compare11(.in1(8'd127),.in2(temp_mult[11][30:23]),.in1_ST_in2(q[11]));
compare_8bit compare10(.in1(8'd127),.in2(temp_mult[10][30:23]),.in1_ST_in2(q[10]));
compare_8bit compare09(.in1(8'd127),.in2(temp_mult[09][30:23]),.in1_ST_in2(q[09]));
compare_8bit compare08(.in1(8'd127),.in2(temp_mult[08][30:23]),.in1_ST_in2(q[08]));
compare_8bit compare07(.in1(8'd127),.in2(temp_mult[07][30:23]),.in1_ST_in2(q[07]));
compare_8bit compare06(.in1(8'd127),.in2(temp_mult[06][30:23]),.in1_ST_in2(q[06]));
compare_8bit compare05(.in1(8'd127),.in2(temp_mult[05][30:23]),.in1_ST_in2(q[05]));
compare_8bit compare04(.in1(8'd127),.in2(temp_mult[04][30:23]),.in1_ST_in2(q[04]));
compare_8bit compare03(.in1(8'd127),.in2(temp_mult[03][30:23]),.in1_ST_in2(q[03]));
compare_8bit compare02(.in1(8'd127),.in2(temp_mult[02][30:23]),.in1_ST_in2(q[02]));
compare_8bit compare01(.in1(8'd127),.in2(temp_mult[01][30:23]),.in1_ST_in2(q[01]));
compare_8bit compare00(.in1(8'd127),.in2(temp_mult[00][30:23]),.in1_ST_in2(q[00]));

//////////////////////////////////////////////////////



/////////////////////////////////////////////////////
logic [5:0]luythua_temp;
always @(*) begin
case (q[39:0])
	40'hffffffffff: begin temp_number[31:0] = temp_mult[39];  luythua_temp = 6'd00; end
	40'h7fffffffff: begin temp_number[31:0] = temp_mult[38];  luythua_temp = 6'd01; end
	40'h3fffffffff: begin temp_number[31:0] = temp_mult[37];  luythua_temp = 6'd02; end
	40'h1fffffffff: begin temp_number[31:0] = temp_mult[36];  luythua_temp = 6'd03; end
	40'h0fffffffff: begin temp_number[31:0] = temp_mult[35];  luythua_temp = 6'd04; end
	40'h07ffffffff: begin temp_number[31:0] = temp_mult[34];  luythua_temp = 6'd05; end
	40'h03ffffffff: begin temp_number[31:0] = temp_mult[33];  luythua_temp = 6'd06; end
	40'h01ffffffff: begin temp_number[31:0] = temp_mult[32];  luythua_temp = 6'd07; end
	40'h00ffffffff: begin temp_number[31:0] = temp_mult[31];  luythua_temp = 6'd08; end
	40'h007fffffff: begin temp_number[31:0] = temp_mult[20];  luythua_temp = 6'd09; end
	40'h003fffffff: begin temp_number[31:0] = temp_mult[29];  luythua_temp = 6'd10; end
	40'h001fffffff: begin temp_number[31:0] = temp_mult[28];  luythua_temp = 6'd11; end
	40'h000fffffff: begin temp_number[31:0] = temp_mult[27];  luythua_temp = 6'd12; end
	40'h0007ffffff: begin temp_number[31:0] = temp_mult[26];  luythua_temp = 6'd13; end
	40'h0003ffffff: begin temp_number[31:0] = temp_mult[25];  luythua_temp = 6'd14; end
	40'h0001ffffff: begin temp_number[31:0] = temp_mult[24];  luythua_temp = 6'd15; end
	40'h0000ffffff: begin temp_number[31:0] = temp_mult[23];  luythua_temp = 6'd16; end
	40'h00007fffff: begin temp_number[31:0] = temp_mult[22];  luythua_temp = 6'd17; end
	40'h00003fffff: begin temp_number[31:0] = temp_mult[21];  luythua_temp = 6'd18; end
	40'h00001fffff: begin temp_number[31:0] = temp_mult[20];  luythua_temp = 6'd19; end
	40'h00000fffff: begin temp_number[31:0] = temp_mult[19];  luythua_temp = 6'd20; end
	40'h000007ffff: begin temp_number[31:0] = temp_mult[18];  luythua_temp = 6'd21; end
	40'h000003ffff: begin temp_number[31:0] = temp_mult[17];  luythua_temp = 6'd22; end
	40'h000001ffff: begin temp_number[31:0] = temp_mult[16];  luythua_temp = 6'd23; end
	40'h000000ffff: begin temp_number[31:0] = temp_mult[15];  luythua_temp = 6'd24; end
	40'h0000007fff: begin temp_number[31:0] = temp_mult[14];  luythua_temp = 6'd25; end
	40'h0000003fff: begin temp_number[31:0] = temp_mult[13];  luythua_temp = 6'd26; end
	40'h0000001fff: begin temp_number[31:0] = temp_mult[12];  luythua_temp = 6'd27; end
	40'h0000000fff: begin temp_number[31:0] = temp_mult[11];  luythua_temp = 6'd28; end
	40'h00000007ff: begin temp_number[31:0] = temp_mult[10];  luythua_temp = 6'd29; end
	40'h00000003ff: begin temp_number[31:0] = temp_mult[09];  luythua_temp = 6'd30; end
	40'h00000001ff: begin temp_number[31:0] = temp_mult[08];  luythua_temp = 6'd31; end
	40'h00000000ff: begin temp_number[31:0] = temp_mult[07];  luythua_temp = 6'd32; end
	40'h000000007f: begin temp_number[31:0] = temp_mult[06];  luythua_temp = 6'd33; end
	40'h000000003f: begin temp_number[31:0] = temp_mult[05];  luythua_temp = 6'd34; end
	40'h000000001f: begin temp_number[31:0] = temp_mult[04];  luythua_temp = 6'd35; end
	40'h000000000f: begin temp_number[31:0] = temp_mult[03];  luythua_temp = 6'd36; end
	40'h0000000007: begin temp_number[31:0] = temp_mult[02];  luythua_temp = 6'd37; end
	40'h0000000003: begin temp_number[31:0] = temp_mult[01];  luythua_temp = 6'd38; end
	40'h0000000001: begin temp_number[31:0] = temp_mult[00];  luythua_temp = 6'd39; end
endcase
end
complement2_6bit nshift_neg(.in(luythua_temp),.out(luythua));
logic [7:0]nshift_nguyen;
FS_8 nguyen_dich(.a(8'd150),.b(temp_number[30:23]),.cin(1'b0),.out(nshift_nguyen),.cout());
shift_right nguyen_export(.in({2'b01,temp_number[22:0]}),.nshift(nshift_nguyen),.out(nguyen)); //25 bit


///////////////////////////////////////////////////////
logic [31:0]nguyen_sub;
always @(*) begin
	case(nguyen[3:0])
	4'd9: nguyen_sub = 32'b01000001000100000000000000000000;
	4'd8: nguyen_sub = 32'b01000001000000000000000000000000;
	4'd7: nguyen_sub = 32'b01000000111000000000000000000000;
	4'd6: nguyen_sub = 32'b01000000110000000000000000000000;
	4'd5: nguyen_sub = 32'b01000000101000000000000000000000;
	4'd4: nguyen_sub = 32'b01000000100000000000000000000000;
	4'd3: nguyen_sub = 32'b01000000010000000000000000000000;
	4'd2: nguyen_sub = 32'b01000000000000000000000000000000;
	4'd1: nguyen_sub = 32'b00111111100000000000000000000000;
	4'd0: nguyen_sub = 32'b00000000000000000000000000000000;
	endcase
end
logic [31:0]temp_le[3:0];
logic [31:0]temp_le_i[3:0];
logic [7:0]nshift_le[3:0];
logic [24:0]temp_le_ii[2:0];
add_sub add_sub_le00(.A(temp_number),.B(nguyen_sub),.checkequation(1'b1),.result(temp_le[0]));
mult le00(.A(temp_le[0]),.B(32'b01000001001000000000000000000000),.result(temp_le_i[0]));
FS_9 le00_dich(.a(9'd150),.b({1'b0,temp_le_i[0][30:23]}),.cin(1'b0),.out(nshift_le[0]),.cout());
shift_right le00_export(.in({2'b01,temp_le_i[0][22:0]}),.nshift(nshift_le[0]),.out(temp_le_ii[0])); //25 bit
////////////////////////////////////////////////////
logic [31:0]le_sub0;
always @(*) begin
	case(temp_le_ii[0][3:0])
	4'd9: le_sub0 = 32'b01000001000100000000000000000000;
	4'd8: le_sub0 = 32'b01000001000000000000000000000000;
	4'd7: le_sub0 = 32'b01000000111000000000000000000000;
	4'd6: le_sub0 = 32'b01000000110000000000000000000000;
	4'd5: le_sub0 = 32'b01000000101000000000000000000000;
	4'd4: le_sub0 = 32'b01000000100000000000000000000000;
	4'd3: le_sub0 = 32'b01000000010000000000000000000000;
	4'd2: le_sub0 = 32'b01000000000000000000000000000000;
	4'd1: le_sub0 = 32'b00111111100000000000000000000000;
	4'd0: le_sub0 = 32'b00000000000000000000000000000000;
	endcase
end
add_sub add_sub_le01(.A(temp_le_i[0]),.B(le_sub0),.checkequation(1'b1),.result(temp_le[1]));
mult le01(.A(temp_le[1]),.B(32'b01000001001000000000000000000000),.result(temp_le_i[1]));
FS_9 le01_dich(.a(9'd150),.b({1'b0,temp_le_i[1][30:23]}),.cin(1'b0),.out(nshift_le[1]),.cout());
shift_right le01_export(.in({2'b01,temp_le_i[1][22:0]}),.nshift(nshift_le[1]),.out(temp_le_ii[1])); //25 bit

logic [24:0] ketquale;
logic [24:0] temp_le_iii[2:0];
mult24 multle0(.in1(temp_le_ii[0][23:0]),.in2(24'd10),.S(temp_le_iii[0]));
adder_25bit le1(.in1(temp_le_iii[0]),.in2(temp_le_ii[1]),.S(ketquale),.Cout());
assign le = ketquale;
endmodule