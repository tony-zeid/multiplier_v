module bit_to_reg (
	
	input 	A0, A1, A2, A3, A4, A5, A6, A7,		
	output	[7:0] OUT			
	);

	assign OUT[0] = A0;
	assign OUT[1] = A1;
	assign OUT[2] = A2;
	assign OUT[3] = A3;
	assign OUT[4] = A4;
	assign OUT[5] = A5;
	assign OUT[6] = A6;
	assign OUT[7] = A7;	

endmodule