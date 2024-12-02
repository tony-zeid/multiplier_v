module bin_to_bcd (
    input [7:0] bin,    // 8-bit binary input
    output reg [3:0] bcd0,  // Ones place
    output reg [3:0] bcd1,  // Tens place
    output reg [3:0] bcd2   // Hundreds place
);

reg [7:0] shift_reg;  // Register to hold the binary number during processing
integer i;             // Loop counter

always @(*) begin
    // Initialize shift register and BCD digits
    shift_reg = bin;
    bcd0 = 4'b0000;  // Initialize BCD digits to zero
    bcd1 = 4'b0000;
    bcd2 = 4'b0000;
    
    // Apply Double Dabble algorithm for converting binary to BCD
    for (i = 0; i < 8; i = i + 1) begin
        // Check if any BCD digit is >= 5, if so, add 3
        if (bcd2 >= 5) bcd2 = bcd2 + 3;
        if (bcd1 >= 5) bcd1 = bcd1 + 3;
        if (bcd0 >= 5) bcd0 = bcd0 + 3;

        // Shift the BCD digits left by 1
        bcd2 = {bcd2[2:0], bcd1[3]};  // Shift bcd2 and carry the MSB to bcd1
        bcd1 = {bcd1[2:0], bcd0[3]};  // Shift bcd1 and carry the MSB to bcd0
        bcd0 = {bcd0[2:0], shift_reg[7]};  // Shift bcd0 and insert MSB of shift_reg
        
        // Shift the binary number left by 1
        shift_reg = shift_reg << 1;
    end
end

endmodule