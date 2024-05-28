.data 
	message1:	.asciiz		"The numbers are equal."
	message2: 	.asciiz		"The numbers are not equal."
.text

	main:
	
	addi	$t0,	$zero,	10
	addi	$t1,	$zero,	10
	
	#check t0 == t1
	beq	$t0,	$t1,	numbersEqual
	
	#for t0 != t1, use : <bne> (branch if not equal)
	
	#print message2
	li	$v0,	4
	la	$a0,	message2
	syscall
	
	#Finish main program
	li	$v0, 10
	syscall
	
	numbersEqual:
	#show message1
	li	$v0,	4
	la	$a0,	message1
	syscall
	
	