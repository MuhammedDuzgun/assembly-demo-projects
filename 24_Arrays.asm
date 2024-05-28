.data
	myArray:	.space	12
.text
	main:
	
	addi	$s0,	$zero,	4
	addi	$s1,	$zero,	8
	addi	$s2,	$zero,	12
	
	addi	$t0,	$zero,	0	#index t0 = 0
	
	sw	$s0,	myArray($t0)
		addi	$t0,	$t0,	4	# index t0 += 4 (int = 4 byte)
	sw	$s1,	myArray($t0)
		addi	$t0,	$t0,	4
	sw	$s2,	myArray($t0)
	
	#print first element of array
	la	$t1,	myArray		# t1 = pivot address 
	lw	$t2,	0($t1)		# 0(t1) 0. byte of pivot address
	lw	$t3,	4($t1)		# 2. element of array 
	lw	$t4,	8($t1)		# 3. element of array
	
	
	#finish main program
	li	$v0,	10
	syscall