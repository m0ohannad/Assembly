# Lab1a.asm
    .text
main:   addi $t1,$zero,97
        li $v0,10 # Code for syscall: exit
  		syscall