.data
	array:		.word	10, 15, 20
	length:		.word	3
	sum:		.word	0
	average:	.word	0
.text
	main:
	
	la	$t0,	array		# Pivot address
	li	$t1,	0		# t1 = index
	lw	$t2,	length		# t2 =3
	li	$t3,	0		# t3 = sum
	
	sumLoop:
	lw	$t4,	($t0)	
	add	$t3,	$t3,	$t4
	
	addi	$t1,	$t1,	1	# index += 1
	addi	$t0,	$t0,	4 	# address += 4
	
	slt 	$t7,	$t1,	$t2		# index < length  then : t7 = 1
	bne	$t7,	$zero	sumLoop		# t7 != 0	then: branch -> sumLoop
	
	#----------------------------------------------
	
	sw	$t3,	sum
	div	$t6,	$t3	$t2
	sw	$t6,	average
	
	#print average
	li	$v0,	1
	add	$a0,	$zero,	$t6
	syscall
	
	#finish the main program
	li	$v0,	10
	syscall

