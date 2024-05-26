.data
	prompt:		.asciiz		"Enter your name : "
	message:	.asciiz		"\nHello : "
	username:	.space		20

.text
	main:
	
	#print prompt
	li	$v0,	4
	la	$a0,	prompt
	syscall
	
	#Get username from user
	li	$v0,	8
	la	$a0,	username
	li	$a1,	20
	syscall
	
	#print message
	li	$v0,	4
	la	$a0,	message
	syscall
	
	#print username
	li	$v0,	4
	la	$a0,	username
	syscall
	
	#finish main program
	li	$v0,	10
	syscall