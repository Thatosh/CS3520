# Lab 2 - Step 2 Discussion Answers

## Why is the loop test inverted?
In C++ the loop test says when to keep going (i < n). In assembly a branch jumps away when its condition is true, and if it is not taken the program falls through into the loop body. So the branch has to be the exit: bge t1, a1, done jumps out when i >= n, which is the opposite of i < n. Otherwise the loop body would be skipped instead of repeated.

## What do the pseudo-instructions become?
| Pseudo-instruction | Real instruction(s) |
|---|---|
| li rd, imm | addi rd, x0, imm (a larger value needs lui + addi) |
| mv rd, rs | addi rd, rs, 0 |
| la rd, label | auipc rd, offset + addi rd, rd, offset |
| ble rs1, rs2, label | bge rs2, rs1, label (operands swapped) |

The assembler provides them so programs are easier to write and read, while the processor only has to support a small set of real instructions. The same idea shows in Exercise 2, where bgt t1, t0 became blt t0, t1 and j loop became jal x0, loop.

## Why does find_max save s1 but not ra?
s1 is a callee-saved register. find_max uses it for the running maximum, so it must save the caller's s1 on the stack and restore it before returning, otherwise the caller's value would be destroyed.
ra only changes when a procedure makes a call of its own, because jal overwrites it. find_max calls nothing, so ra still holds the return address when it reaches jalr x0, ra, 0, and saving it would be wasted work.
