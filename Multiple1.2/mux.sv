module mux24(out,A,B,sel);
output [23:0]out;
input  [23:0]A,B;
input  sel;

assign out=sel?B:A;

endmodule

module mux8(out,A,B,sel);
output [7:0]out;
input  [7:0]A,B;
input  sel;

assign out=sel?B:A;

endmodule

module mux1(out,A,B,sel);
output out;
input  A,B;
input  sel;

assign out=sel?B:A;

endmodule