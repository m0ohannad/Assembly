.data 0x10000100
	msg:  .asciiz "The result of y = A*B + C *D is: "
	A: .word 5
	B: .word 6
	C: .word 7
	D: .word 8

.text
	lw $s1, A  # assigning A to s1
	lw $s2, B  # assigning B to s2
	lw $s3, C  # assigning C to s3
	lw $s4, D  # assigning D to s4

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