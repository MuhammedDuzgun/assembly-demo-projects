.data

.text

	addi	$s0,	$zero,	10
	addi	$s1,	$zero,	4
	
	mul	$t0,	$s0,	$s1	#t0  = 10 * 4 = 40 
	
	#print t0
	li	$v0,	1
	add	$a0,	$zero,	$t0
	syscall
	