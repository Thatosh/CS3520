# Exercise 5 - GCD with Euclid's Algorithm

## What the program does
The program loads two integers from memory, calls the gcd procedure, and prints the greatest common divisor. With 48 and 18 it prints GCD: 6.

## Register roles
main:
s0 = result, kept safe while printing
a0 = first number going in, then the value or address to print
a1 = second number going in
a7 = selects the ecall operation

gcd:
a0 = a, and the result coming out
a1 = b
t0 = temp, holds a % b
ra = return address, set by jal

## Main idea
The loop runs while b is not 0, so the assembly exits with beq a1, x0, done when b is 0.
Each pass computes temp = a % b with rem, then sets a = b and b = temp.
When b reaches 0, a holds the GCD and is already in a0, so the procedure just returns with jalr x0, ra, 0.
It uses only a and t registers, so it needs no stack space, and it calls nothing, so it does not save ra.

## Harder part
Moving the values in the right order. a1 must be copied into a0 before t0 is copied into a1, otherwise the old value of a is lost.
