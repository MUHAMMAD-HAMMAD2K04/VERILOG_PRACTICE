# ➖ Half Subtractor (HS)

The Half Subtractor is a basic combinational circuit used to subtract one 1-bit input from another.
It produces:

D → Difference

B → Borrow

This module demonstrates the fundamental logic used in arithmetic circuits.

## 🧠 1. Module Explanation

The Half Subtractor takes two single-bit inputs:

A → Minuend

B → Subtrahend

It outputs:

D (Difference)

B (Borrow)

Logic used:

Difference = A ⊕ B

Borrow = A' & B

## 📊 2. Truth Table
| A | B | Difference (D) | Borrow (B) |
| - | - | -------------- | ---------- |
| 0 | 0 | 0              | 0          |
| 0 | 1 | 1              | 1          |
| 1 | 0 | 1              | 0          |
| 1 | 1 | 0              | 0          |

## 🔌 3. Circuit Diagram (Insert Image)

📷 Place your circuit image here (e.g., Half_Sub_Circuit.JPG)

![alt text](Ckt_Diagram.png)

🖥️ 4. Simulation Snapshot

![📷 Add waveform or console output image here (e.g., Half_Sub_Waveform.JPG)](Half_Sub_Output.PNG)

[Your Simulation Screenshot Image]

🧾 5. Verilog Code Explanation
Half Subtractor Logic
xor n1(D, A, B);     // Difference = A XOR B
not n2(A_not, A);    // Invert A
and n3(B_or, A_not, B);  // Borrow = A' AND B

Key Points

✔️ XOR generates the difference
✔️ NOT + AND generate borrow
✔️ Simple and easy gate-level modeling
✔️ Ideal for beginners learning subtraction logic

▶️ 6. Testbench Overview

The testbench applies all four input combinations:

A = 0; B = 0;
A = 0; B = 1;
A = 1; B = 0;
A = 1; B = 1;


Console output prints:

A B → Diff Borrow


Example:

A = 0, B = 1, Diff = 1, Borrow = 1

🎯 7. Purpose of This Module

This project helps beginners understand:

Basic combinational circuits

Borrow logic

XOR, AND, and NOT gate usage

How to write clean module + testbench in Verilog