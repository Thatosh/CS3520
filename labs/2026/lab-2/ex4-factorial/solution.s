# Lab 2 Exercise 4 - factorial as a procedure
# main: s0 = result kept safe while printing
# factorial: a0 = n in, result out; s1 = result so far; t1 = i

        .data
n:      .word   5
msg:    .asciz  "Factorial: "

        .text
main:
        lw      a0, n
        jal     ra, factorial
        mv      s0, a0

        la      a0, msg
        li      a7, 4
        ecall

        mv      a0, s0
        li      a7, 1
        ecall

        li      a7, 10
        ecall

factorial:
        addi    sp, sp, -4
        sw      s1, 0(sp)       # s1 is callee-saved, so keep the caller's value

        li      s1, 1
        li      t1, 1

loop:
        bgt     t1, a0, done    # exit when i > n
        mul     s1, s1, t1
        addi    t1, t1, 1
        j       loop

done:
        mv      a0, s1
        lw      s1, 0(sp)
        addi    sp, sp, 4
        jalr    x0, ra, 0
