# 4-Bit Ripple Carry Adder (Gate-Level) — README

## ➕ Project overview
A gate-level 4-bit Ripple Carry Adder (RCA) built from 1-bit gate-level full adders. Includes a testbench (Four_Bit_Ripple_Carry_Adder_TB) that exercises representative input combinations and prints the results. This is an educational implementation intended to show carry propagation (the “ripple” effect) and how gate-level modules are instantiated in Verilog.

## 🧠 1. Module Summary
Full_Adder_Gate_Level

1-bit full adder implemented using primitive gates.

Inputs: a, b, cin

Outputs: s (sum), cout (carry out)

Equations:
s = a ⊕ b ⊕ cin
cout = (a & b) | ((a ⊕ b) & cin)

Four_Bit_Ripple_Carry_Adder

4-bit adder built by chaining four Full_Adder_Gate_Level instances.

Inputs: A[3:0], B[3:0], Cin

Outputs: S[3:0], Cout

Behavior: Each stage’s carry output connects to the next stage’s cin (C[0] → C[1] → C[2] → Cout).

Four_Bit_Ripple_Carry_Adder_TB

Testbench that drives the adder with multiple test vectors and prints results using $display.

## 📊 2. Example I/O (selected cases from testbench)
| A (bin) | B (bin) | Cin |    Decimal sum | S (bin) | Cout |
| ------: | ------: | :-: | -------------: | :-----: | :--: |
|  `0001` |  `0010` |  0  |  1 + 2 + 0 = 3 |  `0011` |   0  |
|  `0101` |  `0011` |  1  |  5 + 3 + 1 = 9 |  `1001` |   0  |
|  `1111` |  `0001` |  0  | 15 + 1 + 0 =16 |  `0000` |   1  |
|  `1010` |  `1101` |  1  | 10 +13 + 1 =24 |  `1000` |   1  |

Note: S shows the lower 4 bits of the sum. Cout is the 5th bit (overflow).

## 🧩 3. Gate-Level Verilog (core snippets)

Full_Adder_Gate_Level (gate primitives)

module Full_Adder_Gate_Level(output s, cout, input a, b, cin);
    wire s1, c1, c2;
    xor g1(s1, a, b);
    and g2(c1, a, b);
    xor g3(s, s1, cin);
    and g4(c2, s1, cin);
    or  g5(cout, c1, c2);
endmodule


Four_Bit_Ripple_Carry_Adder (instantiates 4 full adders)

module Four_Bit_Ripple_Carry_Adder(output [3:0] S, Cout, input [3:0] A, [3:0] B, Cin);
    wire [2:0] C;
    Full_Adder_Gate_Level FA1(S[0], C[0], A[0], B[0], Cin);
    Full_Adder_Gate_Level FA2(S[1], C[1], A[1], B[1], C[0]);
    Full_Adder_Gate_Level FA3(S[2], C[2], A[2], B[2], C[1]);
    Full_Adder_Gate_Level FA4(S[3], Cout, A[3], B[3], C[2]);
endmodule


There is also a commented RTL version of a full adder in the source:

// assign cout = (a & b) | ((a ^ b) & cin);
// assign s    = a ^ b ^ cin;


Use the RTL variant for cleaner code and easier synthesis.

## 🔬 4. Testbench (what it does)

Instantiates the Four_Bit_Ripple_Carry_Adder as DUT.

Applies the following vectors (sequentially with #10 delays):

A = 4'b0001; B = 4'b0010; Cin = 0;

A = 4'b0101; B = 4'b0011; Cin = 1;

A = 4'b1111; B = 4'b0001; Cin = 0;

A = 4'b1010; B = 4'b1101; Cin = 1;

Prints formatted lines like:
A=0001 B=0010 Cin=0 => S=0011 Cout=0

Finishes with $display("TEST BENCH COMPLETED") and $finish.

## 🛠️ 5. How to Simulate / Run

Open your simulator (ModelSim, Vivado, Icarus Verilog, etc.).

Compile all Verilog files (Full_Adder_Gate_Level, Four_Bit_Ripple_Carry_Adder, Four_Bit_Ripple_Carry_Adder_TB).

Run the testbench and observe the console output or waveform.

In Icarus Verilog:

iverilog -o rca_tb.vvp *.v
vvp rca_tb.vvp


Or use your simulator’s GUI to run and view waveforms.

## 🖼️ 6. Circuit Diagram & Simulation Snapshot

📷 Add your circuit image here (e.g., Four_Bit_Ripple_Circuit.JPG)
![\[Your RCA Circuit Diagram\]](Ckt_Diagram.png)

📷 Add your waveform or console output here (e.g., Four_Bit_Ripple_Waveform.JPG)
![\[Your Simulation Output Image\]](4_Bit_RCA_Output.PNG)

✅ 7. Key Notes & Takeaways

Educational: Gate-level instantiation helps you see how basic gates form arithmetic cells.

Carry Propagation: Ripple adders are simple but carry-propagation time grows linearly with bit-width.

Improve performance: For larger adders, consider carry-lookahead or other fast adder architectures.

RTL vs Gate-level: Gate-level is great for learning; RTL is shorter and preferred for synthesis/production.