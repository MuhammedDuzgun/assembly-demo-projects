.data
	message:	.asciiz		"Loop is Done"
	comma:		.asciiz		", "
.text
	main:
	
	# i=0
	addi	$t0,	$zero,	0
	
	while:
	bgt	$t0,	10,	exit
	
	#print i
	jal	printI
	
	addi	$t0,	$t0,	1	# i++
	
	j	while
	exit:
	#print message
	li	$v0,	4
	la	$a0,	message
	syscall
	
	#Finish main program
	li	$v0	10
	syscall
	
	printI:
	li	$v0,	1
	add	$a0,	$zero,	$t0
	syscall	
	
	#print comma
	li	$v0,	4
	la	$a0,	comma
	syscall
	
	jr	$ra