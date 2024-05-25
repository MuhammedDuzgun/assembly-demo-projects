.data

.text

	addi	$t0,	$zero,	30
	addi	$t1,	$zero,	7
	
	div	$t0,	$t1
	
	#get result and reaminder from hi and lo registers
	mflo	$s0	#result
	mfhi	$s1	#remainder
	
	#print result
	li	$v0, 1
	add	$a0,	$zero,	$s0	  #for remainder -> $s1
	syscall
	