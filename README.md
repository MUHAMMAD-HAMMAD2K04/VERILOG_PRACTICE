# VERILOG_PRACTICE
Verilog is a hardware description language used to model and design digital systems. It allows engineers to describe the behavior and structure of electronic systems, such as integrated circuits and FPGA-based designs. Verilog is widely used in digital design, verification, and synthesis processes for creating hardware models, simulations, and testbenches. It's known for its ability to describe complex digital systems and its role in the design and verification of electronic circuits.

# Verilog Practice Lab — ModelSim Step-by-Step

Welcome! This repository is a step-by-step Verilog practice guide built for beginners and intermediate learners who want to learn by doing and simulate designs using **ModelSim**.

**Goals**
- Teach Verilog fundamentals with small, focused exercises.
- Show exact steps to run, simulate, and debug each design in ModelSim.
- Provide a daily practice plan so you can progress steadily.

---

## How to use this repo (beginner-friendly ModelSim workflow)
Each exercise folder contains:
- `design.v` – the Verilog source
- `tb.v` – testbench
- `README.md` – exercise goal, steps, expected waveforms
- `modelsim.do` or `run.sh` – quick simulation script (optional)

### Step-by-step: simulate an exercise in ModelSim (GUI)
1. Open ModelSim (or ModelSim-Altera / Questa as applicable).
2. Create a new project: `File -> New -> Project`. Choose the repository folder as project location.
3. Add files: `Project -> Add Existing File...` → add the `design.v` and `tb.v`.
4. Compile: Right-click the file or `Compile -> Compile All`.
   - Fix compilation errors reported in Transcript/Console.
5. Simulate: Right-click the testbench module in Project Navigator → `Simulate`.
6. Open wave window: `View -> Wave`.
7. Add signals: In the Objects window, select signals and click `Add -> To Wave`.
8. Run simulation: use `run <time>` in the Transcript (e.g., `run 200ns`) or press the Run buttons.
9. Analyze waveform: zoom, measure, and take screenshots if needed.
10. Iterate: change `design.v` → recompile → re-run. Use assertions in the testbench for automated checks.
