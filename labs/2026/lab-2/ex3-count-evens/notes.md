# Exercise 3 - Count the Even Elements in an Array

## What the program does
The program goes through an array of 7 integers stored in memory, counts how many are even, and prints the count. For this array it prints Even count: 4.

## Register roles
t0 = address of the array
t1 = n, the number of elements
t2 = i, the current index
t3 = count of even numbers
t4 = address of arr[i]
t5 = current element, then its lowest bit
a0 = value or address to print
a7 = selects the ecall operation

## Main idea
The program uses andi t5, t5, 1 to keep only the lowest bit of the element.
If the bit is 1 the number is odd, so bne t5, x0, skip jumps over the count.
If the bit is 0 the number is even, so count is increased by 1.

## Harder part
Working out the address of arr[i]. Each word is 4 bytes, so the index is shifted left by 2 (slli) and added to the base address before loading.
