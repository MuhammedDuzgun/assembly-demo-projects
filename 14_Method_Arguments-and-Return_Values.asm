.data

.text

	main:	
		#method params
		addi	$a1,	$zero,	20
		addi	$a2,	$zero,	12
		
		jal addNumbers
		
		#print result
		li	$v0,	1
		add	$a0,	$zero,	$v1
		syscall
		
		#Main program endind
		li	$v0,	10
		syscall
	
	addNumbers:
		add	$v1,	$a1,	$a2
		jr	$ra