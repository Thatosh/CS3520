# Lab 2 Exercise 3 - count the even elements in an array
# t0 = address of array, t1 = n, t2 = i, t3 = count, t5 = current element

        .data
arr:    .word   3, 8, 12, 7, 20, 5, 6
n:      .word   7
msg:    .asciz  "Even count: "

        .text
main:
        la      t0, arr
        lw      t1, n
        li      t2, 0
        li      t3, 0

loop:
        bge     t2, t1, done    # exit when i >= n
        slli    t4, t2, 2       # byte offset = i * 4
        add     t4, t0, t4
        lw      t5, 0(t4)
        andi    t5, t5, 1       # lowest bit is 1 for odd numbers
        bne     t5, x0, skip    # odd, so do not count it
        addi    t3, t3, 1
skip:
        addi    t2, t2, 1
        j       loop

done:
        la      a0, msg
        li      a7, 4
        ecall

        mv      a0, t3
        li      a7, 1
        ecall

        li      a7, 10
        ecall
