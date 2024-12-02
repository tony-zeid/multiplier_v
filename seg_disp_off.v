module seg_disp_off (
	
	// Create registers for each display to remain off
	output reg [6:0] seg3
	);

   // Initialize all segments to off (active-low)
   initial begin
		seg3 = 7'b1111111;
   end

endmodule
