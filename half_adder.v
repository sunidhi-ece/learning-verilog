module half_adder (
  input a, b,
  output sum, carry
);
  assign sum   = a ^ b;        // XOR gate
  assign carry = a & b;      // AND gate
endmodule
