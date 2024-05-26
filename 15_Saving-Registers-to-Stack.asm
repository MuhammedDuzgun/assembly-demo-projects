.data
	
	nextLine:	.asciiz		"\n"
	
.text

	main:
		addi	$s0,	$zero,	10
		
		jal	increaseRegister
		
		#space
		li	$v0,	4
		la	$a0,	nextLine
		syscall
		
		#print s0
		li	$v0,	1
		move	$a0,	$s0
		syscall
		
		#end of main program
		li	$v0,	10
		syscall
	
	increaseRegister:
		#save register (s0) to stack
		addi	$sp,	$sp,	-4
		sw	$s0,	0($sp)
		
		#Do whatever you want
		addi	$s0,	$s0,	30
		
		#print the new value 
		li	$v0,	1
		move	$a0,	$s0
		syscall
		
		#get the old value of s0 and collapse the stack
		lw	$s0,	0($sp)
		addi	$sp,	$sp,	4
		
		jr	$ra