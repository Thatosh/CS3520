# Lab 3 trace tables

## Step 3: add t2, t0, t1 (PC 0x8)
| Element | Port | Value |
|---|---|---|
| pc_reg | out | 0x00000008 |
| pc_4 | out | |
| instr_mem | data_out | 0x006283B3 |
| decode | r1_reg_idx / r2_reg_idx | |
| decode | wr_reg_idx | 7 |
| control | reg_do_write_ctrl | |
| control | alu_op2_ctrl | |
| registerFile | r1_out / r2_out | 12 / 5 |
| alu_op1_src | out | |
| alu_op2_src | out | |
| alu | res | |
| data_mem | wr_en | |
| reg_wr_src | select / out | |
| pc_src | select / out | |

## Step 4
| Instruction | Format | imm | op1 mux | op2 mux | alu.res | wb mux / pc mux |
|---|---|---|---|---|---|---|
| addi t0, zero, 12 | | | | | | |
| add t2, t0, t1 | | | | | | |
| lui t4, 0x2B | | | | | | |
| auipc t5, 0x0 | | | | | | |
| lw a1, 0(a0) | | | | | | |
| sw t2, 4(a0) | | | | | | |
| beq t0, t1, skip | | | | | | |
| bne t0, t1, target | | | | | | |
| jal ra, report | | | | | | |
| jalr zero, ra, 0 | | | | | | |