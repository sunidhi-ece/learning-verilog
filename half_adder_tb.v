`timescale 1ns / 1ps

module half_adder_tb;

    // Inputs declared as reg
    reg a;
    reg b;

    // Outputs declared as wire
    wire sum;
    wire carry;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Setup waveform dumping for tools like EDA Playground or GTKWave
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);

        // Print results to the console log
        $monitor("Time = %0t | A = %b, B = %b | Sum = %b, Carry = %b", $time, a, b, sum, carry);

        // Apply all 4 truth table combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish; // Stop the simulation
    end

endmodule
