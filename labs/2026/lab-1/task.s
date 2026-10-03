.data
a: .word 7
b: .word 5
c: .word 20

.text
main:
    la   t0, a
    lw   t1, 0(t0)
    la   t0, b
    lw   t2, 0(t0)
    la   t0, c
    lw   t3, 0(t0)

    add  t4, t1, t2
    slli t4, t4, 3
    sub  t4, t4, t3

    mv   a0, t4
    li   a7, 1
    ecall

    li   a7, 10
    ecall