.data
	promptMessage:		.asciiz	"Enter the number : "
	resultMessage:		.asciiz	"\nThe factoriol of number is : "
	theNumber:		.word	0
	result:			.word	0
.text

	.globl main
	main:
	
	#print promptMessage
	li	$v0,	4
	la	$a0,	promptMessage
	syscall
	
	#get input number 
	li	$v0,	5
	syscall
	sw	$v0,	theNumber
	
	#call the factorial function
	lw	$a0,	theNumber
	jal	calculateFactorial
	sw	$v0,	result	
	
	#print result message
	li	$v0,	4
	la	$a0,	resultMessage
	syscall
	li	$v0,	1
	lw	$a0,	result
	syscall
	
	
	#finish the main program
	li	$v0,	10
	syscall
	
	# calculateFactorial function
	.globl	calculateFactorial
	calculateFactorial:
	addi	$sp,	$sp,	-8
	sw	$ra,	0($sp)
	sw	$s0,	4($sp)
	
	#Base
	li	$v0,	1
	beq	$a0,	0,	factorialDone
	
	move	$s0,	$a0
	sub	$a0,	$a0,	1
	jal	calculateFactorial
	
	mul	$v0,	$s0,	$v0	
	
	factorialDone:
	lw	$ra,	0($sp)
	lw	$s0,	4($sp)
	addi	$sp,	$sp,	8
	jr	$ra
	
	
	
	
	
	
	
	
	
	
	
	
	