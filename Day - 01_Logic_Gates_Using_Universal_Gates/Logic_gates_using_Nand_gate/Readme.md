# 🔌 Logic Gates Using NAND (Verilog)

This project shows how basic logic gates can be implemented using only NAND gates, since NAND is a universal gate.

## 📘 Output Mapping

y[5:0] represents the following gates:

y[0] → NOT

y[1] → AND

y[2] → OR

y[3] → NOR

y[4] → XOR

y[5] → XNOR

## 🔑 Key Points

All gates are constructed using the Nand_Gate module.

Testbench checks inputs: 00, 01, 10, 11.

In ModelSim, the design module and testbench are written in the same file for easy compilation.

## ▶️ How to Run (ModelSim)

Add the .v file to a new project

 Compile

Run simulation on:

Logic_gates_using_Nand_tb


View outputs in transcript or waveform