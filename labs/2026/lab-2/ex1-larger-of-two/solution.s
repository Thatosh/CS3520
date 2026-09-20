.data

a: .word 20
b: .word 15

.text
.globl main

main:
    la t0, a
    lw t0, 0(t0)

    la t1, b
    lw t1, 0(t1)

    bge t1, t0, print_b

print_a:
    mv a0, t0
    li a7, 1
    ecall
    j done

print_b:
    mv a0, t1
    li a7, 1
    ecall

done:
    li a7, 10
    ecall