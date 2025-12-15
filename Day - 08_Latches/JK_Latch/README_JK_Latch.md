## 🔁 JK Latch (Gated)

The **JK Latch** is a level-sensitive sequential digital circuit that stores **one bit of data**. It is an enhanced version of the SR latch that eliminates the invalid state by introducing a **toggle operation** when both inputs are high.

The latch updates its output **only when the Enable (En) signal is active**.

It produces:

* **Q** → Stored output  
* **Q̅ (Q_bar)** → Complement of Q  

---

## 🧠 1. Module Explanation

The JK Latch uses three inputs:

* **J** → Set input  
* **K** → Reset input  
* **En (Enable)** → Controls when the latch is active  

Outputs:

* **Q** → Stored state  
* **Q_bar** → Inverted stored state  

### Behavior (when `En = 1`):

* J = 0, K = 0 → Q holds previous value  
* J = 1, K = 0 → Q is set to `1`  
* J = 0, K = 1 → Q is reset to `0`  
* J = 1, K = 1 → Q toggles (Q ← ~Q)  

### When `En = 0`:
* The latch **holds its previous state**, regardless of J and K  

---

## 📊 2. Truth Table (Level-Sensitive)

| En | J | K | Q(next) | Description |
|----|---|---|--------|-------------|
| 0 | X | X | Q(prev) | Hold (Disabled) |
| 1 | 0 | 0 | Q(prev) | Hold |
| 1 | 0 | 1 | 0 | Reset |
| 1 | 1 | 0 | 1 | Set |
| 1 | 1 | 1 | ~Q | Toggle |

---

## 🔌 3. Circuit Diagram

📷 *Insert JK Latch circuit diagram here*

![**Suggested file name:** `JK_Latch_Circuit_Diagram.png`](JK_Latch_Output.PNG)

---

## 🖥️ 4. Simulation Snapshot

📷 *Insert waveform or console output here*

![**Suggested file name:** `JK_Latch_Waveform.png`](Ckt_Diagram.PNG)

---

## 🧾 5. Verilog Code Explanation

### Latch Behavior Block

```verilog
always @(En, J, K)
begin
  if (!En)
    Q = Q;          // Hold state
  else if (J & K)
    Q = ~Q;         // Toggle
  else if (J)
    Q = 1'b1;       // Set
  else if (K)
    Q = 1'b0;       // Reset
  else
    Q = Q;          // Hold
end
```

### Complement Output

```verilog
assign Q_bar = ~Q;
```

---

## 🗝️ Key Notes

✔ Level-sensitive latch  
✔ Enable-controlled operation  
✔ No invalid input condition  
✔ Toggle behavior when J = K = 1  
✔ Stores 1-bit of data  
✔ Fundamental building block for JK Flip-Flops  

---

## ▶️ 6. Testbench Overview

The testbench verifies all latch conditions:

* Disabled mode (En = 0)  
* Set operation  
* Reset operation  
* Hold condition  
* Toggle operation (J = 1, K = 1)  

### Example Output Format

```
En = 1, J = 1, K = 1, Q = 0, Q_bar = 1
```

---

## 🎯 7. Purpose of This Module

This JK Latch module helps in understanding:

* How **JK logic improves SR latch behavior**  
* Level-sensitive storage elements  
* Enable-controlled sequential logic  
* Toggle-based state transitions  
* Foundations of **JK Flip-Flops**  

---

## ✍️ Author Note

This module is part of a **structured Verilog practice repository** aimed at strengthening concepts in **sequential digital design**.

The focus is on:
- Clear behavioral modeling  
- Explicit enable control  
- Accurate latch behavior  
- Beginner-friendly HDL coding style  

This design is intended for **learning, simulation, and interview preparation**.

---

