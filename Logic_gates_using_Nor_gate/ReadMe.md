# 🔌 Logic Gates Using Only NAND Gate | Verilog

This project demonstrates how all basic logic gates can be constructed using only one universal gate — NAND.
The design outputs six gates using the vector y[5:0].

## 📘 Output Mapping
Bit	Gate
y[0]	NOT
y[1]	AND
y[2]	OR
y[3]	NOR
y[4]	XOR
y[5]	XNOR

All gates are implemented through the Nand_Gate module.

## 🔑 Key Points

✔️ NAND gate is used to build all 6 logic gates

✔️ Clean structural design using intermediate wires

✔️ Testbench checks all combinations: 00, 01, 10, 11

✔️ In ModelSim, both the design module and testbench are written in the same file for easier compilation

## ▶️ How to Run (ModelSim)

Open ModelSim

Create a new project

Add your .v file (module + testbench in the same file)

Compile the design

Run simulation on:

Logic_gates_using_Nand_tb


View results in Transcript or Waveform

## 📂 Files Included

Logic_gates_using_Nand — Main design (all gates using NAND)

Nand_Gate — Basic NAND wrapper

Logic_gates_using_Nand_tb — Testbench