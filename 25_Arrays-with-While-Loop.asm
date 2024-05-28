.data
	myArray:	.space		12
	nextLine:	.asciiz		"\n"
.text
	main:
	
	#fill array 
	addi	$s0,	$zero,	4
	addi	$s1,	$zero,	8
	addi	$s2,	$zero,	12
	
	addi	$t0,	$zero,	0	# index
	
	sw	$s0,	myArray($t0)
		addi	$t0,	$t0,	4
	sw	$s1,	myArray($t0)
		addi	$t0,	$t0,	4
	sw	$s2,	myArray($t0)
	
	#clear index
	addi	$t0,	$zero,	0
	
	while:
	beq	$t0,	12,	exit	
	
	lw	$t1,	myArray($t0)
	
	addi	$t0,	$t0,	4
	
	#print the current number
	li	$v0,	1
	add	$a0,	$zero,	$t1
	syscall
	
	#print nextLine
	li	$v0,	4
	la	$a0,	nextLine
	syscall
	
	j	while
							
	exit:			
	#finish the main program
	li	$v0,	10
	syscall