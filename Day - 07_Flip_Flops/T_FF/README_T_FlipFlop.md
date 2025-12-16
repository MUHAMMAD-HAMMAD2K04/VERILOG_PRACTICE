## 🔁 T Flip-Flop (Positive Edge Triggered)

The **T (Toggle) Flip-Flop** is an **edge-triggered sequential digital circuit** that stores one bit of data. Unlike latches, a flip-flop updates its output **only on the rising edge of the clock (Clk)**.

The T flip-flop changes its output based on the **T (Toggle) input** at every positive clock edge.

It produces:

* **Q** → Stored output  
* **Q̅ (Q_bar)** → Complement of Q  

T flip-flops are widely used in **counters, frequency dividers, and control logic**.

---

## 🧠 1. Module Explanation

The T Flip-Flop has two inputs:

* **T (Toggle)** → Controls state change  
* **Clk (Clock)** → Triggers state update on rising edge  

Outputs:

* **Q** → Stored state  
* **Q_bar** → Inverted stored state  

### Behavior (on `posedge Clk`):

* T = 0 → Q is set to 1  
* T = 1 → Q is reset to 0  

---

## 📊 2. Truth Table (Evaluated on Rising Edge of Clock)

| T | Q(prev) | Q(next) |
|---|---------|---------|
| 0 | X       | 1       |
| 1 | X       | 0       |

---

## 🔌 3. Circuit Diagram

📷 ![*Insert T Flip-Flop circuit diagram here*](T-FF_Circuit_Diagram.png)

Suggested file name: `T_FF_Circuit_Diagram.png`

---

## 🖥️ 4. Simulation Snapshot

📷 *Insert waveform or console output here*

![Suggested file name: `T_FF_Output.png`](T_FF_Output.PNG)

---

## 🧾 5. Verilog Code Explanation

### Sequential Logic Block

```verilog
always @(posedge Clk)
begin
  if (!Clk)
    Q <= Q;        // Hold (redundant in posedge FF)
  else if (T)
    Q <= 1'b0;     // Reset
  else
    Q <= 1'b1;     // Set
end
```

### Complement Output

```verilog
assign Q_bar = ~Q;
```

### Key Notes

✔ Positive edge–triggered  
✔ Clock-controlled storage  
✔ Stores 1-bit data  
✔ Demonstrates basic flip-flop behavior  

---

## ▶️ 6. Testbench Overview

The testbench generates a **free-running clock** and applies different values of **T** to observe flip-flop behavior on each rising edge.

Test cases include:

* T = 0 → Set operation  
* T = 1 → Reset operation  
* Continuous clock toggling  

### Example Output Format

```
Clk = 1, T = 0, Q = 1, Q_bar = 0
```

---

## 🎯 7. Purpose of This Module

This T Flip-Flop module helps in understanding:

* Edge-triggered sequential logic  
* Difference between latches and flip-flops  
* Clock-driven storage elements  
* Foundation for counters and frequency dividers  

---

## 📌 Key Notes

* Positive edge–triggered T Flip-Flop  
* Updates only on rising clock edge  
* Stores 1-bit data  
* Useful in counter design  

---

## 🚀 Author Note

This module is implemented as part of a structured Verilog practice repository aimed at strengthening concepts in **synchronous sequential logic and flip-flop design**.
