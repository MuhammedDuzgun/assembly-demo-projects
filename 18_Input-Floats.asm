.data
	message:	.asciiz		"Enter the value of PI : "
	zeroAsFloat:	.float		0.0

.text
	main:
	
	#save the zeroAsFloat
	lwc1	$f4,	zeroAsFloat
	
	#print message
	li	$v0,	4
	la	$a0,	message
	syscall
	
	#get input from user
	li	$v0,	6
	syscall

	#print the user's value
	li	$v0,	2
	add.s	$f12,	$f4,	$f0
	syscall
	
	#finish main program
	li	$v0,	10
	syscall