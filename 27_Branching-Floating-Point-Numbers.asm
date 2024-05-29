.data
	message_true:	.asciiz	"true"
	message_false:	.asciiz	"false"
	number1:	.float	10.4
	number2:	.float	10.4
	
.text
	main:
	
	lwc1	$f0,	number1
	lwc1	$f2,	number2
	
	#check f0 == f2		if its true then : bc1t will be true
	c.eq.s	$f0,	$f2
	
	bc1t	printMessageTrue	
	
	#print false message
	li	$v0,	4
	la	$a0,	message_false
	syscall
	
	#finish main program
	li	$v0,	10
	syscall
	
	printMessageTrue:
	li	$v0,	4
	la	$a0,	message_true
	syscall
