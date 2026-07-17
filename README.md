# Vending Machine Controller using Verilog HDL

## Overview

This project implements a **Vending Machine Controller** using **Verilog HDL** based on a **Finite State Machine (FSM)**. The vending machine accepts **₹5** and **₹10** coins and dispenses a product when the total inserted amount reaches **₹15**.

The design was developed using Verilog HDL and functionally verified through behavioral simulation in **Xilinx Vivado**.

---

## Features

* FSM-based vending machine controller
* Accepts ₹5 and ₹10 coins
* Dispenses product when the total amount reaches ₹15
* Automatic reset after product dispensing
* Behavioral simulation and functional verification
* Modular RTL design

---

## Functional Description

The vending machine operates according to the following logic:

| Current Amount | Coin Inserted | Next State       |
| -------------- | ------------- | ---------------- |
| ₹0             | ₹5            | ₹5               |
| ₹0             | ₹10           | ₹10              |
| ₹5             | ₹5            | ₹10              |
| ₹5             | ₹10           | Dispense Product |
| ₹10            | ₹5            | Dispense Product |
| ₹10            | ₹10           | Dispense Product |

After dispensing the product, the machine automatically returns to the initial state (₹0).

---

## Inputs

| Signal | Description                |
| ------ | -------------------------- |
| clk    | System clock               |
| reset  | Resets the vending machine |
| coin5  | Detects ₹5 coin insertion  |
| coin10 | Detects ₹10 coin insertion |

---

## Output

| Signal   | Description                                |
| -------- | ------------------------------------------ |
| dispense | Becomes HIGH when the product is dispensed |

---

## Project Structure

```text
Vending-Machine-Controller/
│
├── vending_machine.v      # Main Verilog design
├── vending_tb.v           # Testbench
├── waveform.png           # Simulation waveform
├── state_diagram.png      # FSM state diagram (Optional)
└── README.md
```

---

## Tools Used

* Verilog HDL
* Xilinx Vivado
* RTL Design
* Behavioral Simulation

---

## Simulation

The design was verified using a Verilog testbench in Xilinx Vivado.

### Example Test Case

Input Sequence:

* Insert ₹5
* Insert ₹10

Output:

* Product Dispensed

The simulation waveform confirms the correct FSM state transitions and successful product dispensing.

---

## Learning Outcomes

* Finite State Machine (FSM) Design
* Verilog HDL Programming
* Sequential Circuit Design
* RTL Design Methodology
* Testbench Development
* Functional Verification
* Waveform Analysis

---

## Applications

* Automated Vending Machines
* Smart Retail Systems
* Ticket Dispensing Machines
* Coin-Operated Devices
* Embedded Control Systems

---

## Future Enhancements

* Support ₹20 coin input
* Return change automatically
* Multiple product selection
* LCD/7-Segment display interface
* FPGA implementation
* Inventory management

---


