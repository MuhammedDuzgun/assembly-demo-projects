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
		jal	printTheValue
		
		#end of main program
		li	$v0,	10
		syscall
	
	increaseRegister:
		#save register (s0) and $ra(for nested procedure call)  to stack 
		addi	$sp,	$sp,	-8
		sw	$s0,	0($sp)
		sw	$ra,	4($sp)
		
		#Do whatever you want
		addi	$s0,	$s0,	30
		
		#print the new value - Nested Procedure
		jal	printTheValue
		
		#get the old value of s0 and $ra then collapse the stack
		lw	$s0,	0($sp)
		lw	$ra,	4($sp)
		addi	$sp,	$sp,	8
		
		jr	$ra
		
		
	printTheValue:
		li	$v0,	1
		move	$a0,	$s0
		syscall	
		
		jr	$ra
		
		
		
		
		