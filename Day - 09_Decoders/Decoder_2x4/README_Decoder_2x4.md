## 🔢 2×4 Decoder

The **2×4 Decoder** is a **combinational digital circuit** that takes a 2-bit binary input and activates exactly **one of four outputs**. Each output corresponds to a unique input combination.

It is widely used in **address decoding, memory selection, control signal generation, and digital systems**.

---

## 🧠 1. Module Explanation

The 2×4 Decoder has:

### Inputs
* **a[1:0]** → 2-bit binary input

### Outputs
* **z[3:0]** → One-hot encoded output

At any time, **only one output line is HIGH (1)** based on the input value.

---

## ⚙️ 2. Functional Behavior

For each binary value applied to input **a**, the decoder asserts exactly one output bit in **z**.

Example:
* a = `2'b01` → z = `0010`
* a = `2'b11` → z = `1000`

---

## 📊 3. Truth Table

| a (Binary) | z (Output) |
|-----------|------------|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

---

## 🔌 4. Circuit Diagram

📷 *Insert 2×4 Decoder circuit diagram here*

![Suggested file name: `Decoder_2x4_Circuit_Diagram.png`](Decoder_2x4_Circuit_Diagram.png)

---

## 🖥️ 5. Simulation Snapshot

📷 *Insert waveform or console output here*

![Suggested file name: `Decoder_2x4_Output.png`](Decoder_2x4_Output.PNG)

---

## 🧾 6. Verilog Code Explanation

### Combinational Logic Block

```verilog
always @(a)
begin
  case (a)
    2'b00 : z = 4'b0001;
    2'b01 : z = 4'b0010;
    2'b10 : z = 4'b0100;
    2'b11 : z = 4'b1000;
  endcase
end
```

### Key Notes

✔ Purely combinational logic  
✔ One-hot output encoding  
✔ No clock required  
✔ Immediate response to input changes  

---

## ▶️ 7. Testbench Overview

The testbench applies all possible **2-bit input combinations** with delays and prints the output using `$display`.

Test cases include:

* a = 00  
* a = 01  
* a = 10  
* a = 11  

### Example Output Format

```
z = 0100, a = 10
```

---

## 🎯 8. Purpose of This Module

This 2×4 Decoder module helps in understanding:

* Combinational logic design  
* Binary-to-one-hot decoding  
* Use of `case` statements in Verilog  
* Foundation for larger decoders (3×8, 4×16)  

---

## 📌 Key Takeaways

* 2-bit input selects 1 of 4 outputs  
* One-hot encoded output  
* Basic building block for address decoding  
* Simple and efficient design  

---

## 🚀 Author Note

This module is implemented as part of a structured **Verilog practice repository** focused on building strong fundamentals in **combinational logic and digital design**.
