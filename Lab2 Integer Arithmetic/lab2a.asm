.data 0x10000100
	msg:  .asciiz "The result of y = A*B + C *D is: "

.text
	li $s1, 5  # assigning A to 5
	li $s2, 6  # assigning B to 6
	li $s3, 7  # assigning C to 7
	li $s4, 8  # assigning D to 8

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