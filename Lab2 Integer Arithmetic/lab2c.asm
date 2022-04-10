.data 0x10000100
	A:  .asciiz "\nEnter the value of A : "
	B:  .asciiz "\nEnter the value of B : "
	C:  .asciiz "\nEnter the value of C : "
	D:  .asciiz "\nEnter the value of D : "
	msg:.asciiz "\nThe result of A*B + C *D is: "

.text
        la $a0, A
        li $v0, 4
        syscall
        li $v0, 5
        syscall
        add $s1, $v0, $zero

        la $a0,B
        li $v0,4
        syscall
        li $v0,5
        syscall
        add $s2, $v0, $zero

        la $a0,C
        li $v0,4
        syscall
        li $v0,5
        syscall
        move $s3,$v0

        la $a0,D
        li $v0,4
        syscall
        li $v0,5
        syscall
        move $s4,$v0


	mul $t1, $s1, $s2  # t1=A*B
	mul $t2, $s3, $s4  # t2=C*D

	add $s0, $t1, $t2  # y=t1+t2

	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 1
	add $a0, $zero, $s0
	syscall

	li $v0,10
	syscall