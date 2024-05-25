.data

.text

	addi	$s0,	$zero,	4
	
	#shift left logical(sll) -> makes *2 for each i value
	sll	$t0,	$s0,	2	#for this cause i = 2, and t0 = 4 *2 *2 = 16
	
	#print result
	li	$v0,	1
	add	$a0,	$zero,	$t0
	syscall