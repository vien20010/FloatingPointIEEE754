`timescale 1ns / 1ns
`include "div.sv"
`include "adder.sv"
`include "find1.sv"
`include "complement2.sv"
`include "shiftleft.sv"
`include "export_result.sv"
`include "checkspecial.sv"
`include "div24.sv"


module division_tb;
    logic [31:0]A,B;
    logic [31:0]result;
    logic underflow,overflow;

    
	


    div uut(.A(A),
                .B(B),
                .overflow(overflow),
                .underflow(underflow),
                .result(result));

initial begin
	A = 32'b0_00000000_10000000000000000000000;

	B = 32'b0_00000000_10000000000000000000000;
	#10;
	A = 32'b0_00000000_10000000000000000000000;

	B = 32'b0_00000000_01000000000000000000000;
	#10;
	A = 32'b0_00000000_11100000000000000000000;

	B = 32'b0_00000000_11000000000000000000000;
	#10;
	A = 32'b0_00000001_10000000000000000000000;

	B = 32'b0_00000001_01000000000000000000000;	
	#10;
	A = 32'b00111111110000000000000000000000; // 1.5

	B = 32'b01000000001100000000000000000000; //2.75
	#10;
	A = 32'b11000000011000000000000000000000; // -3.5

	B = 32'b10111111101000000000000000000000; // -1.25
	#10;
	A = 32'b11000100111111000111010011001101; // -2019.65

	B = 32'b01000001001010001010001111010111; // 10.54
	#10;
	A = 32'b11000100111111000111010011001101; // -2019.65

	B = 32'b01000001001010001010001111010111; // 10.54
	#10;
	A = 32'b11000100111111000111010011001101; // -2019.65

	B = 32'b0; // 0
	#10;
	A = 32'b11000100111111000111010011001101; // +2019.65

	B = 32'b0; // 0
		#10;
		A = 32'b0; // 0
	B = 32'b11000100111111000111010011001101; // +2019.65
		#10;
		A = 32'b0; // 0
	B = 32'b01000100111111000111010011001101; // +2019.65

	#10;
	A = 32'b0; // 0

	B = 32'b0; // 0
	#10;
	A = 32'b0_11111111_00000000000000000000000;// +INF	

	B = 32'b0; // 0	
	#10;
	A = 32'b1_11111111_00000000000000000000000;// -INF	

	B = 32'b0; // 0	
	#10;
	A = 32'b01000001001010001010001111010111; // 10.54

	B = 32'b0_11111111_00000000000000000000000;// +INF
	#10;
	A = 32'b01000001001010001010001111010111; // 10.54

	B = 32'b1_11111111_00000000000000000000000;// -INF
	#10;
	A = 32'b01000001001010001010001111010111; // 10.54

	B = 32'b11111111100000000000000000000001;// NaN
	#10;
	A = 32'b01000001001010001010001111010111; // 10.54

	B = 32'b01000000101110011001100110011010;// NaN
	#10;

	$finish;	
end
initial
begin
$vcdplusfile("tb2.vpd");
$vcdpluson();
end

endmodule