# SR Flip-Flop in Verilog

This project implements a clocked SR (Set-Reset) flip-flop using Verilog HDL.

## Inputs

- `S` - Set
- `R` - Reset
- `CLK` - Clock

## Outputs

- `Q` - Main output
- `Qbar` - Complementary output

## Truth Table

| S | R | Q(next) |
|---|---|---------|
| 0 | 0 | Hold    |
| 0 | 1 | 0       |
| 1 | 0 | 1       |
| 1 | 1 | Invalid |

## Simulation

The testbench demonstrates:

1. Hold condition
2. Set operation
3. Reset operation
4. Invalid condition

## Tools

- Verilog HDL
- VS Code
- Icarus Verilog
- GTKWave
