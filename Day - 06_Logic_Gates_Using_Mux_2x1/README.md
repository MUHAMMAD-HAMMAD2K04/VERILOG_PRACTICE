# ➕ Logic Gates Using a 2×1 Multiplexer

Implementing AND, OR, NOT, NAND, NOR, XOR, XNOR using Only MUXes

This project demonstrates how basic logic gates can be implemented using a single 2×1 multiplexer.
A multiplexer is a universal combinational component — meaning any logic function can be built using MUXes.

This project uses one simple module:

✔ Mux_2x1 → Performs the core selection
✔ Logic_Gates_Using_Mux_2x1 → Builds 7 logic gates using only MUX
✔ Includes a complete testbench

## 🧠 1. Project Explanation

A 2×1 MUX selects between two inputs based on a single select line:

Y = Sel ? B : A


By choosing the select line smartly and feeding constant values (1, 0, or inverted inputs),
we can force the MUX to behave like any logic gate.

This project implements the following gates:

| Gate | Expression | Realization Idea             |
| ---- | ---------- | ---------------------------- |
| AND  | A·B        | Select = A, Inputs = (A,B)   |
| OR   | A+B        | Select = A, Inputs = (B,A)   |
| NOT  | A’         | Select = ~A, Inputs = (A,0)  |
| NAND | (A·B)’     | Select = A, Inputs = (~A,~B) |
| NOR  | (A+B)’     | Select = A, Inputs = (~B,~A) |
| XOR  | A ⊕ B     | Select = A, Inputs = (B,~B)  |
| XNOR | (A ⊕ B)’  | Select = A, Inputs = (~B,B)  |


All using only the 2x1 MUX building block.

🔍 2. How Each Gate Is Formed Using MUX
Gate	Implemented Using MUX Logic
AND	Y = Sel ? B : A with Sel=A
OR	Y = Sel ? A : B with Sel=A
NOT	Select between A and 0 using inverted select
NAND	Select between ~A and ~B
NOR	Select between ~B and ~A
XOR	Select between B and ~B
XNOR	Select between ~B and B

## 📘 3. Logic Expressions

✔ AND using MUX
Mux_2x1 AND(y1, A, B, A);

If A = 0 → output = A
If A = 1 → output = B
→ Output = A·B

✔ OR using MUX
Mux_2x1 OR(y2, B, A, A);

If A = 0 → output = B
If A = 1 → output = A
→ Output = A + B

✔ NOT using MUX
Mux_2x1 NOT(y3, A, 0, ~A);

✔ XOR & XNOR

Using the identity:

If A = 0 → output = B

If A = 1 → output = ~B

Hence:

XOR → Mux(B, ~B, A)
XNOR → Mux(~B, B, A)

## 4. 🧮 Truth Table (Separate Section)

Truth Table for All Logic Gates Implemented via Mux

| A | B | AND | OR | NOT(A) | NAND | NOR | XOR | XNOR |
| - | - | --- | -- | ------ | ---- | --- | --- | ---- |
| 0 | 0 | 0   | 0  | 1      | 1    | 1   | 0   | 1    |
| 0 | 1 | 0   | 1  | 1      | 1    | 0   | 1   | 0    |
| 1 | 0 | 0   | 1  | 0      | 1    | 0   | 1   | 0    |
| 1 | 1 | 1   | 1  | 0      | 0    | 0   | 0   | 1    |


## 🔌 5. Circuit Diagram (Insert Image)

📷 Add your block-level diagram or schematic for:

MUX 2x1

Gate implementations using MUX

Example placeholders:

[ Mux_2x1_Circuit.jpg ]
[ LogicGates_Using_Mux_BlockDiagram.png ]

## 🖥️ 6. Simulation Snapshot

Include waveform or console output showing values of:

A B → y1 y2 y3 y4 y5 y6 y7


📷 Add your simulation screenshots here:

[ LogicGates_Using_Mux_Simulation.png ]

## 🎯 7. Purpose of This Project

This module helps learners understand:

✔ How a 2×1 MUX can implement all logic gates
✔ Universal logic construction
✔ Gate-level design using multiplexers
✔ Minimal hardware implementation
✔ Clean Verilog structural modeling
✔ Testbench writing and waveform inspection

This is an important concept used in:

FPGA optimizations

CMOS logic simplification

ALU design

Multiplexer-based switching logic

## ⭐ 8. Summary

This project proves that:
A single 2×1 MUX is enough to build ANY logic gate.
You now have 7 gates implemented using only one basic hardware component — the multiplexer.