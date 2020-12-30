`timescale 1ns / 1ns




module Bi2Dec_tb;
    logic [31:0]in;
   logic [24:0]nguyen,le;
   logic [5:0]luythua;

    
	

	Bi2Dec Bi(.in(in),.nguyen(nguyen),.le(le),.luythua(luythua));


initial
        begin
	in = 32'b00111011011001101010111111001101;


	#10;
	
			$finish;

        end
		

endmodule
