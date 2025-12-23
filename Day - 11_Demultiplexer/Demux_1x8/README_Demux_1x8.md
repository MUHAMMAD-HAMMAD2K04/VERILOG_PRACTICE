# 🔀 1x8 Demultiplexer (Demux_1x8)

A **1x8 Demultiplexer** routes a single data input to one of eight outputs based on three select lines. Only one output is active at a time, corresponding to the binary value of the select inputs.

---

## 🧠 1. Module Description

### Inputs
- **a** : Data input  
- **s2, s1, s0** : Select lines  

### Outputs
- **y0 – y7** : Demultiplexed outputs  

Only one output follows input **a**; all others remain LOW.

---

## ⚙️ 2. Working Principle

The select lines determine which output is enabled:

| s2 | s1 | s0 | Active Output |
|----|----|----|---------------|
| 0  | 0  | 0  | y0 |
| 0  | 0  | 1  | y1 |
| 0  | 1  | 0  | y2 |
| 0  | 1  | 1  | y3 |
| 1  | 0  | 0  | y4 |
| 1  | 0  | 1  | y5 |
| 1  | 1  | 0  | y6 |
| 1  | 1  | 1  | y7 |

---

## 🧾 3. Verilog Implementation

The design uses **continuous assignments**, making it purely combinational and synthesizable.

Key logic example:
```
assign y3 = a & ~s2 & s1 & s0;
```

---

## ▶️ 4. Testbench Overview

The testbench:
- Applies **a = 1**
- Iterates through **all select combinations**
- Displays outputs using `$display`

### Example Output
```
a = 1, s2 = 1, s1 = 0, s0 = 1 → y5 = 1
```

---

## 🎯 5. Purpose of This Module

This module helps in understanding:
- Multi-output demultiplexer design
- Select-line based signal routing
- Combinational logic modeling
- Expansion of demux structures

---

## ✍️ Author Note

This module is part of a structured **Verilog practice repository** focused on mastering combinational building blocks used in digital systems.

---

## 🧷 Key Takeaways

- Only one output is active at a time
- Select lines decide routing
- Uses simple AND–NOT logic
- Essential in data routing and control logic
