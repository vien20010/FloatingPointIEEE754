module FS(
	x,
	y,
	cin,
	out,
	cout
);

input x, y, cin;
output out, cout;

logic x, y, cin;
reg out, cout;

initial 
begin
	assign out = x ^ y ^ cin;
	assign cout = ((~x) & y ) | (cin & (~(x ^ y)));
end
endmodule
