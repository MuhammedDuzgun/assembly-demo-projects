.data
	message:	.asciiz		"number_1 is greater than number_2"
.text
	main:
	
	addi	$s0,	$zero,	10
	addi	$s1,	$zero,	1
	
	#pseudo branching code -> <bgt> : branch if greater than
	bgt	$s0,	$s1,	printMessage
	
	#finish main program
	li	$v0,	10
	syscall
	
	printMessage:
	li	$v0,	4
	la	$a0,	message
	syscall