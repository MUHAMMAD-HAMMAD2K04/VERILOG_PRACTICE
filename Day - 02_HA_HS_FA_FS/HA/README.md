# ➕ Half Adder (HA)

The Half Adder is a basic combinational digital circuit that performs the addition of two single-bit binary numbers.
It produces:

S → Sum

Cout → Carry

This module forms the foundation for building Full Adders, ALUs, and arithmetic circuits.

## 🧠 1. Module Explanation

The Half Adder takes two 1-bit inputs:

A → First operand

B → Second operand

It outputs:

S (Sum)

Cout (Carry Out)

Logic used:

Sum = A ⊕ B

Carry = A & B

## 📊 2. Truth Table
| A | B | Sum (S) | Carry (Cout) |
| - | - | ------- | ------------ |
| 0 | 0 | 0       | 0            |
| 0 | 1 | 1       | 0            |
| 1 | 0 | 1       | 0            |
| 1 | 1 | 0       | 1            |

## 🔌 3. Circuit Diagram (Insert Image)

📷 Add your circuit image here (e.g., Half_Adder_Circuit.JPG)

![\[Your Half Adder Circuit Diagram\]](Ckt_Diagram.png)

🖥️ 4. Simulation Snapshot

📷 Add waveform or console simulation output here (e.g., Half_Adder_Waveform.JPG)

![\[Your Simulation Output Image\]](Half_Adder_Output.PNG)

## 🧾 5. Verilog Code Explanation
Half Adder Logic
xor n1(s, a, b);      // Sum = A XOR B
and n2(cout, a, b);   // Carry = A AND B

Key Notes

✔️ XOR produces correct binary sum
✔️ AND determines carry generation
✔️ Smallest building block of all adders
✔️ Very useful for beginners learning digital logic

## ▶️ 6. Testbench Overview

All input combinations are applied sequentially:

A = 0; B = 0;
A = 0; B = 1;
A = 1; B = 0;
A = 1; B = 1;


Simulator output format:

A B → Sum Carry


Example:

A = 1, B = 1, S = 0, Cout = 1

## 🎯 7. Purpose of This Module

This Half Adder module helps in understanding:

Basic binary addition

How XOR and AND gates are used in arithmetic circuits

Writing HDL code in gate-level abstraction

Testbench structure for simple digital modules