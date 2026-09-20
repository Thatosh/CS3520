# Exercise 1 - Larger of Two Integers

## What the program does
The program loads two integers from memory and prints the larger integer.

## Register roles
t0 = value of a
t1 = value of b
a0 = integer to print
a7 = selects the ecall operation

## Main idea
The program uses bge t1, t0, print_b.
If b >= a, it branches to print_b.
Otherwise, it continues to print a.

## Harder part
Understanding that the branch checks the opposite condition of the C++ if statement. This allows the program to choose between printing a and printing b.