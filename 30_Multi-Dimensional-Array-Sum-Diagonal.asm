.data
	mdArray:	.word	2,5
			.word	3,7
			
	size:		.word	2
	.eqv	DATA_SIZE	4 

.text
	main:
	la	$a0,	mdArray
	lw	$a1,	size
	
	jal	sumDiagonal
	
	move	$a0,	$v0
	li	$v0,	1
	syscall
	
	
	#finish the main program
	li	$v0,	10
	syscall
	
	sumDiagonal:
	li	$v0,	0	# sum = 0
	li	$t0,	0	# index = 0
	
		sumLoop:
		mul	$t1,	$t0,	$a1	# t1 = rowIndex * colSize
		add	$t1,	$t1,	$t0	# t1 += colIndex 	
		mul	$t1,	$t1,	DATA_SIZE	# t1 *= DATA_SIZE
		add	$t1,	$t1,	$a0	# t1 += baseAddress
		
		lw	$t2,	($t1)
		add	$v0,	$v0,	$t2
		
		addi	$t0,	$t0,	1	# index += 1
		blt	$t0,	$a1,	sumLoop		# if i < size then : sumLoop
		
	jr	$ra	
	
	
	
	