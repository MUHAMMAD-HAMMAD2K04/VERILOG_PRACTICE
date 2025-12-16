## 🔁 T Latch (Enable Controlled)

The **T (Toggle) Latch** is a **level-sensitive sequential digital circuit** that stores one bit of data. Unlike flip-flops, a latch responds **as long as the enable (En) signal is active**, not on a clock edge.

The T latch updates its output based on the **T (Toggle) input** when **Enable = 1**.

It produces:

* **Q** → Stored output  
* **Q̅ (Q_bar)** → Complement of Q  

T latches are commonly used in **simple storage elements, counters, and control logic**.

---

## 🧠 1. Module Explanation

The T Latch has two inputs:

* **T (Toggle)** → Controls the output behavior  
* **En (Enable)** → Enables latch operation  

Outputs:

* **Q** → Stored state  
* **Q_bar** → Inverted stored state  

### Behavior (Level-Sensitive):

* En = 0 → Q holds previous value  
* En = 1, T = 0 → Q is set to 1  
* En = 1, T = 1 → Q is reset to 0  

---

## 📊 2. Truth Table

| En | T | Q(next) | Description |
|----|---|---------|-------------|
| 0  | X | Q(prev) | Hold state  |
| 1  | 0 | 1       | Set output  |
| 1  | 1 | 0       | Reset output|

---

## 🔌 3. Circuit Diagram

📷 *Insert T Latch circuit diagram here*

![Suggested file name: `T_Latch_Circuit_Diagram.png`](Ckt_Diagram.jpg)

---

## 🖥️ 4. Simulation Snapshot

📷 *Insert waveform or console output here*

![Suggested file name: `T_Latch_Output.png`](T_Latch_Output.PNG)

---

## 🧾 5. Verilog Code Explanation

### Latch Logic Block

```verilog
always @(En, T)
begin
  if (!En)
    Q = Q;          // Hold state
  else if (T)
    Q = 1'b0;       // Reset
  else
    Q = 1'b1;       // Set
end
```

### Complement Output

```verilog
assign Q_bar = ~Q;
```

### Key Notes

✔ Level-sensitive latch  
✔ Enable-controlled storage  
✔ Simple behavior for learning latches  
✔ Stores 1-bit data  

---

## ▶️ 6. Testbench Overview

The testbench applies various combinations of **Enable (En)** and **Toggle (T)** to verify latch behavior:

* Hold condition (En = 0)  
* Set operation (En = 1, T = 0)  
* Reset operation (En = 1, T = 1)  
* Enable transitions  

### Example Output Format

```
En = 1, T = 0, Q = 1, Q_bar = 0
```

---

## 🎯 7. Purpose of This Module

This module helps in understanding:

* Difference between latches and flip-flops  
* Level-sensitive storage  
* Enable-controlled sequential logic  
* Foundation for T flip-flops and counters  

---

## 📌 Key Notes

* Level-sensitive T Latch  
* Enable-based operation  
* Immediate output response  
* Educational and beginner-friendly  

---

## 🚀 Author Note

This module is part of a structured Verilog practice repository focused on building strong fundamentals in **sequential logic and latch-based storage elements**.
