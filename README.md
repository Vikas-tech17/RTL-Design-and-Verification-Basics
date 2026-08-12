# RTL Design and Verification Basics

A collection of RTL design and functional verification projects covering fundamental combinational and sequential digital circuits, implemented using Verilog and SystemVerilog testbenches.

## Project Overview

This repository contains RTL implementations of fundamental digital circuits developed using Verilog HDL and verified using SystemVerilog testbenches.

The project covers both combinational and sequential logic, including arithmetic circuits, multiplexers, encoders, decoders, flip-flops, counters, shift registers, and finite state machines.

Each design is accompanied by a testbench to apply stimulus and verify the functional behavior through simulation.

## Tools & Technologies

- **HDL:** Verilog, SystemVerilog
- **Design:** RTL Design, Combinational Logic, Sequential Logic, FSM
- **Verification:** SystemVerilog Testbenches, Functional Verification
- **Simulation:** QuestaSim / ModelSim

## Combinational RTL Designs

The following combinational circuits were designed and functionally verified:

1. **Half Adder**
2. **Full Adder**
3. **Adder/Subtractor**
4. **Ripple Carry Adder**
5. **Multiplexer**
6. **8-to-3 Encoder**
7. **BCD to 7-Segment Decoder**
8. **BCD Decoder**

## Sequential RTL Designs

### Flip-Flops

- D Flip-Flop
- JK Flip-Flop
- T Flip-Flop
- SR Flip-Flop

### Counters

- Synchronous Up Counter
- Synchronous Up/Down Counter
- Synchronous Load Counter
- Asynchronous Up Counter
- Asynchronous Down Counter
- Mod-12 Counter

### Shift Registers

- SISO Shift Register
- PIPO Shift Register

### Finite State Machines

- Sequence Detector
- Moore FSM

## Verification

SystemVerilog testbenches are used to verify the functional behavior of the RTL designs.

The verification process includes:

- Testbench development
- Clock and reset generation
- Input stimulus generation
- Functional checking
- Simulation-based verification
- Waveform analysis
- Debugging of RTL functionality

## Project Structure

```text
RTL-Design-and-Verification-Basics/
│
├── Combinational/
│   ├── 01_Half_Adder/
│   ├── 02_Full_Adder/
│   ├── 03_Adder_Subtractor/
│   ├── 04_Ripple_Carry_Adder/
│   ├── 05_MUX/
│   ├── 06_8_to_3_Encoder/
│   ├── 07_BCD_to_7Segment/
│   └── 08_BCD_Decoder/
│
├── Sequential/
│   ├── 01_Flip-Flops/
│   ├── 02_Counters/
│   ├── 03_Shift_Registers/
│   └── 04_FSM/
│
├── README.md
└── .gitignore
