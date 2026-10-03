.data
hello:  .asciz "Hello world!\n"
second: .asciz "I am learning RISC-V.\n"

.text
main:
  la a0, hello
  addi a7, zero, 4      # print string
  ecall

  la a0, second
  addi a7, zero, 4      # print string
  ecall

  addi t0, zero, 6      # t0 = 6
  addi t1, zero, 7      # t1 = 7
  add  t2, t0, t1       # t2 = 13
  mv   a0, t2
  addi a7, zero, 1      # print integer
  ecall

  addi a7, zero, 10     # exit
  ecall