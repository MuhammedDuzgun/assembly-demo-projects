.data

.text

	addi	$t0,	$zero,	30
	addi	$t1,	$zero,	5
	
	#Divide w/o overflow
	div	$s0,	$t0,	$t1
	
	#print result
	li	$v0,	1
	add	$a0,	$zero,	$s0
	syscall