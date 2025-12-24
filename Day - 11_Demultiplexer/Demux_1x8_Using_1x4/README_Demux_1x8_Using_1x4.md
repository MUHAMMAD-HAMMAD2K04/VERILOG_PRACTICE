# 1x8 Demultiplexer Using 1x4 and 1x2 Demux (Verilog)

## 📌 Overview
This project implements a **1×8 Demultiplexer** using structural (hierarchical) design in **Verilog HDL**.
The design is built by combining:
- One **1×2 Demultiplexer**
- Two **1×4 Demultiplexers**

---

## 🧩 Modules Description

### Demux_1x4
Routes a single input `d` to one of four outputs based on select lines `s0` and `s1`.

**Inputs:** d, s0, s1  
**Outputs:** y0, y1, y2, y3

---

### Demux_1x2
Routes input `d` to one of two outputs using select line `s`.

**Inputs:** d, s  
**Outputs:** y0, y1

---

### Demux_1x8_Using_1x4
Implements a **1×8 Demultiplexer** using:
- One `Demux_1x2`
- Two `Demux_1x4`

**Select Logic**
- `s0` selects the active 1×4 block
- `s1`, `s2` select the output within the block

---

## 🧪 Testbench
The testbench applies all combinations of `s0, s1, s2` with `d = 1`
and prints results using `$display` for verification.

---

## 📊 Truth Table

| s0 | s1 | s2 | Output |
|----|----|----|--------|
| 0  | 0  | 0  | y0 |
| 0  | 0  | 1  | y1 |
| 0  | 1  | 0  | y2 |
| 0  | 1  | 1  | y3 |
| 1  | 0  | 0  | y4 |
| 1  | 0  | 1  | y5 |
| 1  | 1  | 0  | y6 |
| 1  | 1  | 1  | y7 |

---

## 🛠 Tools
- Verilog HDL
- ModelSim / Icarus Verilog / Vivado

---

## ✍️ Author
Educational Verilog practice module.
