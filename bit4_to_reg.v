module bit4_to_reg (
	
	input 	A0, A1, A2, A3,		
	output	[3:0] OUT			
	);

	assign OUT[0] = A0;
	assign OUT[1] = A1;
	assign OUT[2] = A2;
	assign OUT[3] = A3;

endmodule