//***RTL CODE FOR RIPPLE CARRY ADDER***//

module rca(a,b,cin,sum,carry);
	input [3:0]a,b;
	output cin;
	output [3:0]sum,carry;
		fulladder F1(a[0], b[0], cin, sum[0], carry[0]);
		fulladder F2(a[1], b[1], carry[0], sum[1], carry[1]);
		fulladder F3(a[2], b[2], carry[1], sum[2], carry[2]);
		fulladder F4(a[3], b[3], carry[2], sum[3], carry[3]);
endmodule