## 🔁 SR Flip-Flop (Clocked)

The **SR Flip-Flop** is a clocked sequential digital circuit that stores one bit of data. It is an edge-triggered version of the SR latch, meaning the output changes **only on the rising edge of the clock**. This design removes the level-sensitive behavior of latches and is a fundamental memory element in digital systems.

It produces:

* **Q** → Stored output
* **Q̅ (Q_bar)** → Complement of Q

This module is widely used in registers, counters, and control logic.

---

## 🧠 1. Module Explanation

The SR Flip-Flop has three inputs:

* **S (Set)** → Sets Q to 1
* **R (Reset)** → Resets Q to 0
* **Clk (Clock)** → Triggers state change on positive edge

Outputs:

* **Q** → Stored state
* **Q_bar** → Inverted stored state

### Behavior (on `posedge Clk`):

* S = 1, R = 0 → Q is set to 1
* S = 0, R = 1 → Q is reset to 0
* S = 0, R = 0 → Q holds previous value
* S = 1, R = 1 → Invalid / Undefined state

---

## 📊 2. Truth Table (Evaluated on Rising Edge of Clock)

| S | R | Q(next) | Description       |
| - | - | ------- | ----------------- |
| 0 | 0 | Q(prev) | Hold state        |
| 0 | 1 | 0       | Reset             |
| 1 | 0 | 1       | Set               |
| 1 | 1 | X       | Invalid condition |

---

## 🔌 3. Circuit Diagram

📷 *Insert SR Flip-Flop circuit diagram here*

![**Suggested file name:** `SR_FF_Circuit_Diagram.png`](Ckt_Diagram.jpg)

---

## 🖥️ 4. Simulation Snapshot

📷 *Insert waveform or console output here*

![**Suggested file name:** `SR_FF_Waveform.png`](SR_FF_Output.PNG)

---

## 🧾 5. Verilog Code Explanation

### Sequential Logic Block

```verilog
always @(posedge Clk)
begin
  if (S & R)
    Q <= 1'bx;      // Invalid state
  else if (S)
    Q <= 1'b1;      // Set
  else if (R)
    Q <= 1'b0;      // Reset
  else
    Q <= Q;         // Hold previous value
end
```

### Complement Output

```verilog
assign Q_bar = ~Q;
```

### Key Notes

✔ Edge-triggered (posedge clock)
✔ Stores 1-bit data
✔ Invalid condition clearly handled
✔ Demonstrates basic sequential logic design

---

## ▶️ 6. Testbench Overview

The testbench applies various combinations of **S** and **R** synchronized with the clock:

* Hold condition (S=0, R=0)
* Set operation (S=1, R=0)
* Reset operation (S=0, R=1)
* Invalid case (S=1, R=1)

Clock toggles every 10 time units to observe edge-triggered behavior.

### Example Output Format

```
Clk = 1, R = 0, S = 1, Q = 1, Q_bar = 0
```

---

## 🎯 7. Purpose of This Module

This SR Flip-Flop module helps in understanding:

* Difference between latches and flip-flops
* Edge-triggered sequential logic
* Clock-controlled storage elements
* Handling invalid states in SR-based designs

It serves as a foundation for understanding **D Flip-Flops**, **JK Flip-Flops**, and more complex storage elements.

---

📌 Key Notes

* Positive edge–triggered SR Flip-Flop
* Stores 1-bit; updates on rising clock edge
* S = R = 1 is invalid
* Basis for D, JK, and T Flip-Flops
* Testbench covers all cases

---

🚀 Author Note

A simple module for learning SR Flip-Flop behavior, clocked storage, and synchronous sequential logic in Verilog.
