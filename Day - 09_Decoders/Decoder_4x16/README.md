# 🔢 4×16 Decoder (Verilog)
## 📘 Overview

The 4×16 Decoder is a combinational digital circuit that converts a 4-bit binary input into a one-hot 16-bit output. For every unique input combination, exactly one output line is asserted HIGH (1) while all others remain LOW (0).

This type of decoder is commonly used in:

Memory address decoding

Instruction decoding

Chip select logic

Control units in processors

## 🔌 Module Description
Inputs
Signal	Width	Description
a	4-bit	Binary select input
Outputs
Signal	Width	Description
z	16-bit	One-hot decoded output

## ⚙️ Functional Behavior

The decoder activates only one output bit based on the binary value of input a.

Examples:

a = 4'b0000 → z = 0000_0000_0000_0001

a = 4'b0101 → z = 0000_0000_0010_0000

a = 4'b1111 → z = 1000_0000_0000_0000

## 📊 Truth Table

| Input `a` | Output `z`       |
| --------- | ---------------- |
| 0000      | 0000000000000001 |
| 0001      | 0000000000000010 |
| 0010      | 0000000000000100 |
| 0011      | 0000000000001000 |
| 0100      | 0000000000010000 |
| 0101      | 0000000000100000 |
| 0110      | 0000000001000000 |
| 0111      | 0000000010000000 |
| 1000      | 0000000100000000 |
| 1001      | 0000001000000000 |
| 1010      | 0000010000000000 |
| 1011      | 0000100000000000 |
| 1100      | 0001000000000000 |
| 1101      | 0010000000000000 |
| 1110      | 0100000000000000 |
| 1111      | 1000000000000000 |


## 🧠 Verilog Design Notes

Implemented using a case statement

Fully combinational logic

No clock or enable required

One-hot output encoding

## 🧪 Testbench Summary

The testbench applies all 16 input combinations sequentially and prints the output using $display.

Sample Output Format:

z = 0000010000000000, a = 1010

## ✅ Key Features

✔ One-hot decoding
✔ Clean and readable Verilog
✔ Scalable decoder design
✔ Suitable for synthesis and simulation
 
## 📌 Learning Outcome
 
This module strengthens understanding of:

Large-scale decoder design

Binary-to-one-hot conversion

Use of case statements

Decoder scalability (2×4 → 3×8 → 4×16)

## ✍️ Author Note

This decoder is part of a structured Verilog practice series focused on building strong fundamentals in combinational logic and digital system design.