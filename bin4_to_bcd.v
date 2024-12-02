module bin4_to_bcd (
    input [3:0] bin,    // 4-bit binary input
    output reg [3:0] bcd0,  // Ones place
    output reg [3:0] bcd1  // Tens place
);

reg [3:0] shift_reg;  // Register to hold the binary number during processing
integer i;             // Loop counter

always @(*) begin
    // Initialize shift register and BCD digits
    shift_reg = bin;
    bcd0 = 4'b0000;  // Initialize BCD digits to zero
    bcd1 = 4'b0000;
    
    // Apply Double Dabble algorithm for converting binary to BCD
    for (i = 0; i < 4; i = i + 1) begin
        // Check if any BCD digit is >= 5, if so, add 3
        if (bcd1 >= 5) bcd1 = bcd1 + 3;
        if (bcd0 >= 5) bcd0 = bcd0 + 3;

        // Shift the BCD digits left by 1
        bcd1 = {bcd1[2:0], bcd0[3]};  // Shift bcd1 and carry the MSB to bcd0
        bcd0 = {bcd0[2:0], shift_reg[3]};  // Shift bcd0 and insert MSB of shift_reg
        
        // Shift the binary number left by 1
        shift_reg = shift_reg << 1;
    end
end

endmodule