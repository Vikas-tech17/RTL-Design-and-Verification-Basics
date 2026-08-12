# RTL Design and Verification Basics

A collection of RTL design and functional verification projects covering fundamental combinational and sequential digital circuits, implemented using Verilog HDL and SystemVerilog testbenches.

## Project Overview

This repository contains fundamental RTL design and verification exercises developed to strengthen digital design concepts and gain practical experience in Verilog HDL and SystemVerilog-based verification.

The project covers combinational logic, sequential logic, arithmetic circuits, data selection, encoding and decoding, flip-flops, counters, shift registers, and finite state machines.

Each RTL design is accompanied by a testbench for functional verification through simulation and waveform analysis.

## Objectives

- Develop and implement fundamental digital circuits using Verilog HDL.
- Understand and apply combinational and sequential RTL design concepts.
- Develop SystemVerilog testbenches for functional verification.
- Generate test stimulus and verify RTL functionality through simulation.
- Analyze waveforms and debug design behavior.
- Gain practical experience in RTL design and verification.

## Tools & Technologies

- **HDL:** Verilog, SystemVerilog
- **Simulation:** ModelSim / QuestaSim
- **Design:** RTL Design, Digital Logic Design, Combinational Logic, Sequential Logic, FSM
- **Verification:** SystemVerilog Testbenches, Functional Verification

## Combinational RTL Designs

- Half Adder
- Full Adder
- Adder/Subtractor
- Ripple Carry Adder
- Multiplexer
- 8-to-3 Encoder
- BCD to 7-Segment Decoder
- BCD Decoder

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

The RTL designs are verified using SystemVerilog-based testbenches.

The verification process includes:

- Testbench development
- DUT instantiation
- Clock and reset generation
- Stimulus generation
- Functional verification
- Simulation
- Waveform analysis
- RTL debugging

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
