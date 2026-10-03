# Exercise 4 - Factorial as a Procedure

## What the program does
The program loads N from memory, calls the factorial procedure, and prints the result. With N = 5 it prints Factorial: 120.

## Register roles
main:
s0 = result, kept safe while printing
a0 = N going in, then the value or address to print
a7 = selects the ecall operation

factorial:
a0 = n going in, result coming out
s1 = running result
t1 = i, the current multiplier
ra = return address, set by jal

## Main idea
main calls the procedure with jal ra, factorial and the result comes back in a0.
The procedure uses s1, which is callee-saved, so it saves s1 on the stack at the start and restores it before returning.
It does not save ra because it calls nothing, so ra never changes.
It returns with jalr x0, ra, 0.

## Harder part
Remembering that the procedure must put the result in a0 before restoring s1 and returning, because a0 is where main looks for it.
