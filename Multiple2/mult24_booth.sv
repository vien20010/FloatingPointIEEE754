module mult24_booth(in1,in2,S);

input [23:0]in1,in2;
output [47:0]S;

logic [47:0]temp_in1;
logic [47:0]temp_mul[23:0],mul[22:0];

logic [23:0]M,A,Q,q;

assign M={24'b0,in1}; 
assign Q=in2;
assign A={48'b0};
assign q[0]=0;

case ({in[1],in[0]})
    2'b10:  
    default: 
endcase

endmodule

module unit_mult24_booth(A,M,Q,q0,AQq0);

input [23:0]A,M,Q;
input q0;
output [48:0]AQq0;

logic [23:0]temp;
logic [48:0]AQq0_before_shift;

case ({Q[0],q0})
    2'b10: FS_24 case1(.a(A),.b(M),.cin(1'b0),.out(temp),.cout());
    2'b01: adder_24bit case2(.in1(A),.in2(M),.S(temp),.Cout());
    default: 
endcase

assign AQq0_before_shift = {temp,Q,q0};
shift_right49(AQq0_before_shift,1,AQq0);

endmodule
