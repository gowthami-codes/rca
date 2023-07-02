//***RTL CODE FOR FULLADDER USING HALF ADDER***//

module fulladder(a,b,cin,sum,carry);
	input a,b,cin;
	output sum,carry;
	wire w1,w2,w3;
	
half_adder H1(a,b,w1,w2);
half_adder H2(w1,cin,sum,w3);
or (carry, w2, w3);

endmodule