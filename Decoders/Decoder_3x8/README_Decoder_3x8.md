## 🔢 3×8 Decoder

The **3×8 Decoder** is a **combinational digital circuit** that takes a 3-bit binary input and activates exactly **one of eight outputs**. Each output corresponds to a unique binary combination of the input.

It is commonly used in **address decoding, memory selection, instruction decoding, and control logic**.

---

## 🧠 1. Module Explanation

The 3×8 Decoder has:

### Inputs
* **a[2:0]** → 3-bit binary input

### Outputs
* **z[7:0]** → One-hot encoded output

Only **one output bit is HIGH (1)** at a time, based on the input value.

---

## ⚙️ 2. Functional Behavior

For every binary value of input **a**, exactly one corresponding output bit in **z** becomes `1`, while all others remain `0`.

Example:
* a = `3'b010` → z = `00000100`
* a = `3'b111` → z = `10000000`

---

## 📊 3. Truth Table

| a (Binary) | z (Output) |
|-----------|------------|
| 000 | 00000001 |
| 001 | 00000010 |
| 010 | 00000100 |
| 011 | 00001000 |
| 100 | 00010000 |
| 101 | 00100000 |
| 110 | 01000000 |
| 111 | 10000000 |

---

## 🔌 4. Circuit Diagram

📷 *Insert 3×8 Decoder circuit diagram here*

![Suggested file name: `Decoder_3x8_Circuit_Diagram.png`](Decoder_3x8_Circuit_Diagram.png)

---

## 🖥️ 5. Simulation Snapshot

📷 *Insert waveform or console output here*

![Suggested file name: `Decoder_3x8_Output.png`](Decoder_3x8_Output.PNG)

---

## 🧾 6. Verilog Code Explanation

### Combinational Logic Block

```verilog
always @(a)
begin
  case (a)
    3'b000 : z = 8'b00000001;
    3'b001 : z = 8'b00000010;
    3'b010 : z = 8'b00000100;
    3'b011 : z = 8'b00001000;
    3'b100 : z = 8'b00010000;
    3'b101 : z = 8'b00100000;
    3'b110 : z = 8'b01000000;
    3'b111 : z = 8'b10000000;
  endcase
end
```

### Key Notes

✔ Purely combinational design  
✔ One-hot output encoding  
✔ No clock required  
✔ Immediate response to input changes  

---

## ▶️ 7. Testbench Overview

The testbench applies all possible **3-bit input combinations** to verify decoder functionality.

Each input value is applied with a delay, and the output is printed using `$display`.

### Example Output Format

```
z = 00000100, a = 010
```

---

## 🎯 8. Purpose of This Module

This 3×8 Decoder module helps in understanding:

* Combinational logic design  
* Binary-to-one-hot decoding  
* Use of `case` statements in Verilog  
* Address and control signal decoding  

---

## 📌 Key Takeaways

* 3-bit input selects 1 of 8 outputs  
* One-hot encoded output  
* Fundamental building block in digital systems  
* Widely used in memory and processor designs  

---

## 🚀 Author Note

This module is implemented as part of a structured **Verilog practice repository** aimed at strengthening fundamentals of **combinational logic design** and HDL coding best practices.
