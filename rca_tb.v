//***TB CODE FOR RIPPLE CARRY ADDER***//

module rca_tb();
	reg [3:0]a,b;
	reg cin;
	wire [3:0]sum,carry;
rca DUT(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
	initial
	begin
		a = 4'b0000;
		b = 4'b0000;
		cin = 0;
	#10 a = 4'b0000;
		 b = 4'b0000;
		 cin = 1;
	#10 a = 4'b0001;
		 b = 4'b0010;
		 cin = 0;
	#10 a = 4'b0011;
		 b = 4'b0110;
		 cin = 0;
	#10 a = 4'b0101;
		 b = 4'b0011;
		 cin = 0;
	end
endmodule
		