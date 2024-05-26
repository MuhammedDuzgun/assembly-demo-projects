.data
	
	prompt:		.asciiz		"enter your age : "
	message:	.asciiz		"\nyour age is : "
	
.text
	main:
	
	#print prompt
	li	$v0,	4
	la	$a0,	prompt
	syscall
	
	#Get user's age
	li	$v0,	5
	syscall
	move	$t0,	$v0
	
	
	#print message
	li	$v0,	4
	la	$a0,	message
	syscall
	
	#print age
	li	$v0,	1
	add	$a0, 	$zero,	$t0
	syscall
	
	#finish the main program
	li	$v0,	10
	syscall