.data
	
	prompt:		.asciiz		"Enter the value of e : "
	
.text
	main:
	
	#print the prompt
	li	$v0,	4
	la	$a0,	prompt
	syscall
	
	#Get double value from user
	li	$v0,	7
	syscall
	
	#print the double value
	li	$v0,	3
	add.d	$f12,	$f0,	$f10
	syscall
	
	#finish main program
	li	$v0,	10
	syscall