# Lab 2 Exercise 2 - sum of the first N integers
# t0 = N, t1 = i, t2 = sum

        .data
n:      .word   5
msg:    .asciz  "Sum: "

        .text
main:
        lw      t0, n
        li      t1, 1
        li      t2, 0

loop:
        bgt     t1, t0, done    # exit when i > N
        add     t2, t2, t1
        addi    t1, t1, 1
        j       loop

done:
        la      a0, msg
        li      a7, 4
        ecall

        mv      a0, t2
        li      a7, 1
        ecall

        li      a7, 10
        ecall
