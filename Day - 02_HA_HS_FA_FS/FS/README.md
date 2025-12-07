Full Subtractor using Verilog HDL ➖⚡

This module implements a 1-bit Full Subtractor that subtracts three input bits (A − B − Bin) and produces:

Difference (D)

Borrow Out (Bout)

The design uses two Half Subtractors and an OR gate for borrow logic.

📘 1. Module Explanation

A Full Subtractor is built using:

Half Subtractor 1 → Subtract B from A

Half Subtractor 2 → Subtract Bin from the intermediate difference

OR gate → Combines borrow outputs

This structural approach shows clean modular Verilog design using hierarchy.

📊 2. Truth Table
| A | B | Bin | D | Bout |
| - | - | --- | - | ---- |
| 0 | 0 | 0   | 0 | 0    |
| 0 | 0 | 1   | 1 | 1    |
| 0 | 1 | 0   | 1 | 1    |
| 0 | 1 | 1   | 0 | 1    |
| 1 | 0 | 0   | 1 | 0    |
| 1 | 0 | 1   | 0 | 0    |
| 1 | 1 | 0   | 0 | 0    |
| 1 | 1 | 1   | 1 | 1    |

🖥️ 3. Circuit Diagram

(Add your circuit diagram image here)

![FS_Diagram.JPG](<Ckt Diagram.png>)

📷 4. Simulation Snapshot

(Add your waveform image here)

![alt text](Full_Sub_Output.PNG)

🧩 5. Code Explanation
✔️ Full Subtractor Code

The Full Subtractor is created using two Half Subtractors:

Half_Sub 1 → Computes:

Intermediate difference → d1

Borrow → b[0]

Half_Sub 2 → Subtracts Bin

OR Gate combines borrows → Bout

module Full_Sub(output D, Bout, input A, B, Bin);

wire d1;
wire [1:0] b;

Half_Sub n1(d1, b[0], A, B);
Half_Sub n2(D, b[1], d1, Bin);
or n3(Bout, b[0], b[1]);

endmodule

✔️ Half Subtractor Code
module Half_Sub(output D, B_or, input A, B);

wire A_not;

xor n1(D, A, B);
not n2(A_not, A);
and n3(B_or, A_not, B);

endmodule

✔️ Testbench

All 8 combinations of (A, B, Bin) are tested.

module Full_Sub_tb;
reg A, B, Bin;
wire D, Bout;

Full_Sub dut(D, Bout, A, B, Bin);

initial
begin
A=0; B=0; Bin=0; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=0; B=0; Bin=1; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=0; B=1; Bin=0; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=0; B=1; Bin=1; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=1; B=0; Bin=0; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=1; B=0; Bin=1; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=1; B=1; Bin=0; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
A=1; B=1; Bin=1; #10; $display("A=%b B=%b Bin=%b → D=%b Bout=%b",A,B,Bin,D,Bout);
end
endmodule

🎯 Conclusion

This Full Subtractor demonstrates:

✔️ Structural Verilog design
✔️ Reusability through Half Subtractors
✔️ Correct borrow logic implementation
✔️ Proper waveform and truth table validation