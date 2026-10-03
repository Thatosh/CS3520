# Lab 2 - Encoding Analysis

Both instructions come from Exercise 2 (sum to N). Ripes shows the real instructions, not the pseudo-instructions I wrote.

## Branch (B-type)
Source: `bgt t1, t0, done`
Ripes: `blt x5 x6 16 <done>` at address 0x10
Encoding: `0x0062c863`

| imm[12\|10:5] | rs2 | rs1 | funct3 | imm[4:1\|11] | opcode |
|---|---|---|---|---|---|
| 0000000 | 00110 (x6) | 00101 (x5) | 100 (blt) | 10000 | 1100011 |

The offset is 16, so the branch goes from 0x10 to 0x20, which is `done`.
bgt t1, t0 is a pseudo-instruction, so the assembler swaps the operands and uses blt t0, t1.

## Jump (J-type)
Source: `j loop`
Ripes: `jal x0 -12 <loop>` at address 0x1c
Encoding: `0xff5ff06f`

| imm[20] | imm[10:1] | imm[11] | imm[19:12] | rd | opcode |
|---|---|---|---|---|---|
| 1 | 1111111010 | 1 | 11111111 | 00000 (x0) | 1101111 |

The offset is -12, so the jump goes from 0x1c back to 0x10, which is `loop`.
j is a pseudo-instruction for jal x0, offset. Using x0 as rd throws the return address away.

## Why the immediate is in scattered pieces
The register fields and the sign bit stay in the same positions in every format, so the hardware can read them without waiting to know which format it is, and the scrambling only moves the few bits that differ between formats.
