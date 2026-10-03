# Lab 2 Exercise 5 - GCD with Euclid's algorithm as a procedure
# main: s0 = result kept safe while printing
# gcd: a0 = a in and result out, a1 = b, t0 = temp

        .data
x:      .word   48
y:      .word   18
msg:    .asciz  "GCD: "

        .text
main:
        lw      a0, x
        lw      a1, y
        jal     ra, gcd
        mv      s0, a0

        la      a0, msg
        li      a7, 4
        ecall

        mv      a0, s0
        li      a7, 1
        ecall

        li      a7, 10
        ecall

gcd:
loop:
        beq     a1, x0, done    # exit when b == 0
        rem     t0, a0, a1      # temp = a % b
        mv      a0, a1          # a = b
        mv      a1, t0          # b = temp
        j       loop

done:
        jalr    x0, ra, 0       # result is already in a0
