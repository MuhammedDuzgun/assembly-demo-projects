.data
	
	number1:	.word	10
	number2:	.word	20

.text
	
 	lw	$t0,	number1
 	lw	$t1,	number2
 	
 	#do: $t2 = $t0 + $t1
 	add	$t2,	$t0,	$t1
 	
 	#print $t2 to screen
 	li	$v0,	1
	add	$a0,	$t2,	$zero
 	syscall