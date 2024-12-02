module adder_array (

	input		A0B0, A0B1, A0B2, A0B3, 
				A1B0, A1B1, A1B2, A1B3, 
				A2B0, A2B1, A2B2, A2B3, 
				A3B0, A3B1, A3B2, A3B3,
			
	output	P0, P1, P2, P3, P4, P5, P6, P7
	);
	
	wire		C01, C11, C21, C31,
				C02, C12, C22, C32,
				C03, C13, C23, C33,
				S01, S11, S21, S31,
				S02, S12, S22, S32,
				S03, S13, S23, S33;
		
	full_adder FA01 (
		.A(A1B0), .B(A0B1), .Cin(1'b0),
		.Sum(S01), .Cout(C01)
		);
		
	full_adder FA11 (
		.A(A2B0), .B(A1B1), .Cin(C01),
		.Sum(S11), .Cout(C11)
		);
		
	full_adder FA21 (
		.A(A3B0), .B(A2B1), .Cin(C11),
		.Sum(S21), .Cout(C21)
		);
		
	full_adder FA31 (
		.A(1'b0), .B(A3B1), .Cin(C21),
		.Sum(S31), .Cout(C31)
		);
		
	full_adder FA02 (
		.A(S11), .B(A0B2), .Cin(1'b0),
		.Sum(S02), .Cout(C02)
		);
		
	full_adder FA12 (
		.A(S21), .B(A1B2), .Cin(C02),
		.Sum(S12), .Cout(C12)
		);
		
	full_adder FA22 (
		.A(S31), .B(A2B2), .Cin(C12),
		.Sum(S22), .Cout(C22)
		);
		
	full_adder FA32 (
		.A(C31), .B(A3B2), .Cin(C22),
		.Sum(S32), .Cout(C32)
		);
	
	full_adder FA03 (
		.A(S12), .B(A0B3), .Cin(1'b0),
		.Sum(S03), .Cout(C03)
		);
	
	full_adder FA13 (
		.A(S22), .B(A1B3), .Cin(C03),
		.Sum(S13), .Cout(C13)
		);
		
	full_adder FA23 (
		.A(S32), .B(A2B3), .Cin(C13),
		.Sum(S23), .Cout(C23)
		);
	
	full_adder FA33 (
		.A(C32), .B(A3B3), .Cin(C23),
		.Sum(S33), .Cout(C33)
		);
		
	assign	P0 = A0B0;
	assign	P1 = S01;
	assign	P2 = S02;
	assign	P3 = S03;
	assign	P4 = S13;
	assign	P5 = S23;
	assign	P6 = S33;
	assign 	P7 = C33;
	
endmodule