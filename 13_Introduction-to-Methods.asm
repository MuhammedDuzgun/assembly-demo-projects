.data
	message1:	.asciiz 	"Hello World ! \nMy name is Muhammed !"

	
.text
	main:
		#call the method 
		jal	printmessage
		
		#print age
		addi	$s0,	$zero,	23
		li	$v0,	1
		add	$a0,	$zero	$s0
		syscall
		
		#main program ending
		li	$v0,	10
		syscall
		
	printmessage:
		li	$v0,	4
		la	$a0,	message1
		syscall
		
		jr	$ra
	
