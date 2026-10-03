# Exercise 2 - Sum of the First N Integers

## What the program does
The program loads N from memory, adds the numbers 1 to N, and prints the total. With N = 5 it prints Sum: 15.

## Register roles
t0 = N
t1 = i, the number being added
t2 = sum, the running total
a0 = value or address to print
a7 = selects the ecall operation

## Main idea
The program uses bgt t1, t0, done.
If i > N, it branches to done and prints the result.
Otherwise it adds i to sum, increases i by 1, and jumps back to loop.

## Harder part
The C++ loop test is i <= N, so the assembly has to exit on the opposite condition, i > N. That is why it uses bgt instead of ble.
