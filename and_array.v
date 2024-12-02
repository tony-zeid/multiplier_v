module and_array (	

	input		A0, A1, A2, A3, 
				B0, B1, B2, B3,
				
	output	A0B0, A0B1, A0B2, A0B3, 
				A1B0, A1B1, A1B2, A1B3, 
				A2B0, A2B1, A2B2, A2B3, 
				A3B0, A3B1, A3B2, A3B3
				);
	
	assign	A0B0 = A0 & B0;
	assign	A0B1 = A0 & B1;
	assign	A0B2 = A0 & B2;
	assign	A0B3 = A0 & B3;
	assign	A1B0 = A1 & B0;
	assign	A1B1 = A1 & B1;
	assign	A1B2 = A1 & B2;
	assign	A1B3 = A1 & B3;
	assign	A2B0 = A2 & B0;
	assign	A2B1 = A2 & B1;
	assign	A2B2 = A2 & B2;
	assign	A2B3 = A2 & B3;
	assign	A3B0 = A3 & B0;
	assign	A3B1 = A3 & B1;
	assign	A3B2 = A3 & B2;
	assign	A3B3 = A3 & B3;	

endmodule