 /******************Used: 2'two's complement of number 25bit*****************/

module tc25(out,in);
output	[24:0]out;
input	[24:0]in;

logic	[24:0]temp;
//Not 
assign  temp = ~in;
//add 1
adder25  add1(out,temp,25'd1);
endmodule

 /******************Used: two's complement of number 10bit*****************/
module tc10(out,in);
output	[9:0]out;
input	[9:0]in;

logic	[9:0]temp;

//Not 
assign temp=~in;
//add 1
adder10  add1(out,temp,10'd1);
endmodule


 /******************Used: two's complement of number 9bit*****************/
module tc9(out,in);
output	[8:0]out;
input	[8:0]in;

logic	[8:0]temp;

//Not 
assign temp=~in;
//add 1
adder9  add1(out,temp,9'd1);
endmodule

 /******************Used: two's complement of number 8bit*****************/
module tc8(out,in);
output	[7:0]out;
input	[7:0]in;

logic	[7:0]temp;

//Not 
assign temp=~in;
//add 1
adder8  add1(out,temp,8'd1);
endmodule
