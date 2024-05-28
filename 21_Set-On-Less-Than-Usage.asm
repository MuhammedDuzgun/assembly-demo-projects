.data
	messageTrue:	.asciiz		"number_1 is less than number_2"
	messageFalse:	.asciiz		"number_1 is not less than number_2"
.text
	main:
	
	addi	$t0,	$zero,	21
	addi	$t1,	$zero,	20
	
	#set s0 if t0 < t1
	slt	$s0,	$t0,	$t1
	
	
	addi	$t3,	$zero,	1
	beq	$s0,	$t3	trueStatement
		
	#finish main program
	li	$v0,	10
	syscall
	
	trueStatement:
	li	$v0,	4
	la	$a0,	messageTrue
	syscall
	